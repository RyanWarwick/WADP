<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>



<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">

    <meta name="viewport" content="width=device-width, initial-scale=1">


   <div class="row my-5"></div>
        <div class="row p-0 mx-0 my-5">
                             <div class="col-3"></div>
            <div class="col">
             <div id="my-container"  class="container" style=" background-color:white;border: 1px solid black;border-radius: 1.0rem;">
          
                <!-- left half -->
            
            
                   

                 <div class="row mt-5">
                    <div class="col-3"></div>
            <div class="col">
                <asp:Label ID="Label1" runat="server" Text="Label">Username</asp:Label>
            </div>

            <!-- right half -->

            <div class="col">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="myform-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <%if (username == false)
                    { %>
               
                    <asp:Label ID="Label3" runat="server" Text="Username does not exist"></asp:Label>
                
                <% }%>
            </div>
                     <div class="col-3"></div>
                 </div>

        <div class="row">
          

            <div class="col-3"></div>
            <div class="col">
                <asp:Label ID="Label2" runat="server" Text="Label">Password</asp:Label>
            </div>

            <div class="col">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="myform-control" OnTextChanged="TextBox2_TextChanged" ValidateRequestMode="Enabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </div>
           <div class="col-3"></div>
        </div>


        <div class="row mb-5">
           <div class="col-4"> </div>
            <div class="col">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button-control" OnClick="Button1_Click" />
            </div>
            <div class="col-3"></div>
        </div>
                
          
            </div>

            </div>
             <div class="col-3"></div>
        </div>

    
        <div class="occupy-space">

        </div>
</asp:Content>

