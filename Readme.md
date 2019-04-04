<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
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

<br/>


