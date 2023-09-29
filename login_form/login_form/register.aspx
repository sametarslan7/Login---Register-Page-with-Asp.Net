<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="login_form.register" %>

<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
-->
<!DOCTYPE html>
<html lang="zxx">

<!-- Head -->

<head>

    <title>Workspace Sign Up Form Flat Responsive Widget Template :: W3layouts</title>

    <!-- Meta-Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- style CSS -->
    <link rel="stylesheet" href="register/css/style.css" type="text/css" media="all">

    <!-- fontawesome -->
    <link rel="stylesheet" href="register/css/font-awesome.min.css" type="text/css" media="all">

    <!-- google fonts -->
    <link href="//fonts.googleapis.com/css?family=Mukta:300,400,500" rel="stylesheet">
</head>
<!-- //Head -->

<!-- Body -->

<body>

    <section class="main">
        <div class="bottom-grid">
            <div class="logo">
                <h1><a href="index.html">Yeni Kullanıcı Kayıt Paneli</a></h1>
            </div>
        </div>
        <!-- register -->
        <div class="w3lhny-register">
            <div class="iconhny">
                <span class="fa fa-user-plus"></span>
            </div>
            <form action="#" method="post" class="register-form" runat="server">
                <fieldset>
                    <div class="form">
                        <div class="form-row">
                            <span class="fa fa-user"></span>
                            <asp:TextBox ID="txtkullaniciad" runat="server" CssClass="form-text" placeholder="Kullanıcı Adı"></asp:TextBox>
                        </div>
                        <div class="form-row">
                            <span class="fa fa-envelope"></span>
                            <asp:TextBox ID="txtmail" runat="server" CssClass="form-text" placeholder="E-Mail"></asp:TextBox>
                        </div>
                        <div class="form-row">
                            <span class="fa fa-phone"></span>
                            <asp:TextBox ID="txttelefon" runat="server" CssClass="form-text" placeholder="Telefon Numarası"></asp:TextBox>
                        </div>
                        <div class="form-row">
                            <span class="fa fa-lock"></span>
                            <asp:TextBox ID="txtsifre" runat="server" CssClass="form-text" type="password" placeholder="Şifre"></asp:TextBox>
                        </div>
                        <div class="form-row button-login">
                            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" class="btn btn-login" OnClick="btnKaydet_Click" />
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <!-- //register -->
        <div class="w3l-copyright">
            <p>
                © 2020 Workspace Sign Up Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a>
            </p>
        </div>
    </section>

</body>
<!-- //Body -->

</html>
