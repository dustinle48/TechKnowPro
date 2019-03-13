<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="TechKnowPro.ContactList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 111px;
            width: 266px;
        }
        .auto-style2 {
            width: 234px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Button ID="BtnLogout" runat="server" OnClick="BtnLogout_Click" Text="Log out" />
    <div>
        <h1>TechKnow Pro - Incident Report Management Software</h1>
        <h3>Contact List - Manage your contact list</h3>
    </div>
    <div>
        <p>Contact List:</p>
        <table>
            <tr>
                <td>
                    <textarea id="TextArea1" class="auto-style1" name="S1"></textarea></td>
                <td class="auto-style2">
                    <asp:Button ID="BtbRemoveContact" runat="server" Text="Remove Contact" />
                    <asp:Button ID="BtbEmptyList" runat="server" Text="Empty List" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtbSelectCust" runat="server" Text="Select Additional Customers" />
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
