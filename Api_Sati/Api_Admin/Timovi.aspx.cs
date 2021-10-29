using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Api_Admin
{
    public partial class Timovi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["LoginInfo"] == null)
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void BtnDodaj_Click(object sender, EventArgs e)
        {

            if (txtNaziv.Text.Trim() == string.Empty || txtDatumKreiranja.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please fill out the form!");
                return;
            }

            SqlDataSource1.Insert();
        }

        protected override void InitializeCulture()
        {

            base.InitializeCulture();

            HttpCookie cookie = Request.Cookies["culture"];

            if (cookie != null)

            {

                var culture = cookie.Value;

                Thread.CurrentThread.CurrentCulture = new CultureInfo(culture);

                Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);

            }

        }
    }
}