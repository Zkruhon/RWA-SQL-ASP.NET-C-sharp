using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Api_Admin
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Navigation.OnLanguageChange += Navigation_OnLanguageChange;
        }

        private void Navigation_OnLanguageChange(object sender, Models.NavigationEventArgs e)
        {
            HttpCookie cookie = new HttpCookie("culture");
            cookie.Value = e.Culture;
            Response.Cookies.Add(cookie);

            var id = Request.QueryString["id"];
            var parameter = id != null ? $"?id = {id}" : "";
            Response.Redirect($"{Request.Url.AbsolutePath}{parameter}");
        }
    }
}