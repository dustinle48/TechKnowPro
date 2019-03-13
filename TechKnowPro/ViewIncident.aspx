<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewIncident.aspx.cs" Inherits="TechKnowPro.ViewIncident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            width: 560px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>View Incident</h1>
        </div>
        <table class="auto-style1">
        <tr>
            <td class="auto-style2">Select a customer</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" ToolTip="- Select User -" Width="149px">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
        <div>
            <p>Incident List</p>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="117px" Width="1283px"></asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Retrieve" />
        </div>
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Details</td>
                    <td>Description</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button2" runat="server" Text="Home" />
    </form>
    
</body>
</html>
