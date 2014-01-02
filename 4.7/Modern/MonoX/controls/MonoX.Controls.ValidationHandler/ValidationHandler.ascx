<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="ValidationHandler.ascx.cs"
    Inherits="ProjectName.Web.Controls.ValidationHandler" %>



<script type="text/javascript">

    $(document).ready(function () {
        window.setInterval(function () { FieldListener_<%= ((ulong)this.ClientID.GetHashCode()).ToString() %>(); }, 500);        
    });

    var registeredListeners_<%= ((ulong)this.ClientID.GetHashCode()).ToString() %> = new Array(); 
    function FieldListener_<%= ((ulong)this.ClientID.GetHashCode()).ToString() %>()
    {
        for (var i = 0; i < registeredListeners_<%= ((ulong)this.ClientID.GetHashCode()).ToString() %>.length; i++) {
            setTimeout(registeredListeners_<%= ((ulong)this.ClientID.GetHashCode()).ToString() %>[i], 0);
        }
    }

    function CheckFieldValidator_<%= ((ulong)this.ClientID.GetHashCode()).ToString() %>(validatorClientId, controlToValidateClientID, isRequired)
    {
        if (isRequired == 'True')
        {
            var validatorParentContainer = $('#' + validatorClientId).parents('.<%= FieldValidatorIdCssClass %>');            
            if(validatorParentContainer.length > 0 && !validatorParentContainer.hasClass('<%= RequiredFieldCssClass %>')){
                validatorParentContainer.addClass('<%= RequiredFieldCssClass %>');
			}
		}	
        if ($('#' + validatorClientId).is(":visible") && !$('#' + controlToValidateClientID).hasClass('<%= FieldCssClass %>'))
        {
            $('#' + controlToValidateClientID).addClass('<%= FieldCssClass %>');
            $('#' + controlToValidateClientID + '_wrapper').addClass('<%= FieldCssClass %>');
            $('#' + controlToValidateClientID).addClass(validatorClientId);
            $('#' + validatorClientId).parents('.<%= FieldValidatorIdCssClass %>').addClass('<%= FieldValidatorWrapperCssClass %>');
        }
        else if (!$('#' + validatorClientId).is(":visible"))
        {
            if ($('#' + controlToValidateClientID).hasClass(validatorClientId))
            {
                $('#' + controlToValidateClientID).removeClass('<%= FieldCssClass %>');
                $('#' + controlToValidateClientID + '_wrapper').removeClass('<%= FieldCssClass %>');
                $('#' + controlToValidateClientID).removeClass(validatorClientId);
                $('#' + validatorClientId).parents('.<%= FieldValidatorIdCssClass %>').removeClass('<%= FieldValidatorWrapperCssClass %>');
            }
        }
    }
</script>

<asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
    <ContentTemplate>
    </ContentTemplate>
</asp:UpdatePanel>