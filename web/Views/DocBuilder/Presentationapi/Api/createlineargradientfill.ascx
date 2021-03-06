<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">CreateLinearGradientFill</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/Api/CreateLinearGradientFill", "presentationapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("pptx");
var oPresentation = Api.GetPresentation();
var oSlide = oPresentation.GetSlideByIndex(0);
oGs1 = Api.CreateGradientStop(Api.CreateRGBColor(255, 224, 204), 0);
oGs2 = Api.CreateGradientStop(Api.CreateRGBColor(255, 164, 101), 100000);
oFill = Api.CreateLinearGradientFill([oGs1, oGs2], 5400000);
oSlide.SetBackground(oFill);
builder.SaveFile("pptx", "CreateLinearGradientFill.pptx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5004799&doc=Y1JwL0d4Ujh0aGYvbUdVVGloUUhvNkl0VHFoV1JyOW5VcnJqRmJuaysvVT0_IjUwMDQ3OTki0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
