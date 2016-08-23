using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Diagnostics;

public partial class Keywor : System.Web.UI.Page
{
    string a, b, s, c = "";
    int k = 0, h = 0;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["textmining"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Stopwatch sWatch = new Stopwatch();
            sWatch.Start();
            lblinput.Text = (string)Session["input"].ToString();


            string s = lblinput.Text;
            Session["z"] = Label4.Text;
            Session["az"] = Label5.Text;
            string[] words = s.Split(' ');
            for (int i = 0; i < words.Length; i++)
            {

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select  id,attribute,subject,comment,photo,rank textanalysis where  attribute like '" + '%' + words[i] + '%' + "' ", con);
                //and fstatus='Accepted'order by rank DESC
                DataSet ds = new DataSet();
                sda.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert(''Session  Time Out. Try Again');", true);
        }
    }
}