<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="Server">
    <div class="row mx-0 px-0">
<div class="col mx-0 px-0">
             <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" ClientIDMode="Static" ViewStateMode="Enabled" />
    </div>
        </div>
    </asp:Content>

