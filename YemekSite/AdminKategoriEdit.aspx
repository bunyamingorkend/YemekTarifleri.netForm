<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriEdit.aspx.cs" Inherits="YemekSite.AdminKategoriEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">Kategori Ad: </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBoxKategoriAd" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Adet:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBoxKategoriAdet" runat="server" Width="284px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Resim: </td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="288px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="btnUpdate" runat="server" Height="36px" OnClick="btnUpdate_Click" Text="Güncelle" Width="68px" />
            </td>
        </tr>
    </table>
</asp:Content>
