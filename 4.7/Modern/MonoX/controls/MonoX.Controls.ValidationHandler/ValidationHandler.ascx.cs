using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MonoSoftware.MonoX.Utilities;

namespace ProjectName.Web.Controls
{
    public partial class ValidationHandler : MonoSoftware.MonoX.BaseUserControl
    {
        #region Fields
        /// <summary>
        /// Custom registered validators.
        /// </summary>
        protected List<Tuple<string, string, bool>> customValidators = new List<Tuple<string, string, bool>>();
        #endregion

        #region Properties
        /// <summary>
        /// Gets or sets the validator css class attached to every validator.
        /// </summary>
        public string ValidatorCssClass { get; set; }

        /// <summary>
        /// Gets or sets the field css class attached to field when in invalid state.
        /// </summary>
        public string FieldCssClass { get; set; }

        /// <summary>
        /// Gets or sets the required field css class attached to field wrapper.
        /// </summary>
        public string RequiredFieldCssClass { get; set; }

        /// <summary>
        /// Gets or sets the field validator id css class used to identify the field validation wraper.
        /// </summary>
        public string FieldValidatorIdCssClass { get; set; }

        /// <summary>
        /// Gets or sets the field validator css class attached to the field validation wraper.
        /// </summary>
        public string FieldValidatorWrapperCssClass { get; set; }

        /// <summary>
        /// Gets or sets the validation group.
        /// </summary>
        public string ValidationGroup { get; set; }
        #endregion

        #region Constructor
        /// <summary>
        /// Constructor.
        /// </summary>
        public ValidationHandler()
            : base()
        {			
            FieldValidatorIdCssClass = "jq_FieldValidatorWrapper";
            FieldValidatorWrapperCssClass = "validator-field-wrapper";
            FieldCssClass = "validator-field";
            RequiredFieldCssClass = "required-field";
        }
        #endregion

        #region Page Events

        protected override void OnPreRender(EventArgs e)
        {            
            base.OnPreRender(e);
            string js = @"
            function CheckFieldValidator_{0}()
            {{
                    CheckFieldValidator_{1}('{2}', '{3}', '{4}');
            }}";

            JavascriptUtility.RegisterStartupScript(this.up, this.up.GetType(), String.Format("registeredListeners_{0}_init", ((ulong)this.ClientID.GetHashCode())),
                String.Format(" registeredListeners_{0} = new Array(); ", ((ulong)this.ClientID.GetHashCode())), true);

            foreach (System.Web.UI.IValidator iValidator in this.Page.Validators)
            {
                if (iValidator is BaseValidator)
                {
                    BaseValidator validator = (BaseValidator)iValidator;                    
                    if (String.IsNullOrWhiteSpace(validator.ValidationGroup) || (!String.IsNullOrWhiteSpace(ValidationGroup) && validator.ValidationGroup.ToLowerInvariant().Equals(ValidationGroup.ToLowerInvariant())))
                    {
                        validator.CssClass = String.Format("{0} {1}", validator.CssClass, ValidatorCssClass);
                        if (!String.IsNullOrWhiteSpace(validator.ErrorMessage))
                            validator.Text = validator.ErrorMessage;
                        //Note: We only need validators that point to some control in order to automatically handle the functionality on client-side
                        if (!String.IsNullOrWhiteSpace(validator.ControlToValidate))
                        {
                            JavascriptUtility.RegisterStartupScript(this.up, this.up.GetType(), String.Format("func_init_{0}", ((ulong)validator.ClientID.GetHashCode())),
                                String.Format(js, ((ulong)validator.ClientID.GetHashCode()),
                                ((ulong)this.ClientID.GetHashCode()),
                                validator.ClientID,
                                FindControlRecursive(validator.Parent, validator.ControlToValidate).ClientID,
                                (validator is RequiredFieldValidator).ToString()
                                )
                                , true);
                            JavascriptUtility.RegisterStartupScript(this.up, this.up.GetType(), String.Format("registeredListeners_{0}_push", ((ulong)validator.ClientID.GetHashCode())),
                                String.Format(" registeredListeners_{0}.push(CheckFieldValidator_{1}); ", ((ulong)this.ClientID.GetHashCode()), ((ulong)validator.ClientID.GetHashCode()))
                                , true);
                        }
                    }
                }
            }

            foreach (var item in customValidators)
            {
                JavascriptUtility.RegisterStartupScript(this.up, this.up.GetType(), String.Format("func_init_{0}", ((ulong)item.Item1.GetHashCode())),
                                String.Format(js, ((ulong)item.Item1.GetHashCode()),
                                ((ulong)this.ClientID.GetHashCode()),
                                item.Item1,
                                item.Item2,
                                item.Item3.ToString()
                                )
                                , true);
                JavascriptUtility.RegisterStartupScript(this.up, this.up.GetType(), String.Format("registeredListeners_{0}_push", ((ulong)item.Item1.GetHashCode())),
                    String.Format(" registeredListeners_{0}.push(CheckFieldValidator_{1}); ", ((ulong)this.ClientID.GetHashCode()), ((ulong)item.Item1.GetHashCode()))
                    , true);
            }
        }
        #endregion

        #region Methods
        /// <summary>
        /// Register field validator.
        /// </summary>
        /// <param name="validator">Validator.</param>
        /// <returns>True if scheduled for registration on PreRender event.</returns>
        public bool RegisterFieldValidator(BaseValidator validator)
        {
            var control = FindControlRecursive(validator.Parent, validator.ControlToValidate);
            if (control == null) return false;

            return RegisterFieldValidator(validator.ClientID, control.ClientID, validator is RequiredFieldValidator);
        }

        /// <summary>
        /// Register field validator.
        /// </summary>
        /// <param name="validator">Validator.</param>
        /// <param name="controlToValidateClientID">Control to validate client id.</param>
        /// <returns>True if scheduled for registration on PreRender event.</returns>
        public bool RegisterFieldValidator(BaseValidator validator, string controlToValidateClientID)
        {
            return RegisterFieldValidator(validator.ClientID, controlToValidateClientID, validator is RequiredFieldValidator);
        }

        /// <summary>
        /// Register field validator.
        /// </summary>
        /// <param name="validatorClientID">Validator client id.</param>
        /// <param name="controlToValidateClientID">Control to validate client id.</param>
        /// <param name="isRequired">Is required field.</param>
        /// <returns>True if scheduled for registration on PreRender event.</returns>
        public bool RegisterFieldValidator(string validatorClientID, string controlToValidateClientID, bool isRequired)
        {
            customValidators.Add(new Tuple<string, string, bool>(validatorClientID, controlToValidateClientID, isRequired));
            return true;
        }


        /// <summary>
        /// Recursively finds a child control by Id.
        /// </summary>
        /// <param name="control">Control</param>
        /// <param name="id">Child control's Id</param>
        /// <returns></returns>
        protected Control FindControlRecursive(Control control, string id)
        {
            Control returnControl = null;
            returnControl = control.FindControl(id);
            if (returnControl == null)
            {
                foreach (Control c in control.Controls)
                {
                    if (c.HasControls())
                    {
                        returnControl = FindControlRecursive(c, id);
                        if (returnControl != null) break;
                    }

                }
            }
            return returnControl;
        }
        #endregion
    }
}