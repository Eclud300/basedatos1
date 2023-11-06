<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OMDb.aspx.cs"
Inherits="OMDb.OMDb" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Practica OMDb</title>
<link rel="stylesheet"
href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
<link rel="stylesheet"
href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css"/>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="container">
<h1 class="display-4">OMDb Buscador de Peliculas</h1>
<p>Encuentra tus peliculas favoritas</p>
<div class="container row justify-content-center">
<div class="col-8">
<div class="input-group mb-3">
<asp:TextBox type="text" class="form-control" ID="txtMovieName"
Width="300" runat="server" placeholder="Ingrese el nombre de la película"/>
<div class="input-group-append">
<asp:Button class="btn btn-primary" id="btnSearch" runat="server"
Text="Buscar" type="button" OnClick="BuscarPelicula"></asp:Button>
</div>
</div>
<div class="result-box">
<asp:Image Visible="false" id="imgPoster" runat="server"
AlternateText="poster de la pelicula" />
<asp:Label ID="lblResult" runat="server"></asp:Label>
</div>
</div>
</div>
</div>
</form>
</body>
</html>
