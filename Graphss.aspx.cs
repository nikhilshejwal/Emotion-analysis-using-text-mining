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
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.IO.Compression;
using System.Text;

public partial class Graphss : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["textmining"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

        Chart4.Visible = false;
        Chart5.Visible = false;
        Chart6.Visible = false;
        string query = "select *  from registerationtable";

        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable tabl = new DataTable();
        da.Fill(tabl);

        DataView dv = tabl.DefaultView;
        Chart1.Series["Series1"].Points.DataBindXY(dv, "requestname", dv, "id");
        Chart2.Series["Series1"].Points.DataBindXY(dv, "name", dv, "id");
        Chart3.Series["Series1"].Points.DataBindXY(dv, "status", dv, "frdsrank");
        //Chart4.Series["Series1"].Points.DataBindXY(dv, "attribute", dv, "RepeatedL");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Chart4.Visible = true;
        Chart5.Visible = true;
        Chart6.Visible = true;
        Chart1.Visible = false;
        Chart2.Visible = false;
        Chart3.Visible = false;
        string query = "select *  from messagetable";

        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable tabl = new DataTable();
        da.Fill(tabl);

        DataView dv = tabl.DefaultView;
        Chart4.Series["Series1"].Points.DataBindXY(dv, "message", dv, "id");
        Chart5.Series["Series1"].Points.DataBindXY(dv, "sendid", dv, "id");
        Chart6.Series["Series1"].Points.DataBindXY(dv, "userid", dv, "id");
    }
}