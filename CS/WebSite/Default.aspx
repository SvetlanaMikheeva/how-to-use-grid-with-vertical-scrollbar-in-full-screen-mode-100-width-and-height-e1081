<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v9.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="height:100%;min-height:100%;margin:0;padding:0">
    <form id="form1" runat="server">
    <div id="mainDiv" style="height:100%;position:absolute;width:98%;overflow: hidden;" >
        <dxwgv:ASPxGridView ID="gridView" ClientInstanceName="gridView" runat="server" AutoGenerateColumns="False"
            DataSourceID="AccessDataSource1" Width="100%" OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared">
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="0">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="EmployeeID" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="2">
                </dxwgv:GridViewDataDateColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ShipVia" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Freight" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="5">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="6">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <Settings ShowVerticalScrollBar="True" UseFixedTableLayout="True" />
            <SettingsPager PageSize="50" />
            <ClientSideEvents EndCallback="function (s, e) { SynhronizeMyGridHeight(); }" Init="function (s, e) { SynhronizeMyGridHeight(); }" />
        </dxwgv:ASPxGridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CustomerID], [EmployeeID], [OrderDate], [ShipVia], [Freight], [ShipName], [ShipCountry] FROM [Orders]">
        </asp:AccessDataSource>
    
    </div>
    </form>
<script type="text/javascript">
_aspxAttachEventToElement(window, "resize", windowResized);
//Do it on every window resize-
function windowResized(evt){
    SynhronizeMyGridHeight();
}
function SynhronizeMyGridHeight() {
    gridviewSynhronizeHeight(gridView, document.getElementById("mainDiv"));
}
//This function maybe reused in your application(s)
function gridviewSynhronizeHeight(gridView, gridParentControl) {
    var rootTable = gridView.GetRootTable();
    var scrollDiv = gridView.getScrollableControl();
    if(!_aspxIsExists(gridParentControl) || !_aspxIsExists(rootTable) || !_aspxIsExists(scrollDiv)) return;
    scrollDiv.style.height = (scrollDiv.offsetHeight + (gridParentControl.clientHeight - rootTable.offsetHeight)) + "px";
}

</script>
    
</body>
</html>
