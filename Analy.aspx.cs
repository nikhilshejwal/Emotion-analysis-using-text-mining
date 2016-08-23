using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;
using System.Data;


public partial class Analy : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["textmining"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sda11 = new SqlDataAdapter("select id,attribute,subject,comment,RepeatedL,NEmotion,NPun,NAcro,NEW from textanalysis ", con);
        DataSet ds11 = new DataSet();
        sda11.Fill(ds11);

        GridView2.DataSource = ds11;
        GridView2.DataBind();
    }
}