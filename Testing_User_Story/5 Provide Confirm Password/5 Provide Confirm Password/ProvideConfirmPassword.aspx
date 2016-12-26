<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProvideConfirmPassword.aspx.cs" Inherits="_5_Provide_Confirm_Password.ProvideConfirmPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 134px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
             <tr>
                <td class="auto-style1">Retype Password</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtRetype" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Retype password is a required field." ControlToValidate="txtRetype" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRetype" ErrorMessage="Password does not match!" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click" style="width: 61px" />    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                    <asp:Button ID="txtCancel" runat="server" Text="Cancel" OnClick="txtCancel_Click" CausesValidation="False" />
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="The following problems have been encounterd" ShowMessageBox="True" />
                </td>
            </tr>
            </table>
    </form>
</body>
</html>