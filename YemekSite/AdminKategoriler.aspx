<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriler.aspx.cs" Inherits="YemekSite.AdminKategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style10 {
            width: 359px;
        }

        .auto-style11 {
            width: 358px;
            font-size: large;
        }

        .auto-style12 {
            width: 100%;
            border: 1px solid #0000FF;
        }

        .auto-style14 {
            text-align: center;
            width: 354px;
        }
        .auto-style15 {
            text-align: left;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style11"><strong>Kategori Listesi</strong></td>
                <td class="auto-style7">
                    <asp:ImageButton ID="btnHide" runat="server" Height="35px" ImageUrl="~/img/up-arrow.png" Width="35px" OnClick="btnHide_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="btnShow" runat="server" Height="35px" ImageUrl="~/img/down-arrow.png" OnClick="btnShow_Click" Width="35px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panelCategories" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="189px" Width="474px">
            <ItemTemplate>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblKategoriAd" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="AdminKategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">
                            <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/img/remove.png" Width="20px" />
                                </a>
                        </td>
                        <td class="auto-style15">
                            <a href="AdminKategoriEdit.aspx?Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/img/edit-button.png" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <hr />
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style11"><strong>Kategori Ekleme</strong></td>
                <td class="auto-style7">
                    <asp:ImageButton ID="btnAddHide" runat="server" Height="35px" ImageUrl="~/img/up-arrow.png" Width="35px" OnClick="btnAddHide_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="btnAddShow" runat="server" Height="35px" ImageUrl="~/img/down-arrow.png" Width="35px" OnClick="btnAddShow_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panelAddCategori" runat="server">

        <table class="auto-style12">
            <tr>
                <td class="auto-style7">Kategori Ad:; </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtBoxAd" runat="server" Height="24px" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Kategori İkon: </td>
                <td class="auto-style14">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" Width="273px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnAddCategori" runat="server" Height="34px" Text="Button" Width="74px" OnClick="btnAddCategori_Click" />
                </td>
            </tr>
        </table>


    </asp:Panel>
</asp:Content>
