using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnPart2
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                GridView1.DataSource = Session["cart"];
                GridView1.DataBind();
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (Session["cart"] !=null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["cart"];
                SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=db;Integrated Security=True");
                conn.Open();
                string sQuery = "INSERT INTO [dbo].[tbHoaDon] ([cus_name] ,[cus_add]) VALUES ('khuong' ,'vn')";
                SqlCommand cmd = new SqlCommand(sQuery,conn);
                cmd.ExecuteNonQuery();
                sQuery = "select @@identity";
                cmd = new SqlCommand(sQuery, conn);
                int id = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    sQuery = "INSERT INTO [dbo].[tbCTHD] ([id_hd] ,[int_sp] ,[price] ,[quality]) VALUES (@id_hd,@int_sp,@price,@quality)";
                    SqlParameter[] paras = new SqlParameter[4];
                    paras[0] = new SqlParameter("@id_hd", id);
                    paras[1] = new SqlParameter("@int_sp", dt.Rows[i]["STT"]);
                    paras[2] = new SqlParameter("@price", dt.Rows[i]["GiaSP"]);
                    paras[3] = new SqlParameter("@quality", dt.Rows[i]["Quality"]);
                    cmd = new SqlCommand(sQuery, conn);
                    cmd.Parameters.AddRange(paras);
                    cmd.ExecuteNonQuery();
                }
                conn.Close();
                Session["cart"] = null;
                Response.Write("<script> alert('Đặt hàng thành công') </script>");
                
            }
        }
    }
}