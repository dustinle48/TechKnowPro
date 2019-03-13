<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInfo.aspx.cs" Inherits="TechKnowPro.CustomerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 59px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Button ID="BtnLogout" runat="server" Text="Log out" />
        <div>
            <h1>TechKnow Pro - Incident Report Management Software</h1>
            <h3>Customer - Search and view your customer contact information</h3>
        </div>
        <div>
             <table>
                <tr>
                    <td class="auto-style2">Select a customer</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="CustomerList" runat="server" DataSourceID="Customers" DataTextField="name" DataValueField="user_id" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged" OnDataBinding="CustomerList_SelectedIndexChanged" OnLoad="CustomerList_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True" OnInit="CustomerList_SelectedIndexChanged">
                            <asp:ListItem Value="0">-Select a customer-</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Customers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CONCAT(first_name,' ',last_name) AS name, user_id FROM Customers
"></asp:SqlDataSource>
                    </td>
                </tr>
                 <tr>
                     <td class="auto-style3">Address:</td>
                     <td class="auto-style3">
                         <asp:Label ID="LblAddress" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1">Phone:</td>
                     <td class="auto-style1">
                         <asp:Label ID="LblPhone" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>Email:</td>
                     <td>
                         <asp:Label ID="LblEmail" runat="server"></asp:Label>
                     </td>
                 </tr>
            </table>
            
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="BtbAddToContact" runat="server" Text="Add to Contact List" />
                    </td>
                    <td>
                        <asp:Button ID="BtbDisplayContact" runat="server" Text="Display Contact List" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
