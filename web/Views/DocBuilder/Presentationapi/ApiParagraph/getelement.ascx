<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">GetElement</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/ApiParagraph/GetElement", "presentationapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("pptx");
var oPresentation = Api.GetPresentation();
var oSlide = oPresentation.GetSlideByIndex(0);
oSlide.RemoveAllObjects();
oGs1 = Api.CreateGradientStop(Api.CreateRGBColor(0, 0, 255), 0);
oGs2 = Api.CreateGradientStop(Api.CreateRGBColor(61, 74, 107), 100000);
oFill = Api.CreateRadialGradientFill([oGs1, oGs2]);
oStroke = Api.CreateStroke(0, Api.CreateNoFill());
var oShape = Api.CreateShape("flowChartMagneticTape", 300 * 36000, 130 * 36000, oFill, oStroke);
oShape.SetPosition(608400, 1267200);
oDocContent = oShape.GetDocContent();
oParagraph = oDocContent.GetElement(0);
oParagraph.RemoveAllElements();
oRun = Api.CreateRun();
oRun.AddText("This is the text for the first text run. Do not forget a space at its end to separate from the second one. ");
oParagraph.AddElement(oRun);
oRun = Api.CreateRun();
oRun.AddText("This is the text for the second run. We will set it bold afterwards. It also needs space at its end. ");
oParagraph.AddElement(oRun);
oRun = Api.CreateRun();
oRun.AddText("This is the text for the third run. It ends the paragraph.");
oParagraph.AddElement(oRun);
oRun = oParagraph.GetElement(1);
oRun.SetBold(true);
oSlide.AddObject(oShape);
builder.SaveFile("pptx", "GetElement.pptx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5009713&doc=bG1NQStzblRQZU9kWGg4R0FpT0t6eWxqTXZHS3lUNUJrQXdMaFpMTG85bz0_IjUwMDk3MTMi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
