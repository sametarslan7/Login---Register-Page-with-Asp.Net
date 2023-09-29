﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="login_form.Default" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="login_form/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
    <div class="padding-all">
        <div class="header">
            <h1>Admin Gİrİş Paneli</h1>
        </div>

        <div class="design-w3l">
            <div class="mail-form-agile">
                <form action="#" method="post" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="kullanıcı adı"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="şifre" TextMode="Password"></asp:TextBox>
                    <div style="margin-top:20px">
                        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>
            <div class="clear"></div>
        </div>

        <div class="footer">
            <p>© 2023  Admin Giriş Paneli. Tüm Haklar Saklıdır | sametarslan tarafından oluşturulmnuştur  <a href="https://w3layouts.com/">w3layouts </a></p>
        </div>
    </div>
</body>
</html>
