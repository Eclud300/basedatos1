using System;
using System.Net;
using System.Xml.Linq;
using Newtonsoft.Json.Linq;
namespace OMDb
{
    public partial class OMDb : System.Web.UI.Page
    {
        protected void BuscarPelicula(object sender, EventArgs e)
        {
            string apiKey = "805ded2b"; // Reemplaza con tu clave de API
            string movieName = txtMovieName.Text.Trim();
            if (!string.IsNullOrEmpty(movieName))
            {
                string apiUrl =
                $"http://www.omdbapi.com/?apikey={apiKey}&t={WebUtility.UrlEncode(movieName)}";
                WebClient client = new WebClient();
                string jsonResult = client.DownloadString(apiUrl);
                JObject movieData = JObject.Parse(jsonResult);
                string title = (string)movieData["Title"];
                string year = (string)movieData["Year"];
                string director = (string)movieData["Director"];
                string plot = (string)movieData["Plot"];
                string posterUrl = (string)movieData["Poster"];
                lblResult.Text = $"<br />Título: {title}<br />";
                lblResult.Text += $"Año: {year}<br />";
                lblResult.Text += $"Director: {director}<br />";
                lblResult.Text += $"Trama: {plot}<br />";
                imgPoster.ImageUrl = posterUrl;
                imgPoster.Visible = true;
            }
            else
            {
                lblResult.Text = "Happy Gilmore";
            }
        }
    }
}