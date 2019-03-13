<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TechKnowPro.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 135px;
        }
        .auto-style4 {
            width: 464px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .ErrorMessage {
            color: red;
            font-style: italic;
        }
    </style>
</head>
<body>
    <h1>REGISTRATION PAGE</h1>
    <asp:Label CssClass="ErrorMessage" ID="errormessage" runat="server" Text=""></asp:Label>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Your UserID</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtUserID" runat="server" Enabled="False" ReadOnly="True" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Firstname*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtFirstname" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvFirstname" runat="server" ErrorMessage="Firstname Required" ControlToValidate="TxtFirstname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Lastname*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLastname" runat="server" CssClass="auto-style6" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvLastname" runat="server" ErrorMessage="Lastname Required" ControlToValidate="TxtLastname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtAddress" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvAddress" runat="server" ErrorMessage="Address Required" ControlToValidate="TxtAddress"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtEmail" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="TxtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="EmailUsageCheck" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Invalid Email. This email has been used!" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
                    </td>
                <tr>
                    <td class="auto-style2">Confirm Password*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtConfirmPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvConfirmPassword" runat="server" ErrorMessage="Please confirm your Password" ControlToValidate="TxtConfirmPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CheckBox ID="AgreementCheck" runat="server" Text="I agree to the <a href='https://www.w3schools.com'>term of service</a>" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
                        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
