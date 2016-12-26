<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProvideAddress.aspx.cs" Inherits="_3_Provide_Address.ProvideAddress" %>

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
                <td class="auto-style1">&nbsp;Address</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="73px" Width="402px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Driver Address is a required field." ControlToValidate="txtAddress" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Post Code</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtPostCode" runat="server" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Post Code is a required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Only number is allowed" ForeColor="Red" ValidationExpression="^[\d+$]{5}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">State</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem>Selangor</asp:ListItem>
                        <asp:ListItem>Kuala Lumpur</asp:ListItem>
                        <asp:ListItem>Sarawak</asp:ListItem>
                        <asp:ListItem>Pulau Pinang</asp:ListItem>
                        <asp:ListItem>Johor</asp:ListItem>
                        <asp:ListItem>Negeri Sembilan</asp:ListItem>
                        <asp:ListItem>Kedah</asp:ListItem>
                        <asp:ListItem>Ipoh</asp:ListItem>
                        <asp:ListItem>Melaka</asp:ListItem>
                        <asp:ListItem>Sabah</asp:ListItem>
                        <asp:ListItem>Perak</asp:ListItem>
                        <asp:ListItem>Pahang</asp:ListItem>
                        <asp:ListItem>Terengganu</asp:ListItem>
                        <asp:ListItem>Kelantan</asp:ListItem>
                        <asp:ListItem>Perlis</asp:ListItem>
                        <asp:ListItem>Labuan</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlState" ErrorMessage="State is a required field" ForeColor="Red">*</asp:RequiredFieldValidator>
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