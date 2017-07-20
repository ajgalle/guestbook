using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Data.SqlClient;


namespace guestbook
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            
            populateTable();
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            //When clicked, add to the database

            string _connectionString2 = @"Data Source=mssql6.gear.host;Initial Catalog=mymsdatabase;Integrated Security=False;User ID=mymsdatabase;Password=starwars!;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            using (SqlConnection con2 = new SqlConnection(_connectionString2))
            {

                SqlCommand cmd2 = new SqlCommand();

                cmd2.CommandText = $"INSERT INTO userComments(FirstName, LastName,Email,DateTime,userComment,HeardFrom) VALUES ('{FirstName.Text}','{LastName.Text}','{Email.Text}','{DateTime.Now.ToString()}','{userComment.Text}','{DropDownList1.SelectedValue.ToString()}')";
                cmd2.Connection = con2;

                con2.Open();

                cmd2.ExecuteNonQuery();

                Clear();

            }
            populateTable();

        }


        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            FirstName.Text = LastName.Text = Email.Text = userComment.Text = "";
            DropDownList1.SelectedIndex = 0;

        }
        public void populateTable(){
            //render table with existing comments once user loads page
            string _connectionString = @"Data Source=mssql6.gear.host;Initial Catalog=mymsdatabase;Integrated Security=False;User ID=mymsdatabase;Password=starwars!;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            //When using the "using" statement, it auto closes connection when done executing the {} bit.
            using (SqlConnection con = new SqlConnection(_connectionString))
            {

                SqlCommand cmd = new SqlCommand("SELECT Id, FirstName, DateTime, userComment from userComments", con);

                con.Open();

                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
             }
        }

        protected void FirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}