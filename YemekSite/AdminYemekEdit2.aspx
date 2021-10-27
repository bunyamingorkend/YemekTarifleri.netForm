<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekEdit2.aspx.cs" Inherits="YemekSite.AdminYemekEdit2" %>
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
            <td class="auto-style11">Yemek Ad: </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBoxYemekAd" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Yemek Malzeme:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBoxYemekMalzeme" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Yemek Tarif: </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBoxYemekTarif" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="auto-style11">Yemek Kategori: </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBoxYemekKategori" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="btnUpdate" runat="server" Height="36px"  Text="Güncelle" Width="68px" OnClick="btnUpdate_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
