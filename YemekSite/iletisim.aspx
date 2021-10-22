<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekSite.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: large;
            text-align: center;
            width: 403px;
        }
        .auto-style10 {
            width: 403px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mesaj Gönderin</strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">Ad-Soyad</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtBoxAd" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Mail Adresi</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="textBoxMail" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Mesaj</td>
                    <td class="auto-style11">
                           <asp:TextBox ID="txtBoxMesaj" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Mesaj Gönder" Width="116px" />
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>
