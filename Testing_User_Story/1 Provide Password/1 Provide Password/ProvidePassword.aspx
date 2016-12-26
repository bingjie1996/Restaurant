<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProvidePassword.aspx.cs" Inherits="_1_Provide_Password.ProvidePassword" %>

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
                <td class="auto-style1">Password</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Password is a required field." ForeColor="Red" Text="*" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Minimum 7 characters at least 1 Alphabet and 1 Number for password" ControlToValidate="txtPassword" Text="*" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{7,}$"></asp:RegularExpressionValidator>
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
