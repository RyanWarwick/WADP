<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="ohmygus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    
     <div class="row mx-0 py-2">
         <!-- left half -->
         <div class="col-4">

                           </div>
<div class="col">
    <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>  
    </div>
         <!-- right half -->
        <div class="col">
          
              <asp:TextBox ID="TxtName" runat="server" CssClass="myform-control" ></asp:TextBox>
               
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Please enter your full name"></asp:RequiredFieldValidator>
               
           </div>
         <div class="col-4">
             </div>
       
        </div>
     <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
 <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
    </div>
         <!-- right half -->
        <div class="col">
          
           <asp:TextBox ID="TxtUserName" runat="server" CssClass="myform-control"></asp:TextBox>
               

            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Please enter your username"></asp:RequiredFieldValidator>
               

           </div>
          <div class="col-4">
             </div>
         </div>
             <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
       <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
    </div>
                
         <!-- right half -->
        <div class="col">
          
           <asp:TextBox ID="TxtPassword" runat="server" CssClass="myform-control" TextMode="Password"></asp:TextBox>
              
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
               
            
               
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password needs to be 8 character long with special characters including uppercase and lowercase" ControlToValidate="TxtPassword" ValidationExpression="(?=^.{8,255}$)((?=.*\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[^A-Za-z0-9])(?=.*[a-z])|(?=.*[^A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9]))^.*"></asp:RegularExpressionValidator>
               
            
               
           </div>
                  <div class="col-4">
             </div>
                  </div>
                     <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
     <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
    </div>
                         
         <!-- right half -->
        <div class="col">
          
           <asp:TextBox ID="TxtRePassword" runat="server" CssClass="myform-control" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="TxtPassword" ControlToValidate="TxtRePassword"></asp:CompareValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtRePassword" ErrorMessage="Please re-enter your password"></asp:RequiredFieldValidator>
           </div>
                          <div class="col-4">
             </div>
                         </div>
                             <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
    <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
    </div>
   
           <!-- right half -->
        <div class="col">
          <asp:TextBox ID="TxtEmail" runat="server" CssClass="myform-control"></asp:TextBox>
           
               
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please enter your E-mail"></asp:RequiredFieldValidator>
           
                  <div class="col">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TxtEmail"></asp:RegularExpressionValidator>
           </div>
               
           </div>
                                  <div class="col-4">
             </div>
                                  </div>
            <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
<asp:Label ID="Label6" runat="server" Text="Newsletter"></asp:Label>
    </div>
             
         <!-- right half -->
        <div class="col">
          
           <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:DropDownList>
               
           </div>
                 <div class="col-4">
             </div>
                   </div>
              <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
    <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
    </div>
                  
         <!-- right half -->
        <div class="col">
          
           <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control"></asp:TextBox>
               
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Please enter your phone number"></asp:RequiredFieldValidator>
               
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Phone number"  ValidationExpression="^[89]\d{7}$" ControlToValidate="TxtPhone"></asp:RegularExpressionValidator>
               
           </div>
                   <div class="col-4">
             </div>
                  </div>
              <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
    <asp:Label ID="Label9" runat="server" Text="Postal"></asp:Label>
    </div>
         <!-- right half -->
        <div class="col">
          
           <asp:TextBox ID="TxtPostal" runat="server" CssClass="form-control"></asp:TextBox>
               
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter your Postal Code" ControlToValidate="TxtPostal"></asp:RequiredFieldValidator>
               
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtPostal" ErrorMessage="Postal Code entered is invalid" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
               
           </div>
                   <div class="col-4">
             </div>
              </div>
              <div class="row mx-0 py-2">
         <div class="col-4">

                           </div>

         <div class="col">
    <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
    </div>
         <!-- right half -->
        <div class="col">
          
            <asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control"></asp:TextBox>
               
          
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtAddress" ErrorMessage="Please enter your Address"></asp:RequiredFieldValidator>
               
           &nbsp;</div>
                   <div class="col-4">
             </div>
                  </div>
     <div class="row mx-0 py-2">
         <div class="col-4">
             </div>
         <div class="col">
              <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Save" />
             </div>
         </div>
    

     </div>
    

</asp:Content>

