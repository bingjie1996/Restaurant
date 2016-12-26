<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1ProvideEmail.aspx.cs" Inherits="ProvideEmail._1ProvideEmail" %>

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
                <td class="auto-style1">Email Address</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format!" ForeColor="Red" ValidationExpression="^\S+@\S+$">*</asp:RegularExpressionValidator>
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
