<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="pandanhouse.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .phone{
            margin-top: 10%;
            margin-bottom: 10%;
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
          <a class="nav-link active text-white" href="Info.aspx">Info</a>
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
    <div class="container-fluid bg-success text-white text-center mt-3">
        <div class="phone">
        <h1 style="word-spacing:5px;letter-spacing: 1px; ">Do you want to get more info and make reservation ?</h1>
        <h1 style="word-spacing:5px;letter-spacing: 1px;">Phone. +62-811-7888-298 </h1>
        </div>
    </div>
</asp:Content>