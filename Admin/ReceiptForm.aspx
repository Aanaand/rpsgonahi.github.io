<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReceiptForm.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.ReceiptForm" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../crystalreportviewers13/js/crviewer/crv.js"></script>
    <!--  <script type="text/javascript">
        function Print() {
            var dvReport = document.getElementById("dvReport");
            var frame1 = dvReport.getElementsByTagName("iframe")[0];
            if (navigator.appName.indexOf("Internet Explorer") != -1) {
                frame1.name = frame1.id;
                window.frames[frame1.id].focus();
                window.frames[frame1.id].print();
            }
            else {
                var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
                frameDoc.print();
            }
        }
    </script> -->
    <style>
        .panel {
            width: 50%;
            margin: auto;
        }
      
    </style>
</head>

<script type="text/javascript">
    function Print() {
        var dvReport = document.getElementById("dvReport");
        var frame1 = dvReport.getElementsByTagName("iframe")[0];
        if (navigator.appName.indexOf("Internet Explorer") != -1 || navigator.appVersion.indexOf("Trident") != -1) {
            frame1.name = frame1.id;
            window.frames[frame1.id].focus();
            window.frames[frame1.id].print();
        } else {
            var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
            frameDoc.print();
        }
    }
</script>


<body>
    <form id="form1" runat="server">
        <div class="panel panel-danger">
            <div class="panel-body">
                <div class="text-right">
                    <input id="btnPrint" class="btn btn-primary" type="button" value="Print Only" onclick="Print()" />
                </div>

                <div id="dvReport" class="text-center">
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" CssClass="crpt"
                        AutoDataBind="true"
                        PrintMode="Pdf"
                        EnableDatabaseLogonPrompt="False"
                        EnableParameterPrompt="False"
                        BestFitPage="False"
                        ToolPanelView="None"
                        HasCrystalLogo="False"
                        HasGotoPageButton="False"
                        HasPageNavigationButtons="False"
                        HasSearchButton="False"
                        HasZoomFactorList="False"
                        BorderStyle="None"
                        HasToggleGroupTreeButton="False" 
                       HasDrilldownTabs="False"
                        
                        HasDrillUpButton="False" OnInit="CrystalReportViewer1_Init" />
                </div>
            </div>
        </div>


    </form>
</body>
</html>
