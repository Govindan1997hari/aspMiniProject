<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="MiniProject.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 472px;
        }
        .auto-style10 {
            text-align: right;
            width: 562px;
            height: 111px;
        }
        .auto-style11 {
            width: 562px;
        }
        .auto-style12 {
            text-align: right;
            width: 562px;
            height: 104px;
        }
        .auto-style13 {
            height: 104px;
        }
        .auto-style14 {
            height: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: 'Berlin Sans FB'; font-size: x-large">Check In :&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="91px" ImageUrl="~/images/img5.png" OnClick="ImageButton1_Click" Width="93px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="font-family: 'Berlin Sans FB'; font-size: x-large">Check Out :&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style14">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="140px" ImageUrl="~/images/img6.png" Width="234px" OnClick="ImageButton2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
