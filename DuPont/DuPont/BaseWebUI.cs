using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace DuPont
{
    public class BaseWebUI : System.Web.UI.Page
    {
        public void MessageBox(string Message)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "scriptMessage", "<script>alert('" + Message + "');</script>", false);
        }

    }
}