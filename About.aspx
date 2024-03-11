<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pandanhouse.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
          <a class="nav-link active text-white" aria-current="page" href="about.aspx">About us</a>
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="container-fluid mt-5">
        <div class="row">
            <div class="col sm-6">
                <div class="container text-end">
                    <img src="images/pandanhouse.jpg"  class="pandanhouse" alt="">
                </div>
            </div>
            <div class="col sm-6">
                <div class="container-fluid">
                    <h1 class="text-success">Welcome To Our Pandanhouse</h1>
                    <p>
                        <b>Pandan House Restaurant</b> is local culinary restaurant with the concept of modern minimalis culture of Belitung, providing different varieties of seafood, Vegetable with assured quality due its fresh nature.
                        <br><br>
                        Pandan House Restaurant estabilised on 20 July 2017  in Jl. Sijuk km4.5 , No 18, Tanjung Pandan,Bangka Belitung
                        <br><br>
                        Pandan House”s  vision is make its restaurant the leading “eatainment” culinary destination and one stop entertainment in Belitung
                        <br><br>
                        In addition, Pandan House has spacious indoor and outdoor areas, with Ball room, Family karoke room, Play ground, and largest park area enabling  to accommodate a large number of guests, as well as offers economic and affordable prices.
                        <br><br>
                        With the spirit and focus to ensure the comfort of its customers, Pandan House will continue to improve its service to meet the high standard that its customers deserve.
                    </p>
                </div>
            </div>
        </div>
      </div>

      <div class="container-fluid mt-4">
        <div class="row">
            <div class="col sm-6">
                <div class="container-fluid ms-5">
                    <h1 class="text-success">Our Vision & Mission</h1>
                    <p><u><b>Vision:</b></u></p>
                    <p>To make Pandan House the leading choice for “eatainment” culinary and <br> “entertainment” destination in Belitung</p>
                    <p><u><b>Mission:</b></u></p>
                    <p>1. To provide a wide range of fresh and quality Food varieties <br>
                        2. To offer the best taste culinary Belitung <br>
                        3. To provide excellent service <br>
                        4. To offer a comfy atmosphere with large capacity <br>
                        5. To offer affordable prices <br>
                        6. To Introduce the best Culinary culture of Belitung</p>
                    <p><b>Motto: </b> <b><i>"Enjoy Your Food With Us"</i></b></p>
                </div>
            </div>
            <div class="col sm-6">
                    <div class="container-fluid">
                        <h1 class="text-success">Our History</h1>
                        <p>
                            <b>Success</b> doesn’t just come; it is born from effort and persistence. On July 20, 2017, Pandan House Restaurant began its operations with Ball Room , Dine in Resto, family Karoke Room in Belitung on a 12.000 square meters. When Taste of culinary Belitung almost disapear, Pandan House has carried on with its presenting originaly taste independently up until now.
 
                            Now Pandan House is able to accommodate more than 1,500 visitors. The name Pandan House was inspired by the Pandan Leaf , which is Pandan aroma that inspire taste and like by many people, which eventually inspired Pandan House’s logo Pandan House was established on the principle of Togetherness, not merely profit. Its founders began the business with a certain drive and focus, including the focus to determine the business location.
                        </p>
                    </div>
              </div>
            </div>
      </div>
</asp:Content>