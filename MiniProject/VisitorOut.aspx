<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VisitorOut.aspx.cs" Inherits="MiniProject.VisitorOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style10" style="border: thin solid #000000; background-color: #87CEFA; font-family: 'Berlin Sans FB'; color: #2924D1;">Visitors In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="None" Font-Names="Berlin Sans FB" Font-Size="Large" Width="330px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Berlin Sans FB" Font-Size="Medium" Height="26px" Text="Search By ID" Width="128px" OnClick="Button1_Click" />
&nbsp;
                <asp:Button ID="Button2" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Berlin Sans FB" Font-Size="Medium" Height="26px" Text="Search By Name" Width="128px" OnClick="Button2_Click" />
            &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    <Columns>

                        <asp:TemplateField HeaderText="Sign Out">
                            <ItemTemplate>
                                <asp:Button ID="btn1" runat="server" Text="Click To Sign Out" OnClick="btn1_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="btn3" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Berlin Sans FB" Font-Size="Medium" Height="26px" Text="Go Back To Home Page" Width="128px" OnClick="btn3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
