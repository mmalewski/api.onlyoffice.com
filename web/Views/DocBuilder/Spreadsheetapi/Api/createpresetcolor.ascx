<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">CreatePresetColor</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/Api/CreatePresetColor", "spreadsheetapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("xlsx");
var oWorksheet = Api.GetActiveSheet();
var oGs1, oGs2, oFill, oStroke, oPresetColor;
oPresetColor = Api.CreatePresetColor("lightYellow");
oGs1 = Api.CreateGradientStop(oPresetColor, 0);
oGs2 = Api.CreateGradientStop(Api.CreateRGBColor(255, 164, 101), 100000);
oFill = Api.CreateLinearGradientFill([oGs1, oGs2], 5400000);
oStroke = Api.CreateStroke(0, Api.CreateNoFill());
oWorksheet.AddShape("flowChartOnlineStorage", 60 * 36000, 35 * 36000, oFill, oStroke, 0, 2 * 36000, 1, 3 * 36000);
builder.SaveFile("xlsx", "CreatePresetColor.xlsx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5004632&doc=aWJneVlkaTl1dGZDZDZwVU1ZTjdaeXdKc3JrWHJ5dmlENjdOeDBXZFN1WT0_IjUwMDQ2MzIi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
