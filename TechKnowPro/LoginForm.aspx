<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="TechKnowPro.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>
</head>
<body>
<form runat="server" id="loginform">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card" style="background-color:black; height:inherit">
		        <div class="card-header">
		        <h3>Sign In</h3>
			</div>
            <div class="card-body">
			    <div class="input-group form-group">
				    <div class="input-group-prepend">
					    <span class="input-group-text"><i class="fas fa-user"></i></span>
				    </div>
                    <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvusername" runat="server" ErrorMessage="Username Required" ControlToValidate="TxtUsername" Display="None" Visible="False"></asp:RequiredFieldValidator>	
				</div>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-key"></i></span>
					</div>
					<asp:TextBox ID="TxtPassword" runat="server" Text="password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Password Required" ControlToValidate="TxtPassword" Display="None"></asp:RequiredFieldValidator>
				</div>
				<div class="row align-items-center remember">
                    <asp:CheckBox ID="CbRemember" runat="server"/>Remember Me
				</div>
				<div class="form-group text-center">
                    <asp:Label ID="errormessage" runat="server" ForeColor="White"></asp:Label>
                    <asp:ValidationSummary ID="validationsummary" runat="server" DisplayMode="List" ForeColor="White" />
				</div>
                <div class="form-group text-center">
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn mx-auto login_btn" OnClick="BtnLogin_Click"/>
                </div>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
                    Don't have an account?<a href="/Registration.aspx">Sign Up</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
		    </div>
	    </div>
    </div>
</form>
</body>
</html>
