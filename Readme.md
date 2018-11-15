<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to use grid (with vertical scrollbar) in Full Screen mode (100% Width and Height)


<p>This example demonstrates how to resize the ASPxGridView control based on the browser window size.<br><br><strong>Update:</strong><br>To keep the visual grid's size intact while adjusting it on the first load, wrap ASPxGridView with a hidden container and show it only after its full initialization and adjustment. For example:</p>


```aspx
<div id="gridContainer" style="visibility: hidden">
    <dx:ASPxGridView runat="server" ID="gridView" ...>
        ...
    </dx:ASPxGridView>
</div>
```




```js
function OnInit(s, e) {
    AdjustSize();
    document.getElementById("gridContainer").style.visibility = "";
}

```


<p><strong><br>MVC Version:<br></strong><a href="https://www.devexpress.com/Support/Center/p/E3958">How to use the GridView extension in a Full Screen mode (100% browser Width and Height)</a><strong><br><br>See Also:<br></strong><a href="https://www.devexpress.com/Support/Center/p/E3958">How to use the GridView extension in a Full Screen mode (100% browser Width and Height)</a><a href="https://www.devexpress.com/Support/Center/p/E3940">How to use the ASPxPageControl control in a Full Screen mode (100% browser Width and Height)</a><br></p>


<h3>Description</h3>

<p><strong>Note:</strong> Starting from version <strong>v2009 vol 3</strong> use the following approach:</p>
<p>1) Implement the javascript function that should resize the ASPxGridView's HTML element size according to a browser window size (via the <strong>ASPxClientGridView.SetHeight</strong> and <strong>ASPxClientGridView.SetWidth</strong> methods);<br> 2) Attach the global "<strong>window</strong><strong>"</strong> object "<strong>resize</strong><strong>"</strong> event handler (to handle a state when a browser window is resized) and call the define function to resize ASPxGridView on the client side;<br> 3) Handle client-side<strong> ASPxClientGridView.Init</strong> (to handle a state when the ASPxGridView's client-side programmatic object is initiated) and <strong>ASPxClientGridView.EndCallback</strong> events (to handle a state when the ASPxGridView's rendering is changed by reaction to the end-user manipulation) and call the define function to resize ASPxGridView on the client side.</p>

<br/>


