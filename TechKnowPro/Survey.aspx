<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="TechKnowPro.Survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 136px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Surveys - Collect feedback from customers</h2>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCustomerID" runat="server" CssClass="auto-style3" OnTextChanged="TextBox1_TextChanged" Width="174px"></asp:TextBox>
                </td>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            </tr>
        </table>
        <div>
            <asp:DropDownList ID="DropDownList3" runat="server" Height="55px" Width="326px"></asp:DropDownList>
        </div>
        <div>
            <p>Please rate this incident by the following catagories</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Response Time</td>
                    <td> <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Not Satisfied</asp:ListItem>
                <asp:ListItem>Somewhat Satisfied</asp:ListItem>
                <asp:ListItem>Satisfied</asp:ListItem>
                <asp:ListItem>Completely Satisfied</asp:ListItem>
            </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Technician Efficiency</td>
                    <td>
            <asp:CheckBoxList ID="CheckBoxList4" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Not Satisfied</asp:ListItem>
                <asp:ListItem>Somewhat Satisfied</asp:ListItem>
                <asp:ListItem>Satisfied</asp:ListItem>
                <asp:ListItem>Completely Satisfied</asp:ListItem>
            </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Problem Resolution</td>
                    <td>
            <asp:CheckBoxList ID="CheckBoxList5" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Not Satisfied</asp:ListItem>
                <asp:ListItem>Somewhat Satisfied</asp:ListItem>
                <asp:ListItem>Satisfied</asp:ListItem>
                <asp:ListItem>Completely Satisfied</asp:ListItem>
            </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Additional Comments</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="61px" TextMode="MultiLine" Width="469px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Please contact me to discuss this incident" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Contact via Email</asp:ListItem>
                            <asp:ListItem>Contact via phone</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
    </form>
</body>
</html>
