<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp; <table class="auto-style1">
        <tr>
            <td class="auto-style5"><strong>Tarif Adı:</strong></td>
            <td>
                <asp:TextBox ID="txtBoxAd" runat="server" Width="330px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtBoxMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="336px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="txtBoxYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="335px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="fUploadResim" runat="server" Width="335px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif Öneren Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="txtBoxOneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="txtBoxMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" CssClass="auto-style6" Height="32px" Text="Tarif Öner" Width="87px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
