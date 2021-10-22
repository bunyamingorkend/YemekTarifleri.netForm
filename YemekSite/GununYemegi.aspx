<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekSite.GununYemegi" %>
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
    <asp:DataList ID="DataList2" runat="server" >
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><span class="auto-style6">Malzemeler</span></strong>:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
              
                <tr>
                    <td>
                        <strong><span class="auto-style6">Tarif</span></strong>:
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><span class="auto-style6">Puan</span></strong>:
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <strong><span class="auto-style6">Tarih</span></strong>:
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" Height="435px" ImageUrl="~/img/indir.png" Width="448px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
