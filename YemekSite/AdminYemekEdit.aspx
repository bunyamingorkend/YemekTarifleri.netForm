<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekEdit.aspx.cs" Inherits="YemekSite.AdminYemekEdit" %>

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

        .auto-style16 {
            width: 358px;
            font-size: x-large;
        }
        .auto-style17 {
            text-align: right;
            text-decoration: none;
            width: 128px;
        }
        .auto-style18 {
            text-align: right;
            text-decoration: none;
            width: 128px;
            height: 38px;
        }
        .auto-style19 {
            text-align: center;
            width: 354px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style16"><strong>Yemekler</strong></td>
                <td class="auto-style7">
                    <asp:ImageButton ID="btnHideYemek" runat="server" Height="35px" ImageUrl="~/img/up-arrow.png" Width="35px" OnClick="btnHide_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="btnShowYemek" runat="server" Height="35px" ImageUrl="~/img/down-arrow.png" OnClick="btnShow_Click" Width="35px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panelYemekler" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="189px" Width="474px">
            <ItemTemplate>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblKategoriAd" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="AdminYemekEdit.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/img/remove.png" Width="20px" />
                            </a>
                        </td>
                        <td class="auto-style15">
                            <a href="AdminYemekEdit2.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/img/edit-button.png" Width="20px" />

                            </a>
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
                    <asp:ImageButton ID="btnAddHideYemek" runat="server" Height="35px" ImageUrl="~/img/up-arrow.png" Width="35px" OnClick="btnAddHide_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="btnAddShowYemek" runat="server" Height="35px" ImageUrl="~/img/down-arrow.png" Width="35px" OnClick="btnAddShow_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panelYemekEkle" runat="server">

        <table class="auto-style12">
            <tr>
                <td class="auto-style17">Yemek Ad:; </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtBoxAd" runat="server" Height="30px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Yemek Malzemeler </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtBoxMalzeme" runat="server" Height="30px" Width="250px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Yemek Tarif:&nbsp; </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtBoxTarif" runat="server" Height="30px" Width="250px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19">
                    <asp:DropDownList ID="dropDownCategories" runat="server" Height="24px" Width="255px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="btnAddYemek" runat="server" Height="34px" OnClick="btnAddYemek_Click" Text="YemekEkle" Width="74px" />
                </td>
            </tr>
        </table>


    </asp:Panel>
</asp:Content>
