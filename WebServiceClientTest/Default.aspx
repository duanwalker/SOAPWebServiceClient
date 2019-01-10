<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebServiceClientTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12">
        <table style="font-family:Arial, 'Segoe UI'; top:10px; position:relative">
            <tr>
                <td>First Value</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtFirstValue" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Second Value</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtSecondValue" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Operation</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtOperation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="float:left">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    <asp:Label ID="lblResult" runat="server" Text="" ></asp:Label>
                </td>
            </tr>
        </table>
        </div>
    </div>

</asp:Content>
