<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="pandanhouse.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Pandanhouse Restaurant - The Best Culinary Restaurant at Negeri Laskar Pelangi (Home)
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentMenu" runat="server">
      <nav class="navbar navbar-expand-lg bg-white">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
          <img src="images/binuscenter.png" class="img-fluid" style="width:120px">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active text-white" aria-current="page" href="Home.aspx">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="About.aspx">About us</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Our Menu
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="Broth.aspx">Broth</a></li>
              <li><a class="dropdown-item" href="Cnv.aspx">Crab & Vegetables</a></li>
              <li><a class="dropdown-item" href="Dessert.aspx">Dessert</a></li>
              <li><a class="dropdown-item" href="Fish.aspx">Fish</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="Beverages.aspx">Beverages</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Our Package
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="Wedding.aspx">Wedding</a></li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="Galery.aspx">Galery</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="Info.aspx">Info</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="Contact.aspx">Contact us</a>
          </li>
         
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" runat="server">
     <div class="container-fluid mt-3">
         <video id="video" runat="server" autoplay muted loop width="100%" height="auto">
             <source src="<%= GetVideo() %>" type="video/mp4">
         </video>
     </div>

        <div class="container mt-2">
         <div class="row">
            <div class="col-sm-6">
                <div class="container">
                <h1 class="h1 merah"> Have a Look to Our Dishes</h1>
                <p style="text-align: justify;" id="p1" runat="server" class="VideoPh">
                 

                </p>
            </div>

            </div>
            <div class="col-sm-6">
                <div class="container">
                    <div id="carouselExampleIndicators" class="carousel slide">
                        <div class="carousel-indicators">
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <asp:Repeater ID="Repeater1" runat="server">
                             <ItemTemplate>
                                  <div class="carousel-item <%#GetActiveSlide(Container.ItemIndex) %>">
                                    <img src="images/<%#Eval("slide_file") %>" class="d-block w-100">
                                  </div>
                             </ItemTemplate>
                         </asp:Repeater>
                        
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>
                </div>
            </div>
         </div>
    </div>

 <div class="container-fluid bg-success text-white text-center mt-2">
     <h1 style="word-spacing:5px;letter-spacing: 1px; ">Do you want to get more info and make reservation ?</h1>
     <h1 style="word-spacing:5px;letter-spacing: 1px;">Phone. +62-811-7888-298 </h1>
 </div>

<div class="container mt-3">
    <h1 class="text-center">Our Promo</h1>
       <div class="row">   
         <asp:Repeater ID="Repeater2" runat="server">
             <ItemTemplate>
                  <div class="col-sm-4 mb-2">
                     <div class="container">
                        <div class="card shadow">
                          
                            <img src="images/<%#Eval("promo_file") %>" class="card-img-top img-fluid">
                        </div>

                     </div>
                  </div>
             </ItemTemplate> 
         </asp:Repeater>
       </div>
</div>
   

</asp:Content>


