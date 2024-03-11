<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pandanhouse.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .send_message{
            background: rgba(255,255,255,0.1);
            border: none;
            height: auto;
            margin: 0;
            outline: 0;
            padding: 15px;
            width: 70%;
            background-color: #e8eeef;
            color: #8a97a0;
            box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentMenu" runat="server">
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
          <a class="nav-link" href="Home.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="about.aspx">About us</a>
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
          <a class="nav-link active text-white" href="Contact.aspx">Contact us</a>
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="container-fluid mt-3">
        <img src="images/ContactUs.jpg" class="galerybg" width="100%" height="300px" alt="">
    </div>

    <div class="container-fluid mt-5">
    <div class="row">
        <div class="col sm-6">
            <div class="container-fluid ms-5">
              <h2><u>OUR LOCATION</u></h2>
              <p class="text-start mt-2" style="text-align:left;">
                    Jl. Sijuk KM 4,5 No 18A, <br>
                    Air Merbau Tanjung Pandan <br>
                    Belitung, Indonesia <br>
                    PO Box. 12880
              </p>
            </div>
        </div>
        <div class="col sm-6">
            <div class="container-fluid ms-5">
               <form action="/action_page.php">
                   <h2><u>LEAVE A MESSAGE</u></h2>
                  <label for="name">Name:</label><br>
                  <input type="text" id="name" class="send_message" name="name" placeholder="Enter your name here"><br>
                  <label for="pn">Phone Numbers:</label><br>
                  <input type="text" id="pn" class="send_message" name="pn" placeholder="Enter your phone number here"><br>
                  <label for="email">Email Address:</label><br>
                  <input type="text" id="email" class="send_message" name="email" placeholder="Enter email here"><br>
                  <label for="subject">Subject:</label><br>
                  <input type="text" id="subject" class="send_message" name="subject" placeholder="Enter subject here"><br>
                  <label for="message">Message:</label><br>
                  <input type="text" id="message" class="send_message" name="message" placeholder="Enter message here"><br><br>
                   <button class="btn btn-success" type="submit" href="#">Submit</button>
                </form>
            </div>
        </div>
    </div>
  </div>

    <div class="container-fluid bg-success text-white text-center mt-3">
        <h1 style="word-spacing:5px;letter-spacing: 1px; ">Do you want to get more info and make reservation ?</h1>
        <h1 style="word-spacing:5px;letter-spacing: 1px;">Phone. +62-811-7888-298 </h1>
    </div>

    <div class="mt-5 mb-2">
     <h3 class="text-center"><u>Our Maps</u></h3>
      <div class="container mt-4 text-center">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3985.3236681689464!2d107.66838537321895!3d-2.7198809388698657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e173e01eb87033b%3A0x4b4d5c2ae692612d!2sPandan%20House%20Restaurant!5e0!3m2!1sid!2sid!4v1706951240606!5m2!1sid!2sid" 
         width="700" height="700" style="border:0;" 
         allowfullscreen="" loading="lazy" 
         referrerpolicy="no-referrer-when-downgrade">
       </iframe>
            

      </div>

</div>
</asp:Content>
