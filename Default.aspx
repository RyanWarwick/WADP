<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>


<asp:Content ID="carousel" ContentPlaceHolderID="Content1" runat="server">

    <div class="container-fluid mx-0 px-0 " >
<div class="row mx-0 px-0">
<div class="col mx-0 px-0">

<div id="carouselExampleIndicators" class="carousel slide  mx-0 px-0 " data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
	<a href="#">
      <img class="d-block w-100 " src="images/rog.jpg" alt="First slide" >
    </a>
	&nbsp;&nbsp;</div>
    <div class="carousel-item">
	<a href="#">
      <img class="d-block w-100 " src="images/starboy.png" alt="Second slide">
    </a>
	&nbsp;&nbsp;</div>
    <div class="carousel-item">
	<a href="#">
      <img class="d-block w-100" src="images/spidey.jpg" alt="Third slide">
    </a>
	&nbsp;&nbsp;</div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <i class="material-icons " style="font-size:72px;color:#262626;">navigate_before</i>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <i class="material-icons" style="font-size:72px;color:#262626;">navigate_next</i>
    <span class="sr-only">Next</span>
  </a>
</div>
  
</div>
</div>

</div>
    
</asp:Content>
