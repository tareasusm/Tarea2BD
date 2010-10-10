using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace Tarea2BD
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        public string asdf()
        {
            Response.Redirect("http://www.google.cl");
            return "hola";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand sql = new SqlCommand("insert into tabla values ("+TextBox3.Text+",'"+TextBox2.Text+"')",con);
            sql.ExecuteReader();
            Response.Redirect("Default.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
