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

public partial class graph : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["textmining"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        string query = "select *  from textanalysis";

        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable tabl = new DataTable();
        da.Fill(tabl);

        DataView dv = tabl.DefaultView;
        Chart1.Series["Series1"].Points.DataBindXY(dv, "attribute", dv, "id");
        Chart2.Series["Series1"].Points.DataBindXY(dv, "comment", dv, "id");
        Chart3.Series["Series1"].Points.DataBindXY(dv, "subject", dv, "NEmotion");
        Chart4.Series["Series1"].Points.DataBindXY(dv, "attribute", dv, "RepeatedL");




    }
}