<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="veriler.aspx.cs" Inherits="login_form.veriler" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Paneli</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover {
                    background-color: #111;
                }
    </style>
</head>
<body>

    <ul>
        <li><a href="#home">Ana Sayfa</a></li>
        <li><a href="#news">Kullanıcılar</a></li>
        <li><a href="#contact">Mağazalar</a></li>
        <li><a href="#about">Yardım</a></li>
    </ul>
    <form runat="server">
        <div style="margin-top: 20px">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Kullanıcı Adı</th>
                    <th>Mail</th>
                    <th>Telefon Numarası</th>
                    <th>Şifre</th>
                    <th>İşlemler</th>
                </tr>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("ID") %></th>
                            <td><%#Eval("KULLANICIAD") %></td>
                            <td><%#Eval("MAIL") %></td>
                            <td><%#Eval("TELEFON") %></td>
                            <td><%#Eval("SIFRE") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "KullaniciSilme.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "KullaniciGuncelleme.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </table>
            <asp:Button ID="Button2" runat="server" Text="Yeni Kullanıcı Ekle" CssClass="btn btn-primary" style="margin-left:30px ; margin-top:30px ; font-size:17px" OnClick="Button2_Click"/>
        </div>
    </form>
</body>
</html>


