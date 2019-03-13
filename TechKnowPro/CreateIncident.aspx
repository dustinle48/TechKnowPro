<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateIncident.aspx.cs" Inherits="TechKnowPro.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 139px;
        }
        .auto-style3 {
            width: 398px;
        }
        .auto-style4 {
            width: 186px;
        }
        .auto-style5 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>Incident Report Page</h1>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Select a customer</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">Report Date &amp; Time</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Customer ID</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">Incident</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">Status</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="127px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <p>
            Description of Problem</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" Height="77px" TextMode="MultiLine" Width="1301px"></asp:TextBox>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Method of Contact</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="25px" RepeatDirection="Horizontal" Width="340px">
                        <asp:ListItem>Email</asp:ListItem>
                        <asp:ListItem>Phone</asp:ListItem>
                        <asp:ListItem>In Person</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Submit" />
    </form>
</body>
</html>
