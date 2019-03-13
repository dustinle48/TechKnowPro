<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessfulRegister.aspx.cs" Inherits="TechKnowPro.SuccessfulRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>Your account has been successfully created! An email has been sent to</h1>
        </div>
        <asp:Button ID="BtnGoBack" runat="server" OnClick="BtnGoBack_Click" Text="Go back to Login Page" />
    </form>
</body>
</html>
