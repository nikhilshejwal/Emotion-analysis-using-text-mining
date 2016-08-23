using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

public partial class Textmining : System.Web.UI.Page
{

       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["textmining"].ToString());
    string a = "0";
    string filenamed;
    protected void Page_Load(object sender, EventArgs e)
    {
        idgen fid = new idgen();
        TextBox5.Text = Convert.ToString(fid.idgeneration());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        

            //SqlCommand cmd22 = new SqlCommand("insert into Link values('" + null + "','" + txtmsg.Text + "', '" + null + "','" + "photos/" + filename + "','" + a + "')", con);

            //cmd22.ExecuteNonQuery();


         

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        con.Open();
try
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/photos/" + filename));








            SqlCommand cmd22 = new SqlCommand("insert into textanalysis values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "', '" + TextBox3.Text + "','" + "photos/" + filename + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "')", con);

            cmd22.ExecuteNonQuery();
            MsgBox.Show("Upload Success");

            //Response.Write("Upload Success");
            con.Close();


           
        }
catch (Exception ex)
{


}
    }
}
