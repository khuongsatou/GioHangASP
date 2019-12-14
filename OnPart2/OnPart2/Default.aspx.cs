using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace OnPart2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=db;Integrated Security=True");
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [tbSanPham]", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                conn.Close();
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            
        }

        protected void BtnAddCart_Click(object sender, EventArgs e)
        {
            

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "add_to_cart")
            {
                HiddenField hf_stt =(HiddenField) e.Item.FindControl("STT");
                HiddenField hf_tensp =(HiddenField) e.Item.FindControl("TenSP");
                HiddenField hf_giasp =(HiddenField) e.Item.FindControl("GiaSP");
                HiddenField hf_mota =(HiddenField) e.Item.FindControl("MoTa");
                HiddenField hf_hinhanh =(HiddenField) e.Item.FindControl("HinhAnh");
                //HiddenField hf_quality =(HiddenField) e.Item.FindControl("Quality");
                //Session["cart"] = hf_stt.Value;
                DataTable dt = new DataTable();
                if (Session["cart"] == null)
                {
                    dt.Columns.Add("STT");
                    dt.Columns.Add("TenSP");
                    dt.Columns.Add("GiaSP");
                    dt.Columns.Add("MoTa");
                    dt.Columns.Add("HinhAnh");
                    dt.Columns.Add("Quality");
                }
                else
                {
                    dt = (DataTable)Session["cart"];
                   
                }
                int iRow = checkExist(dt,hf_stt.Value);
                if (iRow != -1)
                {
                    dt.Rows[iRow]["Quality"] = Convert.ToInt32(dt.Rows[iRow]["Quality"]) + 1;
                }
                else
                {
                    DataRow dr = dt.NewRow();
                    dr["STT"] = hf_stt.Value;
                    dr["TenSP"] = hf_tensp.Value;
                    dr["GiaSP"] = hf_giasp.Value;
                    dr["MoTa"] = hf_mota.Value;
                    dr["HinhAnh"] = hf_hinhanh.Value;
                    dr["Quality"] = 1;

                    dt.Rows.Add(dr);
                }
                Session["cart"] = dt;

            }
        }

        private int checkExist(DataTable dt ,string stt)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["STT"].ToString() == stt)
                {
                    return i;
                }
            }
            return -1;
        }
    }
}