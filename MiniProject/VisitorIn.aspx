<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VisitorIn.aspx.cs" Inherits="MiniProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 98%;
        height: 326px;
    }
    .auto-style10 {
        text-align: center;
    }
    .auto-style11 {
        width: 141px;
    }
    .auto-style12 {
        width: 141px;
        text-align: center;
        height: 31px;
    }
    .auto-style15 {
        height: 31px;
        text-align: left;
    }
        .auto-style16 {
            color: #FF0000;
        }
        .auto-style17 {
            font-family: "Berlin Sans FB";
            color: #000000;
            font-size: large;
            height: 24px;
            border-style: solid;
            border-width: thin;
        }
        .auto-style18 {
            width: 141px;
            height: 24px;
        }
        .auto-style19 {
            width: 164px;
        }
        .auto-style20 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    &nbsp;<table class="auto-style9">
        <tr>
            <td class="auto-style10" colspan="2" style="border-style: solid; border-width: thin; background-color: #FF0066; font-family: 'Berlin Sans FB'; font-size: large; color: #FFFFFF;">VISITORS INFORMATION</td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">First Name :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tbfname" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
                &nbsp;<span class="auto-style16">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbfname" ErrorMessage="Please Enter First Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">Last Name :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tblname" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
            &nbsp;<span class="auto-style16">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tblname" ErrorMessage="Please Enter Last Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">Company :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tbcompany" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
            &nbsp;<span class="auto-style16">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbcompany" ErrorMessage="Please Enter Company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">Visiting :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tbvisit" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
            &nbsp;<span class="auto-style16">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbvisit" ErrorMessage="Please Enter Visiting Place"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">ID Type :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:DropDownList ID="ddlidtype" runat="server" Height="16px" Width="136px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Aadhaar Card</asp:ListItem>
                    <asp:ListItem>Pan Card</asp:ListItem>
                    <asp:ListItem>Driving Licence</asp:ListItem>
                </asp:DropDownList>
                <span class="auto-style16">*</span>&nbsp;ID Num :<asp:TextBox ID="tbidnum" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="159px"></asp:TextBox>
            &nbsp;<span class="auto-style16">*<br />
                </span><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlidtype" ErrorMessage="Please Enter ID type" InitialValue="Select"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbidnum" ErrorMessage="Please Enter ID Num" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">Vehicle Number :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tbvnum" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbvnum" ErrorMessage="The Format is Wrong" ValidationExpression="^[A-Z]{2}[0-9]{2}-[A-Z]{2}[0-9]{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">Contact Number :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tbcno" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
            &nbsp;<span class="auto-style16">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbcno" ErrorMessage="Please Enter Contact Number" style="position: relative"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbcno" CssClass="auto-style20" Display="Dynamic" ErrorMessage="Number is Incomplete" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">Purpose of Visit :</td>
            <td style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:TextBox ID="tbpurpose" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="16px" Width="373px"></asp:TextBox>
            &nbsp;<span class="auto-style16">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbpurpose" ErrorMessage="Please Enter Purpose"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;"></td>
            <td style="border-style: solid; border-width: thin; " class="auto-style17">&nbsp; <span class="auto-style16">*</span> Mandatory </td>
        </tr>
        <tr>
            <td class="auto-style12" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">
                <asp:Button ID="btncancel" runat="server" BackColor="#FF0066" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="21px" Text="Cancel" Width="99px" OnClick="btncancel_Click" CausesValidation="False" />
            </td>
            <td class="auto-style15" style="border-style: solid; border-width: thin; font-family: 'Berlin Sans FB'; color: #000000; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BackColor="#FF0066" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="21px" Text="Save" Width="99px" OnClick="btnsave_Click" />
            &nbsp;<asp:Label ID="lbResult" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>

    </div>
</asp:Content>
