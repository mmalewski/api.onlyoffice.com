<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">AddText</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/ApiRun/AddText", "textdocumentapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun;
oParagraph = oDocument.GetElement(0);
oRun = Api.CreateRun();
oRun.AddText("This is just a sample text. Nothing special.");
oParagraph.AddElement(oRun);
builder.SaveFile("docx", "AddText.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4891439&doc=ZUt3cHBFQ0g5bk9WRk5Mc2RmK25FZlVCSHczaXpNT0h6OUg1ZFdhYTF3RT0_IjQ4OTE0Mzki0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
