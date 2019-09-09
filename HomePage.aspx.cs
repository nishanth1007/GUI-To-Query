using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

namespace HomePage

{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Please enter your SQL query";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            connectionString = @"Data Source=karansqlserver.database.windows.net;Initial Catalog=IDS520SP19 ;User ID=karanuser;Password=.superman1914";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
                
                // Response.Write("Connection Made");

            /*          //SqlCommand cmd = new SqlCommand("select firstName from dbo.customer where password='Wb4~RnVU';", sqlConnection);
                     // SqlDataReader dr = cmd.ExecuteReader();
                      StringBuilder sb = new StringBuilder();
                      sb.Append("select firstName from dbo.customer");

                      String sql = sb.ToString();

                      DataTable dt = new DataTable(); */

            StringBuilder sb = new StringBuilder();

            sb.Append(TextBox1.Text);

            String sql = sb.ToString();
            using (SqlCommand cmd = new SqlCommand(sql, sqlConnection))
            {
                try
                {
                    //Response.Write(cmd.ToString());
                    SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlConnection);
                    DataTable dtb1 = new DataTable();
                    sqlda.Fill(dtb1);
                    GridView1.DataSource = dtb1;
                    GridView1.DataBind();
                    /* using (SqlDataReader reader = cmd.ExecuteReader())
                     {
                         //Response.Write(cmd.ToString());
                         while (reader.Read())
                         {
                             Response.Write(reader.GetString(0));

                         }
                     } */

                }
                catch
                {
                    //Response.Write("Please enter a valid sql query");
                    Label1.Text = "Please enter a valid sql query";
                    GridView1.DataSource = null;
                    GridView1.DataBind();

                }

                finally
                {
                    sqlConnection.Close();
                    TextBox1.Text = "";
                    

                }
            }
            }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

    }
}