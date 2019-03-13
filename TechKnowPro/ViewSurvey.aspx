<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSurvey.aspx.cs" Inherits="TechKnowPro.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            width: 409px;
        }
        .auto-style4 {
            width: 103px;
        }
        .auto-style5 {
            width: 178px;
        }
        .auto-style6 {
            width: 178px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 427px;
        }
        .auto-style10 {
            width: 209px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <div>
            <h1>View Survey</h1>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Select a customer</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">Customer ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>Survey Listing</p>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="283px"></asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Retrieve Survey Detail" />
        <div>
            <p>Customer Rating</p>

        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Response Time</td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style10">Contact to discuss Incident</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Technician Efficiency</td>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style10">Preferred Contact Menthod</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Problem Resolution</td>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Additional Comments</td>
            <td class="auto-style7" colspan="3">
                <asp:TextBox ID="TextBox2" runat="server" Height="45px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="445px"></asp:TextBox>
            </td>
        </tr>
    </table>
            <asp:Button ID="Button2" runat="server" Text="Home" />
        </form>
</body>
</html>