using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Object;
using BusinessLogicLayer11;
using System.Data;
using System.IO;
using System.Configuration;

namespace gridview
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BusinessLogicLayer11.Businessclass objbll = new BusinessLogicLayer11.Businessclass();
        Object.Object1 objbo = new Object.Object1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{
            //    Getdetails();
            //}
        }

        //string UserPhotoPath = photopath();




        protected void chkgraduation_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnSignup_Click1(object sender, EventArgs e)
        {


            //string fileName = Path.GetFileName(Photo.PostedFile.FileName);
            //string imgPath = ConfigurationManager.AppSettings["UploadPath"];
            //Photo.SaveAs(Server.MapPath(imgPath + fileName));

            //string UserPhotoPath = photopath();

            objbo.Id = txteno.Text;
            objbo.UserName = txtUsername.Text;
            objbo.Email = txtEmail.Text;
            objbo.Password = txtPassword.Text;
            objbo.City = ddlcity.SelectedItem.ToString();
            objbo.Gender = "";
            string str = fileupload.FileName;
            fileupload.PostedFile.SaveAs(Server.MapPath("/Image" + str));
            string fileupload1 = "/Image" + str.ToString();
            objbo.Photo = fileupload1;
            if (rbtnmale.Checked == true)
            {
                objbo.Gender = rbtnmale.Text;
            }
            else if (rbtnfemale.Checked == true)
            {
                objbo.Gender = rbtnfemale.Text;
            }
            objbo.Qualification = "";
            if (chkundergraduation.Checked == true)
            {
                objbo.Qualification = chkundergraduation.Text + ",";
            }
            if (chkgraduation.Checked == true)
            {
                objbo.Qualification = chkgraduation.Text + ",";
            }
            if (chkpostgraduation.Checked == true)
            {
                objbo.Qualification = chkpostgraduation.Text + ",";
            }


            int i = objbll.Insertdetails(objbo);
            if (i == 1)
            {
                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);


            }

        }


        public void Getdetails()

        {
            DataSet ds = objbll.Getdetails();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            Label l1 = (Label)row.FindControl("Label1");
            objbo.Id = l1.Text;

            if (e.CommandName == "cmddelete")
            {

                int i = objbll.deldetails(objbo);
                if (i == 1)
                {
                    DataSet ds = objbll.Getdetails();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }
            else if (e.CommandName == "cmdedit")
            {
                Label l2 = (Label)row.FindControl("Label2");
                objbo.UserName = l2.Text;

                txtUsername.Text = l2.Text;
                //btnSignup_Click1.Text = "updatedetails";
            }

        }
    }
}


        
    
