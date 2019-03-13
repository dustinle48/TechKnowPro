<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="TechKnowPro.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="BtnLogout" runat="server" Text="Log out" />
        <div>
            <h1>TechKnow Pro - Incident Report Management Software</h1>
            <h3>Account Profile</h3>
        </div>
        <div>
            <h4>User Information</h4>
            <table>
                <tr>
                    <td class="auto-style2">Your UserID</td>
                    <td>
                        <asp:TextBox ID="TxtUserID" runat="server" Enabled="False" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Userame:</td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvUsername" runat="server" ErrorMessage="Username Required" ControlToValidate="TxtUsername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email*</td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Password*</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>

        <div>
            <h4>Contact Information</h4>
            <table class="auto-style1" textmode="SingleLine">
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
                    <td class="auto-style2">Secret Question*</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="SecretQuestion" runat="server">
                            <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                            <asp:ListItem>What was the name of your elementary / primary school?</asp:ListItem>
                            <asp:ListItem>What was your favorite sport in high school?</asp:ListItem>
                            <asp:ListItem>What is the name of your favorite childhood teacher?</asp:ListItem>
                            <asp:ListItem>In what city or town was your first job?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select a Secret Question" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Secret Answer*</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtSecretAnswer" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="rfvSecretAnswer" runat="server" ErrorMessage="Secret Answer Required" ControlToValidate="TxtSecretAnswer"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Address</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtAddress" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" CssClass="ErrorMessage" ErrorMessage="Address Required" ControlToValidate="TxtAddress"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Phone</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPhone" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="TxtPhone" Display="Dynamic" ErrorMessage="Phone Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>

            </table>
        </div>

        <p>
            <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
            <asp:Button ID="BtnCancel" runat="server" CausesValidation="False" OnClick="BtnCancel_Click" Text="Cancel" />
        </p>

    </form>
</body>
</html>
