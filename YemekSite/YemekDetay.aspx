<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekSite.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: large;
        }

        .auto-style11 {
            text-align: right;
            width: 120px;
        }

        .auto-style12 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <asp:Label ID="lblAd" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
    </p>
    <p class="auto-style8">
        <asp:DataList ID="DataList2" runat="server" Width="473px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Ad-Soyad:
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Mail Adresi:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Tarih:
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">Yorum İçerik:
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        </td>
                    </tr>
                    <hr />


                </table>
            </ItemTemplate>
        </asp:DataList>

    </p>
    <div>
           <table class="auto-style1">
        <tr>
            <td class="auto-style11">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="txtBoxAd" runat="server" CssClass="auto-style12" Height="20px" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Mail Adresi</td>
            <td>
                <asp:TextBox ID="txtBoxMail" runat="server" Height="20px" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Yorum:</td>
            <td>
                <asp:TextBox ID="txtBoxYorum" runat="server" Height="40px" TextMode="MultiLine" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#009933" Height="36px" OnClick="Button1_Click" Text="Yorum Yap" Width="101px" />
            </td>
        </tr>
                </table>
    </div>
</asp:Content>
