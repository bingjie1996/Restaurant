<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProvideContactNo.aspx.cs" Inherits="OBJ_User_Story.ProvideContactNo" %>

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
                <td class="auto-style1">Contact No(Phone)</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtPhone11" runat="server" Width="39px"></asp:TextBox>
                    -
                    <asp:TextBox ID="txtPhone22" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Contact No(Phone) is a required field." ControlToValidate="txtPhone11" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Contact No(Phone) is a required field." ControlToValidate="txtPhone22" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Must be exactly 3 characters for Contact No(Phone) column 1" ControlToValidate="txtPhone11" ForeColor="Red" ValidationExpression="^[\d+$]{3}">*</asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Must be excalty 7 characters for Contact Number(Phone) column 2" ControlToValidate="txtPhone22" ForeColor="Red" ValidationExpression="^[\d+$]{7}">*</asp:RegularExpressionValidator>
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

