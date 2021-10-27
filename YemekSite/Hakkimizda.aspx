<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekSite.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
            color: #0000CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="HAKKIMIZDA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="271px" TextMode="MultiLine" Width="453px">Hakkımızda yazısı, genelde misyon ve vizyonun yer aldığı klasik bölümlerden oluşan, kişilerin veya şirketlerin kendilerinden bahsettiği kısa ve öz yazılardır.
İnternet üzerinde çokça öneriler bulunmakta. Örneğin; ekibinizden mutlaka bahsedin, hikayenizi anlatın, gelecekte ki yerinizden bahsedin, müşteri yorumlarına yer verin vb.

Bu öneriler kesinlikle doğru ve hakkımızda yazısı örneği arıyorsanız bu seçenekleri değerlendirebilirsiniz. Aradığınız farklı bir yazı ise, bu yazının tamamını okuduğunuzda özgün bir hakkımızda yazısı oluşturabiliyor olacaksınız.
</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Image ID="Image1" runat="server" Height="282px" ImageUrl="~/img/indir.png" Width="441px" />
            </td>
        </tr>
    </table>
</asp:Content>
