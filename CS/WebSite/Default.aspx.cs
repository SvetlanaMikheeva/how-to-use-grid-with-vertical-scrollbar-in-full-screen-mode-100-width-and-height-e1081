using System;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        DevExpress.Web.ASPxClasses.ASPxWebControl.RegisterUtilsScript(Page);//ASPxClientUtils
    }
}