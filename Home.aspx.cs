using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pandanhouse
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (!IsPostBack)
            {
               
                GetSubtitle();
                BindSlideImage();
                BindPromoImage();
            }
        }

        protected void BindPromoImage()
        {
            string ConnStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnStr);
            SqlCommand cmd = new SqlCommand("SP_GET_PROMO", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter2.Fill(ds);
            // Bind to Repeater 
            Repeater2.DataSource = ds;
            Repeater2.DataBind();
            adapter2.Dispose();
            ds.Dispose();
            cmd.Dispose();
            conn.Close();
        }

        protected void BindSlideImage()
        {
            string ConnStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnStr);
            SqlCommand cmd = new SqlCommand("SP_GET_SLIDE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            // Bind to Repeater 
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            adapter.Dispose();
            ds.Dispose();
            cmd.Dispose();
            conn.Close();
        }

        protected string GetActiveSlide(int ItemIndex)
        {
            if (ItemIndex == 0)
                return "active";
            else
                return "";               
       
        }

        protected string GetSubtitle()
        {
            string ConnStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnStr);
            conn.Open();
            string sSubtitle = "";
            string sSQL = " select TOP 1 subtitle from TB_COMPANY order by NEWID()";
            SqlCommand command = new SqlCommand(sSQL, conn);
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            sSubtitle = reader.GetString(0);

            command.Dispose();
            reader.Close();
            conn.Close();

            return p1.InnerHtml = sSubtitle;
         }    


        protected string GetVideo()
        {
            string ConnStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnStr);
            conn.Open();
            string sSQL = " select top 1 * from TB_VIDEO ORDER BY NEWID()";
            SqlCommand command = conn.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = sSQL;
            command.ExecuteNonQuery();
            DataTable dataTable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(dataTable);
            String FileVideo = "";
            foreach (DataRow row in dataTable.Rows)
            {
                FileVideo = row["file_name"].ToString();
            }
            command.Dispose();
            adapter.Dispose();
            conn.Close();
            // video dibaca dari folder 



             return "video/" + Request.QueryString["id"] + FileVideo.Trim();

           

        }


    }
}