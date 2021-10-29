using Api_Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Api_Admin
{
    public partial class Navigation : System.Web.UI.UserControl
    {
        public event EventHandler<NavigationEventArgs> OnLanguageChange;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHR_Click(object sender, EventArgs e)
        {
            OnLanguageChange?.Invoke(this, new NavigationEventArgs { Culture = "hr" });
        }

        protected void btnEN_Click(object sender, EventArgs e)
        {
            OnLanguageChange?.Invoke(this, new NavigationEventArgs { Culture = "en" });
        }
    }
}