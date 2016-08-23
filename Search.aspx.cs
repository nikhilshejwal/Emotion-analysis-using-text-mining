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
using AjaxControlToolkit;

public partial class Search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["textmining"].ToString());
    int k = 0, h = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;

        Label3.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        //  Session["input"] = txtSearch.Text;
        // Session["Searchdata"] = txtSearch.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {

            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Label3.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Stopwatch sWatch = new Stopwatch();
            sWatch.Start();
            string s = txtSearch.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update textanalysis set RepeatedL=RepeatedL+1 where attribute='" + txtSearch.Text + "'", con);
            cmd.ExecuteNonQuery();
            string[] words = s.Split(' ');
            for (int i = 0; i < words.Length; i++)
            {


                SqlDataAdapter sda = new SqlDataAdapter("select  * from textanalysis where  attribute like '" + '%' + words[i] + '%' + "' ", con);
                DataSet ds = new DataSet();
                sda.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {

                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                  


                    for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                    {

                        string z = ds.Tables[0].Rows[j]["comment"].ToString();
                        SqlCommand cmd1 = new SqlCommand("Update textanalysis set NEmotion=NEmotion+1 where comment='" + z + "'", con);
                        cmd1.ExecuteNonQuery();

                        

                    }
                }
                con.Close();
            }





            sWatch.Stop();
            string ExecutionTimeTaken = string.Format("results :({0} Seconds)", sWatch.Elapsed.TotalMilliseconds);
            //lblExec.Text = ExecutionTimeTaken;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert(''Session  Time Out. Try Again');", true);
        }
    }
    protected void btnlinkAccepted_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        Label3.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        try
        {
            con.Open();
            GridViewRow gr = ((sender as LinkButton).NamingContainer as GridViewRow);
            Session["fiidssss"] = gr.Cells[0].Text.Trim();

            SqlCommand cmd = new SqlCommand("Update textanalysis set NPun='" + TextBox3.Text + "',NAcro='"+TextBox2.Text+"',NEW='"+TextBox1.Text+"' where id='" + gr.Cells[0].Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Analy.aspx");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert(''Invalid Update Black');", true);
        }

    }
    void link_command(object sender, CommandEventArgs e)
    {



        con.Open();
        SqlDataAdapter sda11 = new SqlDataAdapter("select * from textanalysis where comment='" + e.CommandName + "'", con);
        DataSet ds11 = new DataSet();
        sda11.Fill(ds11);

        GridView1.DataSource = ds11;
        GridView1.DataBind();
        //GridView2.DataSource = ds11;
        //GridView2.DataBind();
    }
    // protected void OnPaging(object sender, GridViewPageEventArgs e)
    //{
    //    GridView2.PageIndex = e.NewPageIndex;
    //    GridView2.DataBind();
      
    //}
    //protected void OnRatingChanged(object sender, RatingEventArgs e)
    //{
    //    GridViewRow gr = ((sender as LinkButton).NamingContainer as GridViewRow);
    //    Session["fiidssss"] = gr.Cells[0].Text.Trim();

    //    SqlCommand cmd = new SqlCommand("Update textanalysis set NEW= '" + e.Value + "' where id='" + gr.Cells[0].Text.Trim() + "'", con);
    //    cmd.ExecuteNonQuery();
    //    Label4.Text = e.Value;
    //    //Panel3.Visible = true;

    //    if (Request.QueryString.Get("show") == "all")
    //        GridView2.Columns[2].Visible = true;
    //    else
    //        GridView2.Columns[2].Visible = false;

    //    // GridView1.Columns[2].Visible = EnableViewState = true;






    //}

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }


   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}



