<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Default3" %>
<%@MasterType  virtualPath="./MasterPage.master"%>

<asp:Content ID="Cart" ContentPlaceHolderID="Content1" Runat="Server">
 <div class="container">
     <div class="row"></div>
    <div class="row"">
  <div class="col" >
     
      <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large">Home</asp:HyperLink>
      <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Large">/Shopping Cart</asp:HyperLink>
  <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium">< continue shopping</asp:HyperLink>
      </div>
        </div>
     
<div class="row mt-5">
    <div class="col-3"></div>
       <div class="col-6">
           
           
           <asp:DataList ID="cart" runat="server" 
        RepeatLayout="Table" Width="100%">  
             <ItemTemplate>  
            <table class="table">  
                <tr>  
                    <th>Product ID</th>
                     <th>Product Name</th>
                     <th>Quantity</th>
                     <th>Total Price</th>
                     <th></th>
                    <th></th>
                </tr>  
               <tr>
                   <td>  <%# DataBinder.Eval(Container.DataItem,"Product ID")%></td>
                   <td> <%# DataBinder.Eval(Container.DataItem,"Product Name")%></td>
                   <td> <%# DataBinder.Eval(Container.DataItem,"Quantity")%></td>
                   <td> <%# DataBinder.Eval(Container.DataItem,"Total Price")%></td>
                   <td>   <asp:Button ID="button3" runat="server"  Text="-"  Font-Bold="True" OnClick="button3_Click" CssClass="btn btn-light" /></td>
                   <td> <asp:Button ID="button1" runat="server" Text="+"  Font-Bold="True" OnClick="button3_Click1" CssClass="btn btn-light" />  </td>
               </tr>
            </table>  
        </ItemTemplate>  
    </asp:DataList>  
       
     </div>
        
     <div class="col"></div>
    </div>
  
    
          
<div class="row ml-4 mt-5">
             
                 <div class="col-5"></div>
       <div class="col-3">
        <h4 style="font-weight:bold;text-decoration:underline;"></h4>
               
        <asp:Label ID="lblsub" runat="server" Text="Sub-Total :"></asp:Label>     <asp:Label ID="lbl_subttl" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                     </div>
    <div class="col"></div>
               
              
               </div>

             <div class="row ml-3">
                
    
                 <div class="col-5"></div>
       <div class="col-3">
                
    <asp:Label ID="Label1" runat="server" Text="Delivery Fee : " ></asp:Label>  
                      
                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                   </div>
                  <div class="col"></div>
                 </div>
    
                
       
  
         
                  <div class="row ml-3">
                       <div class="col-5"></div>
                      <div class="col-3">
   <asp:Label ID="lblttl" runat="server" Text="Grand Total :" ></asp:Label>  <asp:Label ID="lbl_gttl" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                     </div>
                      <div class="col"></div>
                      </div>
          
                      

                       <div class="row mt-2 ml-5">
                              <div class="col-5"></div>
                      <div class="col-3">
     <asp:Button ID="btn_checkout" runat="server" CssClass="offset-sm-0"  Text="Check Out"  OnClick="btn_checkout_Click" BackColor="#FF9999" BorderColor="#FF6699" Font-Bold="True" ForeColor="White" />
                          </div>
                           <div class="col"></div>
           </div>

        
  
      
        
      
          


              

   
       
        <h2>Select an Item</h2>
       
        <script type="text/javascript">
            function closeAlert(e)
            {
                e.preventDefault();
                this.parentNode.style.display = "none";
            }
        </script>
    
            <div>
                [Please select an item.]
            </div>
            <div runat="server" id="AlertBox" class="alertBox" Visible="false">
                <div runat="server" id="AlertBoxMessage"></div>
                <button onclick="closeAlert.call(this, event)">OkOk</button>
            </div>
     </div>
    
</asp:Content>