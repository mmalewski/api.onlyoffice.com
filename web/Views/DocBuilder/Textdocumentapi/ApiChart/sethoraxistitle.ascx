<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetHorAxisTitle</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/ApiChart/SetHorAxisTitle", "textdocumentapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oDrawing;
oParagraph = oDocument.GetElement(0);
oDrawing = Api.CreateChart("bar3D", [[200, 240, 280],[250, 260, 280]], ["Projected Revenue", "Estimated Costs"], [2014, 2015, 2016], 4051300, 2347595, 24);
oDrawing.SetVerAxisTitle("USD In Hundred Thousands", 10);
oDrawing.SetHorAxisTitle("Year", 11);
oDrawing.SetLegendPos("bottom");
oDrawing.SetShowDataLabels(false, false, true, false);
oDrawing.SetTitle("Financial Overview", 13);
oParagraph.AddDrawing(oDrawing);
builder.SaveFile("docx", "ApiChart.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4883430&doc=WVFVTFhqdEdBVzQxdWRmZW1BQS9QdmtOSGR6bzJXeVpZMUNGY1pEcWlqYz0_IjQ4ODM0MzAi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
