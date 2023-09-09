<%@ Page Language="C#" Debug="true" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ThongKe.aspx.cs" Inherits="NhahangHH.Admin.ThongKe" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Từ ngày:"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtNgayDau" runat="server" Width="125px" TextMode="Date"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="đến ngày:"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtNgayCuoi" runat="server" Width="125px" TextMode="Date"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btnTim" runat="server" Text="Tìm" OnClick="btnTim_Click" />
            </td>
            <td>&nbsp;&nbsp;
                <asp:Label ID="lblLoi" runat="server"
                    Style="font-weight: 700; color: #FF0000; font-size: small"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="rpBCThu" runat="server" Height="100%" Width="100%">
    </rsweb:ReportViewer>


</asp:Content>
