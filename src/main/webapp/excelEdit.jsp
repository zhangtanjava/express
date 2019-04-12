<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8"/>
    <title>Spread.Sheets - Samples</title>
    <meta name="spreadjs culture" content="zh-cn" />
    <link rel="icon" type="image/png" href="css/images/splogo.png"/>
    <!--Font-Awesome-->
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>

    <!--SpreadJS Css-->
    <link rel="stylesheet" href="css/gc.spread.sheets.excel2013white.11.0.0.css" title="spread-theme"/>

    <link rel="stylesheet" href="css/inspector.css"/>
    <link rel="stylesheet" href="css/insp-table-format.css"/>
    <link rel="stylesheet" href="css/insp-slicer-format.css"/>
    <link rel="stylesheet" href="css/insp-conditional-formatting.css"/>
    <link rel="stylesheet" href="css/colorpicker.css"/>
    <link rel="stylesheet" href="css/borderpicker.css"/>
    <link rel="stylesheet" href="css/insp-spread.css"/>
    <link rel="stylesheet" href="css/sample.css"/>

    <!--jQuery References-->
    <script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript" src="scripts/bootstrap.min.js"></script>

    <script type="text/javascript" src="scripts/gc.spread.sheets.all.11.0.0.min.js"></script>
    <script type="text/javascript" src="scripts/gc.spread.sheets.charts.11.0.0.min.js"></script>
    <script type="text/javascript" src="scripts/gc.spread.sheets.print.11.0.0.min.js"></script>
    <script type="text/javascript" src="scripts/gc.spread.excelio.11.0.0.min.js"></script>
    <script type="text/javascript" src="scripts/gc.spread.sheets.resources.zh.11.0.0.min.js"></script>
    <script type="text/javascript" src="scripts/license.js"></script>
    <script type="text/javascript" src="scripts/FileSaver.min.js"></script>
    <script type="text/javascript" src="scripts/resources.js"></script>
    <script type="text/javascript" src="scripts/sample.js"></script>
</head>

<body class="unselectable">
<div class="toolbar" id="toolbar">
    <div class="toolbar-left-section">
        <div class="toolbar-spread">
            <span class="sample-head-logo"></span>
            <div class="sample-head-text">Spread.Sheets</div>
        </div>
        <div class="btn-group" role="group" aria-label="toolbar" style="margin-top: 10px;margin-left:10px;">
            <div>
                <div class="insp-row">
                    <div>

                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="doImport"
                                title="@toolBar.importFile@">
                            <span class="fa fa-folder-open fa-2x"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="doExport"
                                title="@toolBar.export.title@">
                            <span class="fa fa-floppy-o fa-2x"></span>
                        </button>
                        <!--<a class="btn btn-default btn-toolbar localize-tooltip" id="download"-->
                           <!--title="@toolBar.download@">-->
                            <!--<span class="fa fa-cloud-download fa-2x"></span>-->
                        <!--</a>-->
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="doClear"
                                title="@toolBar.clear.title@">
                            <span class="fa fa-eraser fa-2x"></span>
                        </button>
                        <div class="insp-dropdown-list insp-inline-row v-middle localize-tooltip"
                             data-list-ref="zoomList" data-name="zoomSpread" title="@toolBar.zoom.title@">
                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12 btn-zoom btn-hover">
                                <div style="width: 100%; height: 100%">
                                    <span class="display btn-zoom-text"></span><span class="caret"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="toolbar-middle-section">
        <div class="btn-group" role="group" aria-label="toolbar" style="margin-top: 10px;">
            <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="addtable"
                    title="@toolBar.insertTable@">
                <span class="fa fa-table fa-2x"></span>
            </button>
            <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="addpicture"
                    title="@toolBar.insertPicture@">
                <span class="fa fa-picture-o fa-2x"></span>
            </button>
            <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="addcomment"
                    title="@toolBar.insertComment@">
                <span class="fa fa-comment fa-2x"></span>
            </button>
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-default btn-toolbar dropdown-toggle localize-tooltip"
                        data-toggle="dropdown" aria-expanded="false" title="@toolBar.insertSparkline@">
                    <span class="fa fa-pie-chart fa-2x"></span>
                </button>
                <ul class="dropdown-menu" role="menu" id="sparklineextypes">
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="lineSparkline"
                                title="@sparklineDialog.sparklineExType.values.line@">
                            <span class="ui-icon sparkline-line"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="columnSparkline"
                                title="@sparklineDialog.sparklineExType.values.column@">
                            <span class="ui-icon sparkline-column"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="winlossSparkline"
                                title="@sparklineDialog.sparklineExType.values.winLoss@">
                            <span class="ui-icon sparkline-winloss"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="pieSparkline"
                                title="@sparklineDialog.sparklineExType.values.pie@">
                            <span class="ui-icon sparkline-pie"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="areaSparkline"
                                title="@sparklineDialog.sparklineExType.values.area@">
                            <span class="ui-icon sparkline-area"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="scatterSparkline"
                                title="@sparklineDialog.sparklineExType.values.scatter@">
                            <span class="ui-icon sparkline-scatter"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="spreadSparkline"
                                title="@sparklineDialog.sparklineExType.values.spread@">
                            <span class="ui-icon sparkline-spread"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="stackedSparkline"
                                title="@sparklineDialog.sparklineExType.values.stacked@">
                            <span class="ui-icon sparkline-stacked"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="boxplotSparkline"
                                title="@sparklineDialog.sparklineExType.values.boxplot@">
                            <span class="ui-icon sparkline-boxplot"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="cascadeSparkline"
                                title="@sparklineDialog.sparklineExType.values.cascade@">
                            <span class="ui-icon sparkline-cascade"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="paretoSparkline"
                                title="@sparklineDialog.sparklineExType.values.pareto@">
                            <span class="ui-icon sparkline-pareto"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="bulletSparkline"
                                title="@sparklineDialog.sparklineExType.values.bullet@">
                            <span class="ui-icon sparkline-bullet"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="hbarSparkline"
                                title="@sparklineDialog.sparklineExType.values.hbar@">
                            <span class="ui-icon sparkline-hbar"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="vbarSparkline"
                                title="@sparklineDialog.sparklineExType.values.vbar@">
                            <span class="ui-icon sparkline-vbar"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="variSparkline"
                                title="@sparklineDialog.sparklineExType.values.variance@">
                            <span class="ui-icon sparkline-variance"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="monthSparkline"
                                title="@sparklineDialog.sparklineExType.values.month@">
                            <span class="ui-icon sparkline-hbar"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="yearSparkline"
                                title="@sparklineDialog.sparklineExType.values.year@">
                            <span class="ui-icon sparkline-vbar"></span>
                        </button>
                    </li>
                </ul>
            </div>


            <div class="btn-group" role="group">
                <button type="button" class="btn btn-default btn-toolbar dropdown-toggle localize-tooltip"
                        data-toggle="dropdown" aria-expanded="false" title="@toolBar.insertChart@">
                    <span class="fa fa-bar-chart-o fa-2x"></span>
                </button>
                <ul class="dropdown-menu chart-Container-width" role="menu" id="chartContainer">
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="columnClusteredChart"
                                title="@chartDialog.chartExType.values.columnClustered@">
                            <span class="chart-icon chart-columnClustered"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="columnStackedChart"
                                title="@chartDialog.chartExType.values.columnStacked@">
                            <span class="chart-icon chart-columnStacked"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="columnStacked100Chart"
                                title="@chartDialog.chartExType.values.columnStacked100@">
                            <span class="chart-icon chart-columnStacked100"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="lineChart"
                                title="@chartDialog.chartExType.values.line@">
                            <span class="chart-icon chart-line"></span>
                        </button>
                    </li>
                    <li>

                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="lineStackedChart"
                                title="@chartDialog.chartExType.values.lineStacked@">
                            <span class="chart-icon chart-lineStacked"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="lineStacked100Chart"
                                title="@chartDialog.chartExType.values.lineStacked100@">
                            <span class="chart-icon chart-lineStacked100"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="lineMarkersChart"
                                title="@chartDialog.chartExType.values.lineMarkers@">
                            <span class="chart-icon chart-lineMarkers"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="lineMarkersStackedChart"
                                title="@chartDialog.chartExType.values.lineMarkersStacked@">
                            <span class="chart-icon chart-lineMarkersStacked"></span>
                        </button>
                    </li>
                    <li>

                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="lineMarkersStacked100Chart"
                                title="@chartDialog.chartExType.values.lineMarkersStacked100@">
                            <span class="chart-icon chart-lineMarkersStacked100"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="pieChart"
                                title="@chartDialog.chartExType.values.pie@">
                            <span class="chart-icon chart-pie"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="doughnutChart"
                                title="@chartDialog.chartExType.values.doughnut@">
                            <span class="chart-icon chart-doughnut"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="barClusteredChart"
                                title="@chartDialog.chartExType.values.barClustered@">
                            <span class="chart-icon chart-barClustered"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="barStackedChart"
                                title="@chartDialog.chartExType.values.barStacked@">
                            <span class="chart-icon chart-barStacked"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="barStacked100Chart"
                                title="@chartDialog.chartExType.values.barStacked100@">
                            <span class="chart-icon chart-barStacked100"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="areaChart"
                                title="@chartDialog.chartExType.values.area@">
                            <span class="chart-icon chart-area"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="areaStackedChart"
                                title="@chartDialog.chartExType.values.areaStacked@">
                            <span class="chart-icon chart-areaStacked"></span>
                        </button>
                    </li>
                    <li>

                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="areaStacked100Chart"
                                title="@chartDialog.chartExType.values.areaStacked100@">
                            <span class="chart-icon chart-areaStacked100"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="xyScatterChart"
                                title="@chartDialog.chartExType.values.xyScatter@">
                            <span class="chart-icon chart-xyScatter"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="xyScatterSmoothChart"
                                title="@chartDialog.chartExType.values.xyScatterSmooth@">
                            <span class="chart-icon chart-xyScatterSmooth"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="xyScatterSmoothNoMarkersChart"
                                title="@chartDialog.chartExType.values.xyScatterSmoothNoMarkers@">
                            <span class="chart-icon chart-xyScatterSmoothNoMarkers"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="xyScatterLinesChart"
                                title="@chartDialog.chartExType.values.xyScatterLines@">
                            <span class="chart-icon chart-xyScatterLines"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="xyScatterLinesNoMarkersChart"
                                title="@chartDialog.chartExType.values.xyScatterLinesNoMarkers@">
                            <span class="chart-icon chart-xyScatterLinesNoMarkers"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="bubbleChart"
                                title="@chartDialog.chartExType.values.bubble@">
                            <span class="chart-icon chart-bubble"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="stockHLCChart"
                                title="@chartDialog.chartExType.values.stockHLC@">
                            <span class="chart-icon chart-stockHLC"></span>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="stockOHLCChart"
                                title="@chartDialog.chartExType.values.stockOHLC@">
                            <span class="chart-icon chart-stockOHLC"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="stockVHLCChart"
                                title="@chartDialog.chartExType.values.stockVHLC@">
                            <span class="chart-icon chart-stockVHLC"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="stockVOHLCChart"
                                title="@chartDialog.chartExType.values.stockVOHLC@">
                            <span class="chart-icon chart-stockVOHLC"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-toolbar localize-tooltip chartNoMarginPadding" id="comboChart"
                                title="@chartDialog.chartExType.values.combo@">
                            <span class="chart-icon chart-combo"></span>
                        </button>
                    </li>
                </ul>
            </div>



            <button type="button" class="btn btn-default btn-toolbar localize-tooltip hidden" id="addslicer"
                    title="@toolBar.insertSlicer@">
                <span class="fa fa-filter fa-2x"></span>
            </button>
        </div>
    </div>
    <div class="toolbar-right-section">
        <button type="button" class="btn btn-default btn-toolbar localize-tooltip" id="toggleInspector"
                title="@toolBar.hideInspector@">
            <span class="fa fa-angle-right fa-2x"></span>
        </button>
    </div>
</div>
<div class="content-container">
    <div id="inner-content-container">
        <table id="formulaBar" style="width: 100%;">
            <tbody>
            <tr>
                <td style="vertical-align:top;">
                    <input type="text" id="positionbox" disabled="disabled"
                           style="/*text-align: center;*/ padding: 5px; border-width: 0; background-color: rgb(235, 235, 228); height: 36px;">
                </td>
                <td style="width: 100%; border-left: 1px solid #ccc;">
                    <div id="formulabox" contenteditable="true" spellcheck="false"
                         style="overflow: hidden; height: 36px; width: 100%; padding: 9px;"></div>
                    <div class="vertical-splitter ui-draggable" id="verticalSplitter"></div>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="spread-container" id="controlPanel" style="height: 600px; bottom: 0;">
            <div id="ss" style="height: 100%; border: 1px solid #ddd;"></div>
        </div>
    </div>
    <div class="insp-container">
        <div>
            <ul class="nav nav-tabs nav-justified">
                <li class="insp-cate-tab active">
                    <a href="#spreadTab" data-toggle="tab" class="localize">@tabs.spread@</a>
                </li>
                <li class="insp-cate-tab">
                    <a href="#sheetTab" data-toggle="tab" class="localize">@tabs.sheet@</a>
                </li>
                <li class="insp-cate-tab">
                    <a href="#cellTab" data-toggle="tab" class="localize">@tabs.cell@</a>
                </li>
                <li class="insp-cate-tab hidden">
                    <a href="#tableTab" data-toggle="tab" class="localize">@tabs.table@</a>
                </li>
                <li class="insp-cate-tab">
                    <a href="#dataTab" data-toggle="tab" class="localize">@tabs.data@</a>
                </li>
                <li class="insp-cate-tab hidden">
                    <a href="#commentTab" data-toggle="tab" class="localize">@tabs.comment@</a>
                </li>
                <li class="insp-cate-tab hidden">
                    <a href="#pictureTab" data-toggle="tab" class="localize">@tabs.picture@</a>
                </li>
                <li class="insp-cate-tab hidden">
                    <a href="#sparklineExTab" data-toggle="tab" class="localize">@tabs.sparklineEx@</a>
                </li>
                <li class="insp-cate-tab hidden">
                    <a href="#chartExTab" data-toggle="tab" class="localize">@tabs.chartEx@</a>
                </li>
                <li class="insp-cate-tab hidden">
                    <a href="#slicerTab" data-toggle="tab" class="localize">@tabs.slicer@</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="spreadTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.general.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="allowUserDragDrop">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.general.allowDragDrop@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="allowUserDragFill">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.general.allowDragFill@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="allowZoom">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.general.allowZoom@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="allowOverflow">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.general.allowOverflow@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showDragFillSmartTag">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.general.showDragFillSmartTag@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="allowDragMerge">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.general.allowDragMerge@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="allowContextMenu">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.general.allowContextMenu@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="resizeZeroIndicatorList"
                                                     data-name="resizeZeroIndicator">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @spreadTab.resizeZeroIndicator.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.calculation.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div class="text insp-inline-row-item localize">
                                                @spreadTab.calculation.referenceStyle.title@
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row insp-col-12"
                                                     data-name="referenceStyle">
                                                    <div class="radiobutton insp-inline-row-item  insp-col-offset-1 checked"
                                                         data-name="a1style"></div>
                                                    <div class="text insp-inline-row-item insp-col-3 localize"
                                                         data-name="a1style">@spreadTab.calculation.referenceStyle.a1@
                                                    </div>
                                                    <div class="radiobutton insp-inline-row-item"
                                                         data-name="r1c1style"></div>
                                                    <div class="text insp-inline-row-item insp-col-3 localize"
                                                         data-name="r1c1style">
                                                        @spreadTab.calculation.referenceStyle.r1c1@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.scrollBar.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showVerticalScrollbar">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.scrollBar.showVertical@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showHorizontalScrollbar">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.scrollBar.showHorizontal@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="scrollbarMaxAlign">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.scrollBar.maxAlign@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="scrollbarShowMax">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.scrollBar.showMax@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="scrollIgnoreHidden">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.scrollBar.scrollIgnoreHidden@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.tabStip.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="tabStripVisible">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.tabStip.visible@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="newTabVisible">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.tabStip.newTabVisible@
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="tabEditable">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.tabStip.editable@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showTabNavigation">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @spreadTab.tabStip.showTabNavigation@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.color.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="spreadBackcolor">
                                                    <div class="title  insp-inline-row-item insp-col-8 localize">
                                                        @spreadTab.color.spreadBackcolor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-4">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(255, 255, 255);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="grayAreaBackcolor">
                                                    <div class="title  insp-inline-row-item insp-col-8 localize">
                                                        @spreadTab.color.grayAreaBackcolor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-4">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.tip.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="scrollTipList" data-name="scrollTip">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @spreadTab.tip.scrollTip.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="resizeTipList" data-name="resizeTip">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @spreadTab.tip.resizeTip.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="showDragDropTip">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.tip.showDragDropTip@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="showDragFillTip">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.tip.showDragFillTip@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.sheets.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="sheetNameList" data-name="sheetName">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @spreadTab.sheets.sheetName@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display">Sheet1</span><span
                                                                class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="sheetVisible"
                                                     style="width: 100%">
                                                    <div class="insp-col-offset-4">
                                                        <div class="button insp-inline-row-item checked"></div>
                                                        <div class="text   insp-inline-row-item localize">
                                                            @spreadTab.sheets.sheetVisible@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.cutCopy.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="cutCopyIndicatorVisible">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.cutCopy.cutCopyIndicator.visible@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="cutCopyIndicatorBorderColor">
                                                    <div class="title  insp-inline-row-item insp-col-8 localize">
                                                        @spreadTab.cutCopy.cutCopyIndicator.borderColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-4">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="allowCopyPasteExcelStyle">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.cutCopy.allowCopyPasteExcelStyle@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="allowExtendPasteRange">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @spreadTab.cutCopy.allowExtendPasteRange@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="copyPasteHeaderList"
                                                     data-name="copyPasteHeaderOptions"
                                                     id="copyPasteHeaderOptions">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @spreadTab.cutCopy.copyPasteHeaderOptions.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@spreadTab.spreadTheme.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="spreadThemeList" data-name="spreadTheme"
                                                     id="spreadTheme">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @spreadTab.spreadTheme.theme.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="sheetTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sheetTab.general.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row" data-name="sheetName">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.general.name@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="rowCount">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.general.rowCount@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="columnCount">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.general.columnCount@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="sheetTabColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.general.tabColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgba(0, 0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sheetTab.freeze.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="frozenRowCount">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.freeze.frozenRowCount@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="frozenColumnCount">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.freeze.frozenColumnCount@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row"
                                                     data-name="trailingFrozenRowCount">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.freeze.trailingFrozenRowCount@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row"
                                                     data-name="trailingFrozenColumnCount">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.freeze.trailingFrozenColumnCount@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="frozenLineColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.freeze.frozenLineColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider">
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-buttons insp-inline-row">
                                                    <div class="insp-inline-row-item content">
                                                        <div class="item">
                                                            <div class="button btn btn-default localize"
                                                                 id="freezePane">@sheetTab.freeze.freezePane@
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="unfreeze">
                                                                @sheetTab.freeze.unfreeze@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sheetTab.gridLine.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showVerticalGridline">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @sheetTab.gridLine.showVertical@
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showHorizontalGridline">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @sheetTab.gridLine.showHorizontal@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="gridlineColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.gridLine.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(208, 215, 229);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sheetTab.header.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="showRowHeader">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @sheetTab.header.showRowHeader@
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="showColumnHeader">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @sheetTab.header.showColumnHeader@
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sheetTab.selection.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="selectionPolicyList" data-name="selectionPolicy">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @sheetTab.selection.policy.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="selectionUnitList" data-name="selectionUnit">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @sheetTab.selection.unit.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="selectionBorderColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.selection.borderColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(255, 255, 255);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row show-nofill-color"
                                                     data-name="selectionBackColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @sheetTab.selection.backColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="hideSelection">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.selection.hide@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sheetTab.protection.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxProtectSheet">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.protectSheet@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxSelectLockedCells">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.selectLockCells@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxSelectUnlockedCells">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.selectUnlockedCells@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="checkboxSort">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.sort@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxUseAutoFilter">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.useAutoFilter@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxResizeRows">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.resizeRows@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxResizeColumns">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.resizeColumns@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="checkboxEditObjects">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @sheetTab.protection.editObjects@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="cellTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.style.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-button-group insp-inline-row">
                                                    <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                        <span class="btn btn-default font-bold localize-tooltip"
                                                              data-name="bold"
                                                              title="@tooltips.style.fontBold@">B</span>
                                                        <span class="btn btn-default font-italic localize-tooltip"
                                                              data-name="italic"
                                                              title="@tooltips.style.fontItalic@">I</span>
                                                        <span class="btn btn-default font-underline localize-tooltip"
                                                              data-name="underline"
                                                              title="@tooltips.style.fontUnderline@">U</span>
                                                        <span class="btn btn-default font-overline localize-tooltip"
                                                              data-name="overline"
                                                              title="@tooltips.style.fontOverline@">O</span>
                                                        <span class="btn btn-default font-strikethrough localize-tooltip"
                                                              data-name="strikethrough"
                                                              title="@tooltips.style.fontLinethrough@">S</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontFamilyList" data-name="fontFamily">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.style.fontFamily@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontSizeList" data-name="fontSize">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.style.fontSize@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row" data-name="foreColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.style.foreColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(79, 129, 189);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row show-nofill-color"
                                                     data-name="backColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.style.backColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(220, 231, 241);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="cellPadding">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.style.cellPadding@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="watermark">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.style.waterMark@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="insp-group-layout">
                                        <div class="insp-group">
                                            <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.style.cellLabel.title@</span>
                                        </span>
                                            </div>
                                            <div class="insp-group-content">
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-button-group insp-inline-row">
                                                                <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                                    <span class="btn btn-default font-bold localize-tooltip"
                                                                          data-name="labelBold"
                                                                          title="@tooltips.style.fontBold@">B</span>
                                                                    <span class="btn btn-default font-italic localize-tooltip"
                                                                          data-name="labelItalic"
                                                                          title="@tooltips.style.fontItalic@">I</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="fontFamilyList"
                                                                 data-name="labelFontFamily">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.style.cellLabel.fontFamily@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="fontSizeList" data-name="labelFontSize">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.style.cellLabel.fontSize@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-color-picker insp-inline-row"
                                                                 data-name="labelForeColor">
                                                                <div class="title  insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.style.cellLabel.foreColor@
                                                                </div>
                                                                <div class="picker insp-inline-row-item insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <div class="color-view"
                                                                             style="background-color: rgb(79, 129, 189);"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-text insp-inline-row"
                                                                 data-name="labelMargin">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.style.cellLabel.labelMargin@
                                                                </div>
                                                                <input class="editor insp-inline-row-item insp-col-8"
                                                                       type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="cellLabelVisibilityList"
                                                                 data-name="cellLabelVisibility"
                                                                 id="cellLabelVisibility">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.style.cellLabel.visibility@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="cellLabelAlignmentList"
                                                                 data-name="cellLabelAlignment"
                                                                 id="cellLabelAlignment">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.style.cellLabel.alignment@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.border.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div class="insp-groups">
                                                <div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-outsideborder image localize-tooltip"
                                                             data-name="outsideBorder"
                                                             title="@tooltips.border.outsideBorder@"></div>
                                                    </div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-insideborder image localize-tooltip"
                                                             data-name="insideBorder"
                                                             title="@tooltips.border.insideBorder@"></div>
                                                    </div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-allborder image localize-tooltip"
                                                             data-name="allBorder"
                                                             title="@tooltips.border.allBorder@"></div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-leftborder image localize-tooltip"
                                                             data-name="leftBorder"
                                                             title="@tooltips.border.leftBorder@"></div>
                                                    </div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-innervertical image localize-tooltip"
                                                             data-name="innerVerticalBorder"
                                                             title="@tooltips.border.innerVertical@"></div>
                                                    </div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-rightborder image localize-tooltip"
                                                             data-name="rightBorder"
                                                             title="@tooltips.border.rightBorder@"></div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-topborder image localize-tooltip"
                                                             data-name="topBorder"
                                                             title="@tooltips.border.topBorder@"></div>
                                                    </div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-innerhorizontal image localize-tooltip"
                                                             data-name="innerHorizontalBorder"
                                                             title="@tooltips.border.innerHorizontal@"></div>
                                                    </div>
                                                    <div class="group-item">
                                                        <div class="spread-border-icon-bottomborder image localize-tooltip"
                                                             data-name="bottomBorder"
                                                             title="@tooltips.border.bottomBorder@"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="insp-groups right-border-group">
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="borderLineList" data-name="borderLine"
                                                                 id="borderLineType">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.border.rangeBorderLine@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <div id="border-line-type"></div>
                                                                        <span class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-color-picker insp-inline-row"
                                                                 data-name="borderColor">
                                                                <div class="title  insp-inline-row-item insp-col-4 localize">
                                                                    @cellTab.border.rangeBorderColor@
                                                                </div>
                                                                <div class="picker insp-inline-row-item insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <div class="color-view"
                                                                             style="background-color: rgb(0, 0, 0);"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.alignment.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-radio-button-group insp-inline-row" data-name="vAlign">
                                                    <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                            <span class="btn btn-default btn-icon localize-tooltip"
                                                                  data-name="top" title="@tooltips.alignment.topAlign@">
                                                                <span class="ui-icon smallicon icon-topalign"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon localize-tooltip"
                                                              data-name="middle"
                                                              title="@tooltips.alignment.middleAlign@">
                                                                <span class="ui-icon smallicon icon-middlealign"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon localize-tooltip"
                                                              data-name="bottom"
                                                              title="@tooltips.alignment.bottomAlign@">
                                                                <span class="ui-icon smallicon icon-bottomalign"></span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-radio-button-group insp-inline-row" data-name="hAlign">
                                                    <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                            <span class="btn btn-default btn-icon localize-tooltip"
                                                                  data-name="left"
                                                                  title="@tooltips.alignment.leftAlign@">
                                                                <span class="ui-icon smallicon icon-leftalign"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon localize-tooltip"
                                                              data-name="center"
                                                              title="@tooltips.alignment.centerAlign@">
                                                                <span class="ui-icon smallicon icon-centeralign"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon localize-tooltip"
                                                              data-name="right"
                                                              title="@tooltips.alignment.rightAlign@">
                                                                <span class="ui-icon smallicon icon-rightalign"></span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-button-group insp-inline-row">
                                                    <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                            <span class="btn btn-default btn-icon no-toggle localize-tooltip"
                                                                  data-name="decreaseIndent"
                                                                  title="@tooltips.alignment.decreaseIndent@">
                                                                <span class="ui-icon smallicon icon-decreaseindent"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon no-toggle localize-tooltip"
                                                              data-name="increaseIndent"
                                                              title="@tooltips.alignment.increaseIndent@">
                                                                <span class="ui-icon smallicon icon-increaseindent"></span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="wrapText">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @cellTab.alignment.wrapText@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.format.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="commomFormatList" data-name="commomFormat"
                                                     id="commomFormatType">
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-button-group insp-inline-row">
                                                    <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                            <span class="btn btn-default btn-icon no-toggle localize-tooltip"
                                                                  data-name="percentStyle"
                                                                  title="@tooltips.format.percentStyle@">
                                                                <span class="ui-icon smallicon icon-percentstyle"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon no-toggle localize-tooltip"
                                                              data-name="commaStyle"
                                                              title="@tooltips.format.commaStyle@">
                                                                <span class="ui-icon smallicon icon-commastyle"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon no-toggle localize-tooltip"
                                                              data-name="increaseDecimal"
                                                              title="@tooltips.format.increaseDecimal@">
                                                                <span class="ui-icon smallicon icon-increasedecimal"></span>
                                                            </span>
                                                        <span class="btn btn-default btn-icon no-toggle localize-tooltip"
                                                              data-name="decreaseDecimal"
                                                              title="@tooltips.format.decreaseDecimal@">
                                                                <span class="ui-icon smallicon icon-decreasedecimal"></span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row" data-name="customFormat">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @cellTab.format.custom@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.merge.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-buttons insp-inline-row">
                                                    <div class="insp-inline-row-item content">
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="mergeCells"
                                                                 disabled="disabled">@cellTab.merge.mergeCells@
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize"
                                                                 id="unmergeCells" disabled="disabled">
                                                                @cellTab.merge.unmergeCells@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span id="groupCellType">
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.cellType.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="cellTypesList" data-name="cellTypes" id="cellTypes">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @cellTypes.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span>
                                                            <span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="cellTypeSettingContainer">
                                        <div id="celltype-button">
                                            <div class="group-item-divider"></div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-number insp-inline-row"
                                                             data-name="buttonCellTypeMarginTop">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.buttonCellType.values.marginTop@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="number" value="2">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-number insp-inline-row"
                                                             data-name="buttonCellTypeMarginRight">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.buttonCellType.values.marginRight@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="number" value="4">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-number insp-inline-row"
                                                             data-name="buttonCellTypeMarginBottom">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.buttonCellType.values.marginBottom@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="number" value="2">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-number insp-inline-row"
                                                             data-name="buttonCellTypeMarginLeft">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.buttonCellType.values.marginLeft@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="number" value="4">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="buttonCellTypeText">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.buttonCellType.values.text@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6 localize-value"
                                                                   type="text" value="@defaultTexts.buttonText@">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="buttonCellTypeBackColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.buttonCellType.values.backColor@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view "
                                                                         style="background-color: rgb(242, 242, 242);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="celltype-checkbox">
                                            <div class="group-item-divider"></div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="checkboxCellTypeCaption">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.checkBoxCellType.values.caption@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6 localize-value"
                                                                   type="text" value="@defaultTexts.checkCaption@">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="checkboxCellTypeTextTrue">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.checkBoxCellType.values.textTrue@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="checkboxCellTypeTextIndeterminate">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.checkBoxCellType.values.textIndeterminate@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="checkboxCellTypeTextFalse">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.checkBoxCellType.values.textFalse@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="checkboxCellTypeTextAlignList"
                                                             data-name="checkboxCellTypeTextAlign"
                                                             id="checkboxCellTypeTextAlignOption">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.checkBoxCellType.values.textAlign.title@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-checkbox insp-inline-row"
                                                             data-name="checkboxCellTypeIsThreeState">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @cellTypes.checkBoxCellType.values.isThreeState@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="celltype-combobox">
                                            <div class="group-item-divider"></div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="comboboxCellTypeEditorValueTypeList"
                                                             data-name="comboboxCellTypeEditorValueType"
                                                             id="comboboxCellTypeEditorValueTypeOption">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.comboBoxCellType.values.editorValueType.title@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="comboboxCellTypeItemsText">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.comboBoxCellType.values.itemsText@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6 localize-value"
                                                                   type="text" placeholder="(eg:123,456,789)"
                                                                   value="@defaultTexts.comboText@">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="comboboxCellTypeItemsValue">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.comboBoxCellType.values.itemsValue@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6 localize-value"
                                                                   type="text" placeholder="(eg:abc,def,ghi)"
                                                                   value="@defaultTexts.comboValue@">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="celltype-hyperlink">
                                            <div class="group-item-divider"></div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="hyperlinkCellTypeLinkColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.hyperlinkCellType.values.linkColor@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view "
                                                                         style="background-color: rgb(0, 102, 204);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="hyperlinkCellTypeVisitedLinkColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.hyperlinkCellType.values.visitedLinkColor@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view "
                                                                         style="background-color: rgb(51, 153, 255);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="hyperlinkCellTypeText">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.hyperlinkCellType.values.text@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6 localize-value"
                                                                   type="text" value="@defaultTexts.hyperlinkText@">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="hyperlinkCellTypeLinkToolTip">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @cellTypes.hyperlinkCellType.values.linkToolTip@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6 localize-value"
                                                                   type="text" value="@defaultTexts.hyperlinkToolTip@">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="setCellTypeContainer">
                                            <div class="group-item-divider"></div>
                                            <div class="insp-row insp-col-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setCellTypeBtn">@cellTypes.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.conditionalFormat.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div id="conditionalFormatSettingContainer">
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-dropdown-list insp-inline-row"
                                                         data-list-ref="conditionalFormatList"
                                                         data-name="conditionalFormat" id="conditionalFormatType">
                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                            @conditionalFormat.ruleTypes.title@
                                                        </div>
                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                            <div style="width: 100%; height: 100%">
                                                                <span class="display"></span><span class="caret"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="group-item-divider"></div>
                                            <div class="settingGroup">
                                                <div class="conditionalformat-content-style groupitem"
                                                     data-group="normal">
                                                    <div>
                                                        <div class="insp-row">
                                                            <span id="ruletext" class="dialog-content-title"></span>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="highlightCellsRulesList"
                                                                 data-name="ruleType" id="highlightCellsRule">
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="highlightCellsRulesOperatorList"
                                                                 data-name="comparisonOperator" id="ComparisonOperator">
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div class="insp-row">
                                                            <div class="insp-text insp-inline-row">
                                                                <input class="editor insp-inline-row-item insp-col-5"
                                                                       id="value1" type="text">
                                                                <div class="text insp-inline-row-item insp-col-2 center-align localize"
                                                                     id="andtext">@conditionalFormat.texts.and@
                                                                </div>
                                                                <input class="editor insp-inline-row-item insp-col-5"
                                                                       id="value2" type="text">
                                                            </div>
                                                            <div class="text insp-inline-row-item insp-col-12"
                                                                 id="formattext"></div>
                                                        </div>
                                                    </div>

                                                    <div id="formatSetting">
                                                        <div class="insp-row">
                                                            <span id="withtext" class="localize">@conditionalFormat.texts.formatStyle@</span>
                                                        </div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-color-picker insp-inline-row"
                                                                     data-name="formatForeColor">
                                                                    <div class="title insp-inline-row-item insp-col-6">
                                                                        <div class="insp-checkbox insp-inline-row"
                                                                             data-name="useFormatForeColor">
                                                                            <div class="button insp-inline-row-item checked"></div>
                                                                            <div class="text insp-inline-row-item localize">
                                                                                @conditionalFormat.formatSetting.formatUseForeColor@
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                                        <div style="width: 100%; height: 100%">
                                                                            <div class="color-view"
                                                                                 style="background-color: rgb(0, 128, 0);"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-color-picker insp-inline-row"
                                                                     data-name="formatBackColor">
                                                                    <div class="title insp-inline-row-item insp-col-6">
                                                                        <div class="insp-checkbox insp-inline-row"
                                                                             data-name="useFormatBackColor">
                                                                            <div class="button insp-inline-row-item checked"></div>
                                                                            <div class="text insp-inline-row-item localize">
                                                                                @conditionalFormat.formatSetting.formatUseBackColor@
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                                        <div style="width: 100%; height: 100%">
                                                                            <div class="color-view"
                                                                                 style="background-color: rgb(255, 0, 0);"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-color-picker insp-inline-row"
                                                                     data-name="formatBorderColor">
                                                                    <div class="title insp-inline-row-item insp-col-6">
                                                                        <div class="insp-checkbox insp-inline-row"
                                                                             data-name="useFormatBorder">
                                                                            <div class="button insp-inline-row-item"></div>
                                                                            <div class="text insp-inline-row-item localize">
                                                                                @conditionalFormat.formatSetting.formatUseBorder@
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                                        <div style="width: 100%; height: 100%">
                                                                            <div class="color-view"
                                                                                 style="background-color: rgb(255, 199, 206);"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div id="colorScale" class="dialog-content-notshow">
                                                        <div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <span class="groupheader localize">@conditionalFormat.ruleTypes.colorScales.labels.minimum@</span>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-dropdown-list insp-inline-row"
                                                                             data-list-ref="colorScaleMinTypeList"
                                                                             data-name="minType">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.type@
                                                                            </div>
                                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                                <div style="width: 100%; height: 100%">
                                                                                    <span class="display"></span><span
                                                                                        class="caret"></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-text insp-inline-row"
                                                                             data-name="minValue">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.value@
                                                                            </div>
                                                                            <input class="editor insp-inline-row-item insp-col-8"
                                                                                   type="text">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-color-picker insp-inline-row"
                                                                             data-name="minColor">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.color@
                                                                            </div>
                                                                            <div class="picker insp-inline-row-item insp-col-8">
                                                                                <div style="width: 100%; height: 100%">
                                                                                    <div class="color-view"
                                                                                         style="background-color: rgb(248, 105, 107);"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="midpoint">
                                                            <div>
                                                                <div class="insp-row">
                                                                    <span class="groupheader localize">@conditionalFormat.ruleTypes.colorScales.labels.midpoint@</span>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-dropdown-list insp-inline-row"
                                                                             data-list-ref="colorScaleMidTypeList"
                                                                             data-name="midType">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.type@
                                                                            </div>
                                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                                <div style="width: 100%; height: 100%">
                                                                                    <span class="display"></span><span
                                                                                        class="caret"></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-text insp-inline-row"
                                                                             data-name="midValue">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.value@
                                                                            </div>
                                                                            <input class="editor insp-inline-row-item insp-col-8"
                                                                                   type="text" value="50">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-color-picker insp-inline-row"
                                                                             data-name="midColor">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.color@
                                                                            </div>
                                                                            <div class="picker insp-inline-row-item insp-col-8">
                                                                                <div style="width: 100%; height: 100%">
                                                                                    <div class="color-view"
                                                                                         style="background-color: rgb(255, 235, 132);"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <span class="groupheader localize">@conditionalFormat.ruleTypes.colorScales.labels.maximum@</span>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-dropdown-list insp-inline-row"
                                                                             data-list-ref="colorScaleMaxTypeList"
                                                                             data-name="maxType">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.type@
                                                                            </div>
                                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                                <div style="width: 100%; height: 100%">
                                                                                    <span class="display"></span><span
                                                                                        class="caret"></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-text insp-inline-row"
                                                                             data-name="maxValue">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.value@
                                                                            </div>
                                                                            <input class="editor insp-inline-row-item insp-col-8"
                                                                                   type="text">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="insp-row">
                                                                    <div class="insp-col-offset-1">
                                                                        <div class="insp-color-picker insp-inline-row"
                                                                             data-name="maxColor">
                                                                            <div class="title insp-inline-row-item insp-col-4 localize">
                                                                                @conditionalFormat.ruleTypes.colorScales.labels.color@
                                                                            </div>
                                                                            <div class="picker insp-inline-row-item insp-col-8">
                                                                                <div style="width: 100%; height: 100%">
                                                                                    <div class="color-view"
                                                                                         style="background-color: rgb(99, 190, 123);"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="databar-content-style groupitem" data-group="databar">
                                                    <div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <span class="groupheader localize">@conditionalFormat.ruleTypes.dataBars.labels.minimum@</span>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="dataBarMinimumTypeList"
                                                                         data-name="minimumType">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.type@
                                                                        </div>
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-number insp-inline-row"
                                                                         data-name="minimumValue">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.value@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                                               type="number">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <span class="groupheader localize">@conditionalFormat.ruleTypes.dataBars.labels.maximum@</span>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="dataBarMaximumTypeList"
                                                                         data-name="maximumType">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.type@
                                                                        </div>
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-number insp-inline-row"
                                                                         data-name="maximumValue">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.value@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                                               type="number">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <span class="groupheader localize">@conditionalFormat.ruleTypes.dataBars.labels.appearance@</span>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-checkbox insp-inline-row"
                                                                         data-name="showBarOnly">
                                                                        <div class="button insp-inline-row-item"></div>
                                                                        <div class="text   insp-inline-row-item localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.showBarOnly@
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-color-picker insp-inline-row"
                                                                         data-name="gradientColor">
                                                                        <div class="title insp-inline-row-item insp-col-6">
                                                                            <div class="insp-checkbox insp-inline-row"
                                                                                 data-name="gradient">
                                                                                <div class="button insp-inline-row-item"></div>
                                                                                <div class="text   insp-inline-row-item localize">
                                                                                    @conditionalFormat.ruleTypes.dataBars.labels.useGradient@
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <div class="color-view"
                                                                                     style="background-color: rgb(99, 190, 123);"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-color-picker insp-inline-row"
                                                                         data-name="barBorderColor">
                                                                        <div class="title insp-inline-row-item insp-col-6">
                                                                            <div class="insp-checkbox insp-inline-row"
                                                                                 data-name="showBorder">
                                                                                <div class="button insp-inline-row-item"></div>
                                                                                <div class="text   insp-inline-row-item localize">
                                                                                    @conditionalFormat.ruleTypes.dataBars.labels.showBorder@
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <div class="color-view"
                                                                                     style="background-color: rgb(0, 0, 0);"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="dataBarDirectionList"
                                                                         data-name="dataBarDirection">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.barDirection@
                                                                        </div>
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-color-picker insp-inline-row"
                                                                         data-name="negativeFillColor">
                                                                        <div class="title insp-inline-row-item insp-col-6">
                                                                            <div class="insp-checkbox insp-inline-row"
                                                                                 data-name="useNegativeFillColor">
                                                                                <div class="button insp-inline-row-item"></div>
                                                                                <div class="text   insp-inline-row-item localize">
                                                                                    @conditionalFormat.ruleTypes.dataBars.labels.negativeFillColor@
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <div class="color-view"
                                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-color-picker insp-inline-row"
                                                                         data-name="negativeBorderColor">
                                                                        <div class="title insp-inline-row-item insp-col-6">
                                                                            <div class="insp-checkbox insp-inline-row"
                                                                                 data-name="useNegativeBorderColor">
                                                                                <div class="button insp-inline-row-item"></div>
                                                                                <div class="text   insp-inline-row-item localize">
                                                                                    @conditionalFormat.ruleTypes.dataBars.labels.negativeBorderColor@
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <div class="color-view"
                                                                                     style="background-color: rgb(0, 0, 0);"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <span class="groupheader localize">@conditionalFormat.ruleTypes.dataBars.labels.axis@</span>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="dataBarAxisPositionList"
                                                                         data-name="axisPosition">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.axisPosition@
                                                                        </div>
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div>
                                                            <div class="insp-row">
                                                                <div class="insp-col-offset-1">
                                                                    <div class="insp-color-picker insp-inline-row"
                                                                         data-name="barAxisColor">
                                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                                            @conditionalFormat.ruleTypes.dataBars.labels.axisColor@
                                                                        </div>
                                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <div class="color-view"
                                                                                     style="background-color: rgb(0, 0, 0);"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="iconset-content-style groupitem" data-group="iconset">
                                                    <div>
                                                        <div class="insp-row">
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="iconSetTypeList"
                                                                 data-name="iconSetType">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @conditionalFormat.ruleTypes.iconSets.labels.style@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span><span
                                                                            class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div class="insp-row">
                                                            <div class="insp-checkbox insp-inline-row"
                                                                 data-name="showIconOnly">
                                                                <div class="button insp-inline-row-item"></div>
                                                                <div class="text   insp-inline-row-item localize">
                                                                    @conditionalFormat.ruleTypes.iconSets.labels.showIconOnly@
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div class="insp-row">
                                                            <div class="insp-checkbox insp-inline-row"
                                                                 data-name="reverseIconOrder">
                                                                <div class="button insp-inline-row-item"></div>
                                                                <div class="text   insp-inline-row-item localize">
                                                                    @conditionalFormat.ruleTypes.iconSets.labels.reverseIconOrder@
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div class="insp-row">
                                                            <span class="localize">@conditionalFormat.texts.showIconWithRules@</span>
                                                        </div>
                                                    </div>

                                                    <div id="iconCriteriaSetting">
                                                        <div class="settinggroup">
                                                            <div class="insp-row">
                                                                <div class="insp-inline-row-item insp-col-3">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaOperatorList"
                                                                         data-name="iconSetCriteriaOperator1">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display">>=</span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <input class="editor insp-inline-row-item insp-col-12"
                                                                           type="number">
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaTypeList"
                                                                         data-name="iconSetCriteriaType1">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="settinggroup">
                                                            <div class="insp-row">
                                                                <div class="insp-inline-row-item insp-col-3">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaOperatorList"
                                                                         data-name="iconSetCriteriaOperator2">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display">>=</span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <input class="editor insp-inline-row-item insp-col-12"
                                                                           type="number">
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaTypeList"
                                                                         data-name="iconSetCriteriaType2">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="settinggroup">
                                                            <div class="insp-row">
                                                                <div class="insp-inline-row-item insp-col-3">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaOperatorList"
                                                                         data-name="iconSetCriteriaOperator3">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display">>=</span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <input class="editor insp-inline-row-item insp-col-12"
                                                                           type="number">
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaTypeList"
                                                                         data-name="iconSetCriteriaType3">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="settinggroup">
                                                            <div class="insp-row">
                                                                <div class="insp-inline-row-item insp-col-3">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaOperatorList"
                                                                         data-name="iconSetCriteriaOperator4">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display">>=</span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <input class="editor insp-inline-row-item insp-col-12"
                                                                           type="number">
                                                                </div>
                                                                <div class="insp-inline-row-item insp-col-4">
                                                                    <div class="insp-dropdown-list insp-inline-row"
                                                                         data-list-ref="iconSetCriteriaTypeList"
                                                                         data-name="iconSetCriteriaType4">
                                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-12">
                                                                            <div style="width: 100%; height: 100%">
                                                                                <span class="display"></span><span
                                                                                    class="caret"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="group-item-divider"></div>
                                            <div class="insp-row insp-col-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setConditionalFormat">@conditionalFormat.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@cellTab.protection.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" id="lockCells"
                                                     data-name="checkboxLockCell">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @cellTab.protection.lock@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div class="text insp-inline-row-item localize" id="protectSheetText">
                                                @cellTab.protection.sheetIsUnprotected@
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="tableTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group  expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@tableTab.tableStyle.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content" style="padding-right: 8px;">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="table-format-2013" id="tableStyles">
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.light.light1@">
                                                                <div data-name="light1">
                                                                    <div class="table-format-icon table-format-light1"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.light.light2@">
                                                                <div data-name="light2">
                                                                    <div class="table-format-icon table-format-light2"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.light.light3@">
                                                                <div data-name="light3">
                                                                    <div class="table-format-icon table-format-light3"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.light.light7@">
                                                                <div data-name="light7">
                                                                    <div class="table-format-icon table-format-light7"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.medium.medium1@">
                                                                <div data-name="medium1">
                                                                    <div class="table-format-icon table-format-medium1"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.medium.medium2@">
                                                                <div data-name="medium2">
                                                                    <div class="table-format-icon table-format-medium2"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.medium.medium3@">
                                                                <div data-name="medium3">
                                                                    <div class="table-format-icon table-format-medium3"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.medium.medium7@">
                                                                <div data-name="medium7">
                                                                    <div class="table-format-icon table-format-medium7"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.dark.dark1@">
                                                                <div data-name="dark1">
                                                                    <div class="table-format-icon table-format-dark1"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.dark.dark2@">
                                                                <div data-name="dark2">
                                                                    <div class="table-format-icon table-format-dark2"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.dark.dark3@">
                                                                <div data-name="dark3">
                                                                    <div class="table-format-icon table-format-dark3"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="table-format-item localize-tooltip"
                                                                 title="@tableTab.tableStyle.dark.dark7@">
                                                                <div data-name="dark7">
                                                                    <div class="table-format-icon table-format-dark7"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@tableTab.general.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row" data-name="tableName">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @tableTab.general.tableName@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@tableTab.options.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="tableFilterButton">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.filterButton@
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row insp-col-6"
                                                     data-name="tableHeaderRow">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.headerRow@
                                                    </div>
                                                </div>
                                                <div class="insp-checkbox insp-inline-row" data-name="tableTotalRow">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.totalRow@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row insp-col-6"
                                                     data-name="tableBandedRows">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.bandedRows@
                                                    </div>
                                                </div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="tableBandedColumns">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.bandedColumns@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row insp-col-6"
                                                     data-name="tableFirstColumn">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.firstColumn@
                                                    </div>
                                                </div>
                                                <div class="insp-checkbox insp-inline-row" data-name="tableLastColumn">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @tableTab.options.lastColumn@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="dataTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@dataTab.sort.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-buttons insp-inline-row">
                                                    <div class="insp-inline-row-item content">
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="sortAZ">
                                                                @dataTab.sort.asc@
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="sortZA">
                                                                @dataTab.sort.desc@
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="filter">
                                                                @dataTab.sort.filter@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@dataTab.group.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-buttons insp-inline-row">
                                                    <div class="insp-inline-row-item content">
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="group">
                                                                @dataTab.group.group@
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize" id="ungroup">
                                                                @dataTab.group.ungroup@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-buttons insp-inline-row">
                                                    <div class="insp-inline-row-item content">
                                                        <div class="item">
                                                            <div class="button btn btn-default localize"
                                                                 id="showDetail">@dataTab.group.showDetail@
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize"
                                                                 id="hideDetail">@dataTab.group.hideDetail@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showRowOutline">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @dataTab.group.showRowOutline@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showColumnOutline">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @dataTab.group.showColumnOutline@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@dataTab.dataValidation.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="highlightInvalidData" id="highlightInvalidData">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @dataTab.dataValidation.circleInvalidData@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <span class="groupheader localize">@dataTab.dataValidation.setting.title@</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="validatorTypeList"
                                                                 data-name="validatorType" id="validatorType">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @dataTab.dataValidation.setting.values.validatorType.title@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span>
                                                                        <span class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-checkbox insp-inline-row"
                                                                 data-name="ignoreBlank">
                                                                <div class="button insp-inline-row-item checked"></div>
                                                                <div class="text   insp-inline-row-item localize">
                                                                    @dataTab.dataValidation.setting.values.ignoreBlank@
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="group-item-divider"></div>
                                                <div id="validatorNumberType">
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-dropdown-list insp-inline-row"
                                                                     data-list-ref="validatorComparisonOperatorList"
                                                                     data-name="numberValidatorComparisonOperator"
                                                                     id="numberValidatorComparisonOperatorType">
                                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                                        @dataTab.dataValidation.setting.values.validatorComparisonOperator.title@
                                                                    </div>
                                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                        <div style="width: 100%; height: 100%">
                                                                            <span class="display"></span>
                                                                            <span class="caret"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="numberBetweenOperator">
                                                        <div>
                                                            <div class="insp-row">
                                                                <div>
                                                                    <div class="insp-text insp-inline-row"
                                                                         data-name="numberMinimum">
                                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                                            @dataTab.dataValidation.setting.values.number.minimum@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-8"
                                                                               type="text">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div>
                                                                    <div class="insp-text insp-inline-row"
                                                                         data-name="numberMaximum">
                                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                                            @dataTab.dataValidation.setting.values.number.maximum@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-8"
                                                                               type="text">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-text insp-inline-row"
                                                                     data-name="numberValue" id="numberValue">
                                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                                        @dataTab.dataValidation.setting.values.number.value@
                                                                    </div>
                                                                    <input class="editor insp-inline-row-item insp-col-8"
                                                                           type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-checkbox insp-inline-row"
                                                                     data-name="isInteger">
                                                                    <div class="button insp-inline-row-item"></div>
                                                                    <div class="text insp-inline-row-item localize">
                                                                        @dataTab.dataValidation.setting.values.number.isInteger@
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="validatorListType">
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-text insp-inline-row"
                                                                 data-name="listSource">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @dataTab.dataValidation.setting.values.source@
                                                                </div>
                                                                <input class="editor insp-inline-row-item insp-col-8"
                                                                       type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="validatorFormulaListType">
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-text insp-inline-row"
                                                                 data-name="formulaListFormula">
                                                                <div class="title insp-inline-row-item insp-col-4 localize">
                                                                    @dataTab.dataValidation.setting.values.formula@
                                                                </div>
                                                                <input class="editor insp-inline-row-item insp-col-8"
                                                                       type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="validatorDateType">
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-dropdown-list insp-inline-row"
                                                                     data-list-ref="validatorComparisonOperatorList"
                                                                     data-name="dateValidatorComparisonOperator"
                                                                     id="dateValidatorComparisonOperatorType">
                                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                                        @dataTab.dataValidation.setting.values.validatorComparisonOperator.title@
                                                                    </div>
                                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                        <div style="width: 100%; height: 100%">
                                                                            <span class="display"></span>
                                                                            <span class="caret"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="dateBetweenOperator">
                                                        <div>
                                                            <div class="insp-row">
                                                                <div>
                                                                    <div class="insp-text insp-inline-row"
                                                                         data-name="startDate">
                                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                                            @dataTab.dataValidation.setting.values.date.startDate@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-8"
                                                                               type="text">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div>
                                                                    <div class="insp-text insp-inline-row"
                                                                         data-name="endDate">
                                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                                            @dataTab.dataValidation.setting.values.date.endDate@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-8"
                                                                               type="text">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-text insp-inline-row"
                                                                     data-name="dateValue" id="dateValue">
                                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                                        @dataTab.dataValidation.setting.values.date.value@
                                                                    </div>
                                                                    <input class="editor insp-inline-row-item insp-col-8"
                                                                           type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-checkbox insp-inline-row"
                                                                     data-name="isTime">
                                                                    <div class="button insp-inline-row-item"></div>
                                                                    <div class="text insp-inline-row-item localize">
                                                                        @dataTab.dataValidation.setting.values.date.isTime@
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="validatorTextLengthType">
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-dropdown-list insp-inline-row"
                                                                     data-list-ref="validatorComparisonOperatorList"
                                                                     data-name="textLengthValidatorComparisonOperator"
                                                                     id="textLengthValidatorComparisonOperatorType">
                                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                                        @dataTab.dataValidation.setting.values.validatorComparisonOperator.title@
                                                                    </div>
                                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                                        <div style="width: 100%; height: 100%">
                                                                            <span class="display"></span>
                                                                            <span class="caret"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="textLengthBetweenOperator">
                                                        <div>
                                                            <div class="insp-row">
                                                                <div>
                                                                    <div class="insp-number insp-inline-row"
                                                                         data-name="textLengthMinimum">
                                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                                            @dataTab.dataValidation.setting.values.number.minimum@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-8"
                                                                               type="number">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="insp-row">
                                                                <div>
                                                                    <div class="insp-number insp-inline-row"
                                                                         data-name="textLengthMaximum">
                                                                        <div class="title insp-inline-row-item insp-col-4 localize">
                                                                            @dataTab.dataValidation.setting.values.number.maximum@
                                                                        </div>
                                                                        <input class="editor insp-inline-row-item insp-col-8"
                                                                               type="number">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="insp-row">
                                                            <div>
                                                                <div class="insp-number insp-inline-row"
                                                                     data-name="textLengthValue" id="textLengthValue">
                                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                                        @dataTab.dataValidation.setting.values.number.value@
                                                                    </div>
                                                                    <input class="editor insp-inline-row-item insp-col-8"
                                                                           type="number">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <span class="groupheader localize">@dataTab.dataValidation.inputMessage.title@</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-checkbox insp-inline-row"
                                                                 data-name="showInputMessage">
                                                                <div class="button insp-inline-row-item checked"></div>
                                                                <div class="text insp-inline-row-item localize">
                                                                    @dataTab.dataValidation.inputMessage.values.showInputMessage@
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="localize">
                                                                @dataTab.dataValidation.inputMessage.values.title@
                                                            </div>
                                                            <input id="dataValidationInputTitle"
                                                                   class="editor insp-inline-row-item insp-col-12"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="localize">
                                                                @dataTab.dataValidation.inputMessage.values.message@
                                                            </div>
                                                            <textarea rows="5" id="dataValidationInputMessage"
                                                                      class="insp-col-12"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <span class="groupheader localize">@dataTab.dataValidation.errorAlert.title@</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-dropdown-list insp-inline-row"
                                                                 data-list-ref="errorAlertList" data-name="errorAlert"
                                                                 id="errorAlertType">
                                                                <div class="title insp-inline-row-item insp-col-6 localize">
                                                                    @dataTab.dataValidation.errorAlert.values.alertType.title@
                                                                </div>
                                                                <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                    <div style="width: 100%; height: 100%">
                                                                        <span class="display"></span>
                                                                        <span class="caret"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="insp-checkbox insp-inline-row"
                                                                 data-name="showErrorAlert">
                                                                <div class="button insp-inline-row-item checked"></div>
                                                                <div class="text insp-inline-row-item localize">
                                                                    @dataTab.dataValidation.errorAlert.values.showErrorAlert@
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="localize">
                                                                @dataTab.dataValidation.errorAlert.values.title@
                                                            </div>
                                                            <input id="dataValidationErrorAlertTitle"
                                                                   class="editor insp-inline-row-item insp-col-12"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="insp-row">
                                                        <div>
                                                            <div class="localize">
                                                                @dataTab.dataValidation.errorAlert.values.message@
                                                            </div>
                                                            <textarea rows="5" id="dataValidationErrorAlertMessage"
                                                                      class="insp-col-12"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="group-item-divider"></div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-buttons insp-inline-row">
                                                    <div class="insp-inline-row-item content">
                                                        <div class="item">
                                                            <div class="button btn btn-default localize"
                                                                 id="clearDataValidatorSettings">
                                                                @dataTab.dataValidation.clearAllButton@
                                                            </div>
                                                        </div>
                                                        <div class="item"></div>
                                                        <div class="item">
                                                            <div class="button btn btn-default localize"
                                                                 id="setDataValidator">
                                                                @dataTab.dataValidation.setButton@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="commentTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@commentTab.general.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="commentDynamicSize">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @commentTab.general.dynamicSize@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="commentDynamicMove">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @commentTab.general.dynamicMove@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="commentLockText">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @commentTab.general.lockText@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="commentShowShadow">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @commentTab.general.showShadow@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@commentTab.font.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontFamilyList" data-name="commentFontFamily">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.font.fontFamily@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">

                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display">Arial</span><span
                                                                class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontSizeList" data-name="commentFontSize">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.font.fontSize@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">

                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display">9</span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontStyleList" data-name="commentFontStyle">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.font.fontStyle.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontWeightList" data-name="commentFontWeight">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.font.fontWeight.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-inline-row" data-name="commentTextDecoration">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.font.textDecoration.title@
                                                    </div>
                                                    <div class="insp-button-group insp-inline-row-item insp-col-8">
                                                        <div class="group-container insp-inline-row-item btn-group btn-group-xs btn-group-justified insp-col-12">
                                                            <span class="btn btn-default font-underline localize-tooltip"
                                                                  data-name="comment-underline" data-value="1"
                                                                  title="Underline text.">U</span>
                                                            <span class="btn btn-default font-overline localize-tooltip"
                                                                  data-name="comment-overline" data-value="4"
                                                                  title="Overline text.">O</span>
                                                            <span class="btn btn-default font-strikethrough localize-tooltip"
                                                                  data-name="comment-strikethrough" data-value="2"
                                                                  title="Strikethrough text.">S</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@commentTab.border.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="commentBorderWidth">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.border.width@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="borderStyleList" data-name="commentBorderStyle">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.border.style.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="commentBorderColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.border.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@commentTab.appearance.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="horizontalAlignList"
                                                     data-name="commentHorizontalAlign">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.appearance.horizontalAlign.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display">left</span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="displayModeList" data-name="commentDisplayMode">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.appearance.displayMode.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="commentForeColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.appearance.foreColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="commentBackColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.appearance.backColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(255, 255, 255);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row" data-name="commentPadding">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.appearance.padding@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="commentOpacity">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @commentTab.appearance.opacity@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-7" type="number">
                                                    <div class="title insp-inline-row-item insp-col-1 center-align">%
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="pictureTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@pictureTab.general.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox" data-name="pictureMoveAndSize">
                                                    <div class="insp-row">
                                                        <div class="radiobutton insp-inline-row-item checked"
                                                             data-name="picture-move-size"></div>
                                                        <div class="text insp-inline-row-item localize"
                                                             data-name="picture-move-size">
                                                            @pictureTab.general.moveAndSize@
                                                        </div>
                                                    </div>
                                                    <div class="insp-row">
                                                        <div class="radiobutton insp-inline-row-item"
                                                             data-name="picture-move-nosize"></div>
                                                        <div class="text insp-inline-row-item localize"
                                                             data-name="picture-move-nosize">
                                                            @pictureTab.general.moveAndNoSize@
                                                        </div>
                                                    </div>
                                                    <div class="insp-row">
                                                        <div class="radiobutton insp-inline-row-item"
                                                             data-name="picture-nomove-size"></div>
                                                        <div class="text insp-inline-row-item localize"
                                                             data-name="picture-nomove-size">
                                                            @pictureTab.general.noMoveAndSize@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="pictureFixedPosition">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @pictureTab.general.fixedPosition@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@pictureTab.border.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="pictureBorderWidth">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @pictureTab.border.width@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row"
                                                     data-name="pictureBorderRadius">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @pictureTab.border.radius@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-8" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="pictureBorderStyleList"
                                                     data-name="pictureBorderStyle">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @pictureTab.border.style.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">

                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="pictureBorderColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @pictureTab.border.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(0, 0, 0);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@pictureTab.appearance.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="pictureStretchList" data-name="pictureStretch">
                                                    <div class="title insp-inline-row-item insp-col-4 localize">
                                                        @pictureTab.appearance.stretch.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-8">

                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="pictureBackColor">
                                                    <div class="title  insp-inline-row-item insp-col-4 localize">
                                                        @pictureTab.appearance.backColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-8">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(255, 255, 255);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="sparklineExTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout" id="pieSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.pieSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="pieSparklinePercentage">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.pieSparkline.values.percentage@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="pieSparklineColorContainer">
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setPieSparkline">
                                            @sparklineExTab.pieSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="areaSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.areaSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="areaSparklinePoints">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.points@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="areaSparklineMinimumValue">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.minimumValue@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6 not-min-zero"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="areaSparklineMaximumValue">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.maximumValue@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6 not-min-zero"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="areaSparklineLine1">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.line1@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6 not-min-zero"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="areaSparklineLine2">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.line2@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6 not-min-zero"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="areaSparklinePositiveColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.positiveColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(120, 120, 120);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="areaSparklineNegativeColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.areaSparkline.values.negativeColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(203, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setAreaSparkline">
                                            @sparklineExTab.areaSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="boxplotSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.boxplotSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="boxplotSparklinePoints">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.points@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-dropdown-list insp-inline-row"
                                                         data-list-ref="boxplotClassList" data-name="boxplotClassType"
                                                         id="boxplotClassType">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.boxplotClass@
                                                        </div>
                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <span class="display"></span>
                                                                <span class="caret"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="boxplotSparklineScaleStart">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.scaleStart@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="boxplotSparklineScaleEnd">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.scaleEnd@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="boxplotSparklineAcceptableStart">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.acceptableStart@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="boxplotSparklineAcceptableEnd">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.acceptableEnd@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="boxplotSparklineColorScheme">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.colorScheme@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(210, 210, 210);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-dropdown-list insp-inline-row"
                                                         data-list-ref="boxplotSparklineStyleList"
                                                         data-name="boxplotSparklineStyleType">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.boxplotSparkline.values.style@
                                                        </div>
                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <span class="display"></span>
                                                                <span class="caret"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="boxplotSparklineShowAverage">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.boxplotSparkline.values.showAverage@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="boxplotSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.boxplotSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setBoxPlotSparkline">
                                            @sparklineExTab.boxplotSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="bulletSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.bulletSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineMeasure">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.measure@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineTarget">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.target@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineMaxi">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.maxi@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineForecast">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.forecast@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineGood">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.good@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineBad">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.bad@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="bulletSparklineTickUnit">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.tickunit@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="bulletSparklineColorScheme">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.bulletSparkline.values.colorScheme@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(146, 208, 80);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="bulletSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.bulletSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setBulletSparkline">
                                            @sparklineExTab.bulletSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="cascadeSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.cascadeSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="cascadeSparklinePointsRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.pointsRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="cascadeSparklinePointIndex">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.pointIndex@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="cascadeSparklineLabelsRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.labelsRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="cascadeSparklineMinimum">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.minimum@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="cascadeSparklineMaximum">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.maximum@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="cascadeSparklinePositiveColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.positiveColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(140, 191, 100);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="cascadeSparklineNegativeColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.cascadeSparkline.values.negativeColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(214, 96, 77);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="cascadeSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.cascadeSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setCascadeSparkline">
                                            @sparklineExTab.cascadeSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="compatibleSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.compatibleSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <span class="groupheader localize">@sparklineExTab.compatibleSparkline.values.data.title@</span>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="compatibleSparklineData">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.data.title@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="orientationList"
                                                             data-name="dataOrientationType">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.data.dataOrientation@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="compatibleSparklineDateAxisData">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.data.dateAxisData@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="orientationList"
                                                             data-name="dateAxisOrientationType">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.data.dateAxisOrientation@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="emptyCellDisplayTypeList"
                                                             data-name="emptyCellDisplayType" id="emptyCellDisplayType">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.data.displayEmptyCellAs@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-checkbox insp-inline-row"
                                                             data-name="showDataInHiddenRowOrColumn">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.data.showDataInHiddenRowOrColumn@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <span class="groupheader localize">@sparklineExTab.compatibleSparkline.values.show.title@</span>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-checkbox insp-inline-row insp-col-6"
                                                             data-name="compatibleSparklineShowFirst">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.show.showFirst@
                                                            </div>
                                                        </div>
                                                        <div class="insp-checkbox insp-inline-row"
                                                             data-name="compatibleSparklineShowLast">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.show.showLast@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-checkbox insp-inline-row insp-col-6"
                                                             data-name="compatibleSparklineShowHigh">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.show.showHigh@
                                                            </div>
                                                        </div>
                                                        <div class="insp-checkbox insp-inline-row"
                                                             data-name="compatibleSparklineShowLow">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.show.showLow@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-checkbox insp-inline-row insp-col-6"
                                                             data-name="compatibleSparklineShowNegative">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.show.showNegative@
                                                            </div>
                                                        </div>
                                                        <div class="insp-checkbox insp-inline-row"
                                                             data-name="compatibleSparklineShowMarkers">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.show.showMarkers@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <span class="groupheader localize">@sparklineExTab.compatibleSparkline.values.group.title@</span>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="axisTypeList" data-name="minAxisType">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.group.minAxisType@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row" data-name="manualMin">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.group.manualMin@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-dropdown-list insp-inline-row"
                                                             data-list-ref="axisTypeList" data-name="maxAxisType">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.group.maxAxisType@
                                                            </div>
                                                            <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <span class="display"></span>
                                                                    <span class="caret"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row" data-name="manualMax">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.group.manualMax@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-checkbox insp-inline-row insp-col-6"
                                                             data-name="rightToLeft">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.group.rightToLeft@
                                                            </div>
                                                        </div>
                                                        <div class="insp-checkbox insp-inline-row"
                                                             data-name="displayXAxis">
                                                            <div class="button insp-inline-row-item"></div>
                                                            <div class="text insp-inline-row-item localize">
                                                                @sparklineExTab.compatibleSparkline.values.group.displayXAxis@
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <span class="groupheader localize">@sparklineExTab.compatibleSparkline.values.style.title@</span>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineNegativeColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.negative@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(165, 42, 42);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineMarkersColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.markers@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(36, 64, 98);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineAxisColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.axis@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(0, 0, 0);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineSeriesColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.series@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(36, 64, 98);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineHighMarkerColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.highMarker@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(0, 0, 255);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineLowMarkerColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.lowMarker@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(0, 0, 255);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineFirstMarkerColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.firstMarker@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(149, 179, 215);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-color-picker insp-inline-row"
                                                             data-name="compatibleSparklineLastMarkerColor">
                                                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.lastMarker@
                                                            </div>
                                                            <div class="picker insp-inline-row-item insp-col-6">
                                                                <div style="width: 100%; height: 100%">
                                                                    <div class="color-view"
                                                                         style="background-color: rgb(149, 179, 215);"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="insp-row">
                                                    <div>
                                                        <div class="insp-text insp-inline-row"
                                                             data-name="compatibleSparklineLastLineWeight">
                                                            <div class="title insp-inline-row-item insp-col-6 localize">
                                                                @sparklineExTab.compatibleSparkline.values.style.lineWeight@
                                                            </div>
                                                            <input class="editor insp-inline-row-item insp-col-6"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize"
                                             id="setCompatibleSparkline">
                                            @sparklineExTab.compatibleSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="hbarSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.hbarSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="hbarSparklineValue">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.hbarSparkline.values.value@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="hbarSparklineColorScheme">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.hbarSparkline.values.colorScheme@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(128, 128, 128);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setHbarSparkline">
                                            @sparklineExTab.hbarSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="vbarSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.vbarSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="vbarSparklineValue">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.vbarSparkline.values.value@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="vbarSparklineColorScheme">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.vbarSparkline.values.colorScheme@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(128, 128, 128);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setVbarSparkline">
                                            @sparklineExTab.vbarSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="paretoSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.paretoSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="paretoSparklinePoints">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.points@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="paretoSparklinePointIndex">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.pointIndex@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="paretoSparklineColorRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.colorRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="paretoSparklineTarget">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.target@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="paretoSparklineTarget2">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.target2@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="paretoSparklineHighlightPosition">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.highlightPosition@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-dropdown-list insp-inline-row"
                                                         data-list-ref="paretoLabelList" data-name="paretoLabelType">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.paretoSparkline.values.label@
                                                        </div>
                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <span class="display"></span>
                                                                <span class="caret"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="paretoSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.paretoSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setParetoSparkline">
                                            @sparklineExTab.paretoSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="scatterSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.scatterSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklinePoints1">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.points1@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklinePoints2">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.points2@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineMinX">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.minX@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineMaxX">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.maxX@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineMinY">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.minY@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineMaxY">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.maxY@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineHLine">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.hLine@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineVLine">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.vLine@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineXMinZone">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.xMinZone@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineXMaxZone">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.xMaxZone@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineYMinZone">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.yMinZone@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="scatterSparklineYMaxZone">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.yMaxZone@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="scatterSparklineColor1">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.color1@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(150, 150, 150);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="scatterSparklineColor2">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.scatterSparkline.values.color2@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(203, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="scatterSparklineTags">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.scatterSparkline.values.tags@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="scatterSparklineDrawSymbol">
                                                        <div class="button insp-inline-row-item checked"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.scatterSparkline.values.drawSymbol@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="scatterSparklineDrawLines">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.scatterSparkline.values.drawLines@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="scatterSparklineDashLine">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.scatterSparkline.values.dashLine@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setScatterSparkline">
                                            @sparklineExTab.scatterSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="spreadSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.spreadSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="spreadSparklinePoints">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.spreadSparkline.values.points@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="spreadSparklineScaleStart">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.spreadSparkline.values.scaleStart@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="spreadSparklineScaleEnd">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.spreadSparkline.values.scaleEnd@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-dropdown-list insp-inline-row"
                                                         data-list-ref="spreadSparklineStyleList"
                                                         data-name="spreadSparklineStyleType">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.spreadSparkline.values.style@
                                                        </div>
                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <span class="display"></span>
                                                                <span class="caret"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="spreadSparklineColorScheme">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.spreadSparkline.values.colorScheme@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(100, 100, 100);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="spreadSparklineShowAverage">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.spreadSparkline.values.showAverage@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="spreadSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.spreadSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setSpreadSparkline">
                                            @sparklineExTab.spreadSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="stackedSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.stackedSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="stackedSparklinePoints">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.points@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="stackedSparklineColorRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.colorRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="stackedSparklineLabelRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.labelRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineMaximum">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.maximum@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineTargetRed">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.targetRed@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineTargetGreen">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.targetGreen@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineTargetBlue">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.targetBlue@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineTargetYellow">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.targetYellow@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="stackedSparklineColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.color@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(100, 100, 100);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineHighlightPosition">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.highlightPosition@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-dropdown-list insp-inline-row"
                                                         data-list-ref="textOrientationList"
                                                         data-name="stackedSparklineTextOrientation">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.textOrientation@
                                                        </div>
                                                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <span class="display"></span>
                                                                <span class="caret"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-number insp-inline-row"
                                                         data-name="stackedSparklineTextSize">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.stackedSparkline.values.textSize@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-5"
                                                               type="number">
                                                        <div class="title insp-inline-row-item insp-col-1 center-align">
                                                            px
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="stackedSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.stackedSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setStackedSparkline">
                                            @sparklineExTab.stackedSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="variSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.variSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="variSparklineVariance">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.variance@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="variSparklineReference">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.reference@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="variSparklineMini">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.mini@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="variSparklineMaxi">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.maxi@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="variSparklineMark">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.mark@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="variSparklineTickUnit">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.tickunit@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="variSparklineColorPositive">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.colorPositive@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(0, 128, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="variSparklineColorNegative">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.variSparkline.values.colorNegative@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="variSparklineLegend">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.variSparkline.values.legend@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-checkbox insp-inline-row"
                                                         data-name="variSparklineVertical">
                                                        <div class="button insp-inline-row-item"></div>
                                                        <div class="text insp-inline-row-item localize">
                                                            @sparklineExTab.variSparkline.values.vertical@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setVariSparkline">
                                            @sparklineExTab.variSparkline.values.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="yearSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.yearSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="yearSparklineData">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.data@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="yearSparklineYear">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.year@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="yearSparklineEmptyColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.emptyColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(0, 128, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="yearSparklineStartColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.startColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="yearSparklineMiddleColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.middleColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="yearSparklineEndColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.endColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="yearSparklineColorRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.colorRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setYearSparkline">
                                            @sparklineExTab.monthYear.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout" id="monthSparklineSetting">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@sparklineExTab.monthSparkline.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="monthSparklineData">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.data@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="monthSparklineYear">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.year@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="monthSparklineMonth">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.month@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="monthSparklineEmptyColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.emptyColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(0, 128, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="monthSparklineStartColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.startColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="monthSparklineMiddleColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.middleColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-color-picker insp-inline-row"
                                                         data-name="monthSparklineEndColor">
                                                        <div class="title  insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.endColor@
                                                        </div>
                                                        <div class="picker insp-inline-row-item insp-col-6">
                                                            <div style="width: 100%; height: 100%">
                                                                <div class="color-view"
                                                                     style="background-color: rgb(255, 0, 0);"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="insp-row">
                                                <div>
                                                    <div class="insp-text insp-inline-row"
                                                         data-name="monthSparklineColorRange">
                                                        <div class="title insp-inline-row-item insp-col-6 localize">
                                                            @sparklineExTab.monthYear.colorRange@
                                                        </div>
                                                        <input class="editor insp-inline-row-item insp-col-6"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div class="insp-row col-md-offset-8">
                                        <div class="button btn btn-default group-set localize" id="setMonthSparkline">
                                            @sparklineExTab.monthYear.setButton@
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="chartExTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group expanded">
                                <div class="insp-group-title">
                                                <span>
                                                    <span class="group-state fa"></span>
                                                <span class="groupheader localize">@chartExTab.values.chartTitle.title@</span>
                                                </span>
                                </div>

                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartTitletext">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.chartTitle.text@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontSizeList" data-name="chartTitleFontSize">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.fontSize@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span
                                                                class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontFamilyList" data-name="chartTitleFontFamily">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.fontFamily@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartTitleColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "
                                                                 style="background-color: rgb(160, 160, 160);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="group-item-divider"></div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="insp-row col-md-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setChartTitle">
                                                    @chartExTab.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="insp-group-layout" id="chartSeriesGroup">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                                <span>
                                                    <span class="group-state fa"></span>
                                                <span class="groupheader localize">@chartExTab.values.series.title@</span>
                                                </span>
                                </div>

                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartSeriesIndexContner"
                                                     data-name="chartSeriesIndexValue">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.series.seriesIndex@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span>
                                                            <span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartSeriesGroupContner"
                                                     data-name="chartSeriesGroupValue">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.series.axisGroup@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span>
                                                            <span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row" id="chartSeriesColor">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartSeriesColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.chartArea.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row" id="chartSeriesLineWidth">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartSeriesLineWidth">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.series.lineWidth@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row" id="chartSeriesLineColor">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartSeriesLineColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.lineColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="group-item-divider"></div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="insp-row col-md-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setChartSeries">
                                                    @chartExTab.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                                <span>
                                                    <span class="group-state fa"></span>
                                                <span class="groupheader localize">@chartExTab.values.chartArea.title@</span>
                                                </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAreaBackColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.chartArea.backColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAreaColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.chartArea.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view "></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontSizeList" data-name="chartAreaFontSize">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.fontSize@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span
                                                                class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontFamilyList" data-name="chartAreaFontFamily">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.fontFamily@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="group-item-divider"></div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="insp-row col-md-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setChartArea">
                                                    @chartExTab.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                            </div>
                        </div>

                        <div class="insp-group-layout" id="chartLegendGroup">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                                <span>
                                                    <span class="group-state fa"></span>
                                                <span class="groupheader localize">@chartExTab.values.legend.title@</span>
                                                </span>
                                </div>

                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartLegendPositionList"
                                                     data-name="chartLegendPosition">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.legend.position.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showChartLegend">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.legend.showLegend@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="group-item-divider"></div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="insp-row col-md-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setChartLegend">
                                                    @chartExTab.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="insp-group-layout" id="chartDataLabelsGroup">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                                <span>
                                                    <span class="group-state fa"></span>
                                                <span class="groupheader localize">@chartExTab.values.dataLabels.title@</span>
                                                </span>
                                </div>

                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartDataLabelList"
                                                     data-name="chartDataLabelPosition"
                                                     id="chartDataLabelPositionDropDown">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.dataLabels.position.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="dataLabelsColor"
                                                     id="dataLabelsColorCon">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.dataLabels.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(165, 42, 42);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showDataLabelsValue">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.dataLabels.showValue@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showDataLabelsSeriesName">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.dataLabels.showSeriesName@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showDataLabelsCategoryName">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.dataLabels.showCategoryName@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="group-item-divider"></div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="insp-row col-md-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setChartDataLabels">
                                                    @chartExTab.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="insp-group-layout" id="chartAxesGroup">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                                <span>
                                                    <span class="group-state fa"></span>
                                                <span class="groupheader localize">@chartExTab.values.axes.title@</span>
                                                </span>
                                </div>

                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartAxisTypeList"
                                                     data-name="chartAxieType">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.axisType.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAixsColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.color@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(165, 42, 42);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontSizeList" data-name="chartAxesFontSize">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.fontSize@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span
                                                                class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontFamilyList" data-name="chartAxesFontFamily">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.fontFamily@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartAixsTitletext">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.aixsTitle@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontSizeList"
                                                     data-name="chartAxesTitleFontSize">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.titleFontSize@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span
                                                                class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="fontFamilyList"
                                                     data-name="chartAxesTitleFontFamily">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.titleFontFamily@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAixsTitleColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.titleColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(165, 42, 42);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAixsLineColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.lineColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(165, 42, 42);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartAixsLineWidth">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.lineWidth@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartAixsMajorUnit">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.majorUnit@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartAixsMinorUnit">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.minorUnit@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartAixsMajorGridlineWidth">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.majorGridlineWidth@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAixsMajorGridlineColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.majorGridlineColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(165, 42, 42);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row"
                                                     data-name="chartAixsMinorMinorGridlineWidth">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.minorGridlineWidth@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6"
                                                           type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-color-picker insp-inline-row"
                                                     data-name="chartAixsMinorGridlineColor">
                                                    <div class="title  insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.minorGridlineColor@
                                                    </div>
                                                    <div class="picker insp-inline-row-item insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <div class="color-view"
                                                                 style="background-color: rgb(165, 42, 42);"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartTickPositionList"
                                                     data-name="chartMajorTickPosition">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.TickPosition.majorTitle@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartTickPositionList"
                                                     data-name="chartMinorTickPosition">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.TickPosition.minorTitle@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="chartTickLabelPositionList"
                                                     data-name="chartTickLabelPosition">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @chartExTab.values.axes.tickLabelPosition.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span><span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showAxis">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.axes.showAxis@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showMajorGridline">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.axes.showMajorGridline@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="showMinorGridline">
                                                    <div class="button insp-inline-row-item"></div>
                                                    <div class="text   insp-inline-row-item localize">
                                                        @chartExTab.values.axes.showMinorGridline@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="insp-row">
                                            <div class="group-item-divider"></div>
                                        </div>
                                        <div class="insp-row">
                                            <div class="insp-row col-md-offset-8">
                                                <div class="button btn btn-default group-set localize"
                                                     id="setChartAxes">
                                                    @chartExTab.setButton@
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="slicerTab">
                    <div class="insp-pane">
                        <div class="insp-group-layout">
                            <div class="insp-group  expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@slicerTab.slicerStyle.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="slicer-format-2013" id="slicerStyles">
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.light.light1@">
                                                                <div data-name="light1">
                                                                    <div class="slicer-format-icon slicer-format-light1"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.light.light2@">
                                                                <div data-name="light2">
                                                                    <div class="slicer-format-icon slicer-format-light2"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.light.light3@">
                                                                <div data-name="light3">
                                                                    <div class="slicer-format-icon slicer-format-light3"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.light.light5@">
                                                                <div data-name="light5">
                                                                    <div class="slicer-format-icon slicer-format-light5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.light.light6@">
                                                                <div data-name="light6">
                                                                    <div class="slicer-format-icon slicer-format-light6"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.dark.dark1@">
                                                                <div data-name="dark1">
                                                                    <div class="slicer-format-icon slicer-format-dark1"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.dark.dark2@">
                                                                <div data-name="dark2">
                                                                    <div class="slicer-format-icon slicer-format-dark2"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.dark.dark3@">
                                                                <div data-name="dark3">
                                                                    <div class="slicer-format-icon slicer-format-dark3"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.dark.dark5@">
                                                                <div data-name="dark5">
                                                                    <div class="slicer-format-icon slicer-format-dark5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <div class="slicer-format-item localize-tooltip"
                                                                 title="@slicerTab.slicerStyle.dark.dark6@">
                                                                <div data-name="dark6">
                                                                    <div class="slicer-format-icon slicer-format-dark6"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group  expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@slicerTab.general.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row" data-name="slicerName">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @slicerTab.general.name@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-text insp-inline-row" data-name="slicerCaptionName">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @slicerTab.general.captionName@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-dropdown-list insp-inline-row"
                                                     data-list-ref="slicerItemSortingList"
                                                     data-name="slicerItemSorting">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @slicerTab.general.itemSorting.title@
                                                    </div>
                                                    <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                                                        <div style="width: 100%; height: 100%">
                                                            <span class="display"></span>
                                                            <span class="caret"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row"
                                                     data-name="displaySlicerHeader">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @slicerTab.general.displayHeader@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group  expanded">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@slicerTab.layout.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="slicerColumnNumber">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @slicerTab.layout.columnNumber@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="slicerButtonHeight">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @slicerTab.layout.buttonHeight@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-number insp-inline-row" data-name="slicerButtonWidth">
                                                    <div class="title insp-inline-row-item insp-col-6 localize">
                                                        @slicerTab.layout.buttonWidth@
                                                    </div>
                                                    <input class="editor insp-inline-row-item insp-col-6" type="number">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="insp-group-layout">
                            <div class="insp-group">
                                <div class="insp-group-title">
                                        <span>
                                            <span class="group-state fa"></span>
                                        <span class="group-text localize">@slicerTab.property.title@</span>
                                        </span>
                                </div>
                                <div class="insp-group-content">
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox" data-name="slicerMoveAndSize">
                                                    <div class="insp-row">
                                                        <div class="radiobutton insp-inline-row-item checked"
                                                             data-name="slicer-move-size"></div>
                                                        <div class="text insp-inline-row-item localize"
                                                             data-name="slicer-move-size">
                                                            @slicerTab.property.moveAndSize@
                                                        </div>
                                                    </div>
                                                    <div class="insp-row">
                                                        <div class="radiobutton insp-inline-row-item"
                                                             data-name="slicer-move-nosize"></div>
                                                        <div class="text insp-inline-row-item localize"
                                                             data-name="slicer-move-nosize">
                                                            @slicerTab.property.moveAndNoSize@
                                                        </div>
                                                    </div>
                                                    <div class="insp-row">
                                                        <div class="radiobutton insp-inline-row-item"
                                                             data-name="slicer-nomove-size"></div>
                                                        <div class="text insp-inline-row-item localize"
                                                             data-name="slicer-nomove-size">
                                                            @slicerTab.property.noMoveAndSize@
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="group-item-divider"></div>
                                    <div>
                                        <div class="insp-row">
                                            <div>
                                                <div class="insp-checkbox insp-inline-row" data-name="lockSlicer">
                                                    <div class="button insp-inline-row-item checked"></div>
                                                    <div class="text insp-inline-row-item localize">
                                                        @slicerTab.property.locked@
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="setfontstyle" style="display: none"></div>
<div id="colorpicker" class="colorpicker" style="left: 983.75px; top: 88px;">
    <div class="cp-pointer right" style="left: 246px; top: 222px;"></div>
    <div class="cp-container">
        <div class="tab-content">
            <div id="theme-color" class="tab-pane active">
                <div class="color-cells-container">
                    <h2 class="color-group-header localize">@colorPicker.themeColors@</h2>
                    <ul id="default-theme-color">
                    </ul>
                </div>
                <div class="colorpicker-standard-color">
                    <h2 class="color-group-header localize">@colorPicker.standardColors@</h2>
                    <div class="cp-indent">
                        <ul>
                            <li class="color-cell standard-color-cell" style="background-color: rgb(192, 0, 0);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(255, 0, 0);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(255, 192, 0);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(255, 255, 0);"></li>

                            <li class="color-cell standard-color-cell"
                                style="background-color: rgb(146, 208, 80);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(0, 176, 80);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(0, 176, 240);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(0, 112, 192);"></li>

                            <li class="color-cell standard-color-cell" style="background-color: rgb(0, 32, 96);"></li>

                            <li class="color-cell standard-color-cell"
                                style="background-color: rgb(112, 48, 160);"></li>

                        </ul>
                    </div>
                </div>
                <div class="nofill-color">
                    <ul>
                        <li class="color-cell auto-color-cell localize">@colorPicker.noFills@</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="insp-menu" role="menu" id="conditionalFormatList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="highlight-cells-rules">
            @conditionalFormat.ruleTypes.highlightCells.title@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="top-bottom-rules">@conditionalFormat.ruleTypes.topBottom.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="data-bars">@conditionalFormat.ruleTypes.dataBars.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="color-scales">@conditionalFormat.ruleTypes.colorScales.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="icon-sets">@conditionalFormat.ruleTypes.iconSets.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item divider">
        <div class="image"></div>
        <div class="text"></div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image nocheck"></div>
        <div class="text localize" data-value="remove-conditional-formats">
            @conditionalFormat.ruleTypes.removeConditionalFormat.title@
        </div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="insp-menu" role="menu" id="highlightCellsRulesList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.highlightCells.values.cellValue@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.highlightCells.values.specificText@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.ruleTypes.highlightCells.values.dateOccurring@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">@conditionalFormat.ruleTypes.highlightCells.values.unique@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.ruleTypes.highlightCells.values.duplicate@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="topBottomRulesList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.topBottom.values.top10@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.ruleTypes.topBottom.values.average@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="colorScaleList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="8">@conditionalFormat.ruleTypes.colorScales.values.twoColors@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="9">@conditionalFormat.ruleTypes.colorScales.values.threeColors@</div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="insp-menu" role="menu" id="colorScaleMinTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.colorScales.valueTypes.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.colorScales.valueTypes.lowestValue@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.ruleTypes.colorScales.valueTypes.percent@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.colorScales.valueTypes.percentile@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.ruleTypes.colorScales.valueTypes.formula@</div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="insp-menu" role="menu" id="colorScaleMidTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.colorScales.valueTypes.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.ruleTypes.colorScales.valueTypes.percent@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.colorScales.valueTypes.percentile@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.ruleTypes.colorScales.valueTypes.formula@</div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="insp-menu" role="menu" id="colorScaleMaxTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.colorScales.valueTypes.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.ruleTypes.colorScales.valueTypes.highestValue@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.ruleTypes.colorScales.valueTypes.percent@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.colorScales.valueTypes.percentile@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.ruleTypes.colorScales.valueTypes.formula@</div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="insp-menu" role="menu" id="dataBarMinimumTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.dataBars.valueTypes.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.dataBars.valueTypes.lowestValue@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.ruleTypes.dataBars.valueTypes.percent@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.dataBars.valueTypes.percentile@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">@conditionalFormat.ruleTypes.dataBars.valueTypes.automin@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.ruleTypes.dataBars.valueTypes.formula@</div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="insp-menu" role="menu" id="dataBarMaximumTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.dataBars.valueTypes.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.ruleTypes.dataBars.valueTypes.highestValue@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.ruleTypes.dataBars.valueTypes.percent@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.dataBars.valueTypes.percentile@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.ruleTypes.dataBars.valueTypes.formula@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.ruleTypes.dataBars.valueTypes.automax@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="dataBarDirectionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.dataBars.directions.leftToRight@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.dataBars.directions.rightToLeft@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="dataBarAxisPositionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.dataBars.axisPositions.automatic@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.dataBars.axisPositions.cellMidPoint@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.ruleTypes.dataBars.axisPositions.none@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="iconSetTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.ruleTypes.iconSets.types.threeArrowsColored@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.iconSets.types.threeArrowsGray@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.ruleTypes.iconSets.types.threeTriangles@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.ruleTypes.iconSets.types.threeStars@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.iconSets.types.threeFlags@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">
            @conditionalFormat.ruleTypes.iconSets.types.threeTrafficLightsUnrimmed@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">
            @conditionalFormat.ruleTypes.iconSets.types.threeTrafficLightsRimmed@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.ruleTypes.iconSets.types.threeSigns@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="8">@conditionalFormat.ruleTypes.iconSets.types.threeSymbolsCircled@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="9">@conditionalFormat.ruleTypes.iconSets.types.threeSymbolsUncircled@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="10">@conditionalFormat.ruleTypes.iconSets.types.fourArrowsColored@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="11">@conditionalFormat.ruleTypes.iconSets.types.fourArrowsGray@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="12">@conditionalFormat.ruleTypes.iconSets.types.fourRedToBlack@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="13">@conditionalFormat.ruleTypes.iconSets.types.fourRatings@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="14">@conditionalFormat.ruleTypes.iconSets.types.fourTrafficLights@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="15">@conditionalFormat.ruleTypes.iconSets.types.fiveArrowsColored@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="16">@conditionalFormat.ruleTypes.iconSets.types.fiveArrowsGray@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="17">@conditionalFormat.ruleTypes.iconSets.types.fiveRatings@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="18">@conditionalFormat.ruleTypes.iconSets.types.fiveQuarters@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="19">@conditionalFormat.ruleTypes.iconSets.types.fiveBoxes@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="iconSetCriteriaOperatorList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">>=</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">></div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="iconSetCriteriaTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.ruleTypes.iconSets.valueTypes.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.ruleTypes.iconSets.valueTypes.percent@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.ruleTypes.iconSets.valueTypes.formula@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">@conditionalFormat.ruleTypes.iconSets.valueTypes.percentile@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="cellValueOperatorList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.operators.cellValue.types.equalsTo@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.operators.cellValue.types.notEqualsTo@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.operators.cellValue.types.greaterThan@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.operators.cellValue.types.greaterThanOrEqualsTo@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.operators.cellValue.types.lessThan@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">@conditionalFormat.operators.cellValue.types.lessThanOrEqualsTo@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.operators.cellValue.types.between@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.operators.cellValue.types.notBetween@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="specificTextOperatorList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.operators.specificText.types.contains@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.operators.specificText.types.doesNotContain@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.operators.specificText.types.beginsWith@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.operators.specificText.types.endsWith@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="dateOccurringOperatorList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.operators.dateOccurring.types.today@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.operators.dateOccurring.types.yesterday@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.operators.dateOccurring.types.tomorrow@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.operators.dateOccurring.types.last7Days@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.operators.dateOccurring.types.thisMonth@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">@conditionalFormat.operators.dateOccurring.types.lastMonth@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.operators.dateOccurring.types.nextMonth@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.operators.dateOccurring.types.thisWeek@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="8">@conditionalFormat.operators.dateOccurring.types.lastWeek@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="9">@conditionalFormat.operators.dateOccurring.types.nextWeek@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="top10OperatorList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.operators.top10.types.top@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.operators.top10.types.bottom@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="averageOperatorList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@conditionalFormat.operators.average.types.above@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@conditionalFormat.operators.average.types.below@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@conditionalFormat.operators.average.types.equalOrAbove@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@conditionalFormat.operators.average.types.equalOrBelow@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@conditionalFormat.operators.average.types.above1StdDev@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="5">@conditionalFormat.operators.average.types.below1StdDev@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="6">@conditionalFormat.operators.average.types.above2StdDev@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="7">@conditionalFormat.operators.average.types.below2StdDev@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="8">@conditionalFormat.operators.average.types.above3StdDev@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="9">@conditionalFormat.operators.average.types.below3StdDev@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="clearActionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="clearAll">@toolBar.clear.clearActions.clearAll@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="clearFormat">@toolBar.clear.clearActions.clearFormat@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="exportActionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="exportJson">@toolBar.export.exportActions.exportJson@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="exportExcel">@toolBar.export.exportActions.exportExcel@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="fontFamilyList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text">Arial</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Arial Black</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Calibri</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Cambria</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Century</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Courier New</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Comic Sans MS</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Garamond</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Georgia</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Malgun Gothic</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Mangal</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Meiryo</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">MS Gothic</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">MS Mincho</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">MS PGothic</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">MS PMincho</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Roboto</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Tahoma</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Times</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Times New Roman</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Trebuchet MS</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Verdana</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">Wingdings</div>
        <div class="shortcut"></div>
    </div>

</div>
<div class="insp-menu" role="menu" id="fontSizeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">8</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">9</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text">10</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">11</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">12</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">13</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">14</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">15</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">16</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">18</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">20</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">22</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">24</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">26</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">28</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">36</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">48</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text">72</div>
        <div class="shortcut"></div>
    </div>

</div>

<div class="insp-menu" role="menu" id="fontStyleList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="normal">@commentTab.font.fontStyle.values.normal@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="italic">@commentTab.font.fontStyle.values.italic@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="oblique">@commentTab.font.fontStyle.values.oblique@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="inherit">@commentTab.font.fontStyle.values.inherit@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="fontWeightList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="normal">@commentTab.font.fontWeight.values.normal@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="bold">@commentTab.font.fontWeight.values.bold@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="bolder">@commentTab.font.fontWeight.values.bolder@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="lighter">@commentTab.font.fontWeight.values.lighter@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">100</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">200</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">300</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">400</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">500</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">600</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">700</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">800</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text">900</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="borderStyleList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="none">@commentTab.border.style.values.none@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="hidden">@commentTab.border.style.values.hidden@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="dotted">@commentTab.border.style.values.dotted@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="dashed">@commentTab.border.style.values.dashed@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="solid">@commentTab.border.style.values.solid@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="double">@commentTab.border.style.values.double@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="groove">@commentTab.border.style.values.groove@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="ridge">@commentTab.border.style.values.ridge@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="inset">@commentTab.border.style.values.inset@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="outset">@commentTab.border.style.values.outset@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="textDecorationList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@commentTab.font.textDecoration.values.none@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@commentTab.font.textDecoration.values.underline@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@commentTab.font.textDecoration.values.overline@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@commentTab.font.textDecoration.values.linethrough@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="horizontalAlignList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@commentTab.appearance.horizontalAlign.values.left@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@commentTab.appearance.horizontalAlign.values.center@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@commentTab.appearance.horizontalAlign.values.right@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@commentTab.appearance.horizontalAlign.values.general@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="displayModeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@commentTab.appearance.displayMode.values.alwaysShown@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@commentTab.appearance.displayMode.values.hoverShown@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="pictureBorderStyleList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="solid">@pictureTab.border.style.values.solid@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="dotted">@pictureTab.border.style.values.dotted@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="dashed">@pictureTab.border.style.values.dashed@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="double">@pictureTab.border.style.values.double@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="groove">@pictureTab.border.style.values.groove@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="ridge">@pictureTab.border.style.values.ridge@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="inset">@pictureTab.border.style.values.inset@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="outset">@pictureTab.border.style.values.outset@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="pictureStretchList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@pictureTab.appearance.stretch.values.stretch@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@pictureTab.appearance.stretch.values.center@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@pictureTab.appearance.stretch.values.zoom@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@pictureTab.appearance.stretch.values.none@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu border-line-menu" role="menu" id="borderLineList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize no-border-margin" data-value="none">
            <div class="no-border">@cellTab.border.noBorder@</div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="hair">
            <div class="line-style-hair"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="dotted">
            <div class="line-style-dotted"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="dash-dot-dot">
            <div class="line-style-dash-dot-dot"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="dash-dot">
            <div class="line-style-dash-dot"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="dashed">
            <div class="line-style-dashed"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="thin">
            <div class="line-style-thin"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="medium-dash-dot-dot">
            <div class="line-style-medium-dash-dot-dot"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="slanted-dash-dot">
            <div class="line-style-slanted-dash-dot"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="medium-dash-dot">
            <div class="line-style-medium-dash-dot"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="medium-dashed">
            <div class="line-style-medium-dashed"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="medium">
            <div class="line-style-medium"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="thick">
            <div class="line-style-thick"></div>
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text" data-value="double">
            <div class="line-style-double"></div>
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="commomFormatList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="nullValue">@cellTab.format.commonFormat.option.general@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0.00">@cellTab.format.commonFormat.option.number@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="$#,##0.00">@cellTab.format.commonFormat.option.currency@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="_($* #,##0.00_);_($* (#,##0.00);_($* '-'??_);_(@_)">
            @cellTab.format.commonFormat.option.accounting@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="m/d/yyyy">@cellTab.format.commonFormat.option.shortDate@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="dddd, mmmm dd, yyyy">@cellTab.format.commonFormat.option.longDate@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="h:mm:ss AM/PM">@cellTab.format.commonFormat.option.time@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0%">@cellTab.format.commonFormat.option.percentage@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="# ?/?">@cellTab.format.commonFormat.option.fraction@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0.00E+00">@cellTab.format.commonFormat.option.scientific@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="@">@cellTab.format.commonFormat.option.text@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="selectionPolicyList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@sheetTab.selection.policy.values.single@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@sheetTab.selection.policy.values.range@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@sheetTab.selection.policy.values.multiRange@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="selectionUnitList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@sheetTab.selection.unit.values.cell@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@sheetTab.selection.unit.values.row@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@sheetTab.selection.unit.values.column@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="scrollTipList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@spreadTab.tip.scrollTip.values.none@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@spreadTab.tip.scrollTip.values.horizontal@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@spreadTab.tip.scrollTip.values.vertical@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="3">@spreadTab.tip.scrollTip.values.both@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="resizeTipList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@spreadTab.tip.resizeTip.values.none@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@spreadTab.tip.resizeTip.values.column@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@spreadTab.tip.resizeTip.values.row@</div>
        <div class="shortcut"></div>
    </div>

    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="3">@spreadTab.tip.resizeTip.values.both@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="sheetNameList">
</div>

<div class="insp-menu" role="menu" id="cellTypesList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="button-celltype">@cellTypes.buttonCellType.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="checkbox-celltype">@cellTypes.checkBoxCellType.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="combobox-celltype">@cellTypes.comboBoxCellType.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="hyperlink-celltype">@cellTypes.hyperlinkCellType.title@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item divider">
        <div class="image"></div>
        <div class="text"></div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image nocheck"></div>
        <div class="text localize" data-value="clear-celltype">@cellTypes.clearCellType.title@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="checkboxCellTypeTextAlignList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@cellTypes.checkBoxCellType.values.textAlign.values.top@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@cellTypes.checkBoxCellType.values.textAlign.values.bottom@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@cellTypes.checkBoxCellType.values.textAlign.values.left@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="3">@cellTypes.checkBoxCellType.values.textAlign.values.right@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="comboboxCellTypeEditorValueTypeList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@cellTypes.comboBoxCellType.values.editorValueType.values.text@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@cellTypes.comboBoxCellType.values.editorValueType.values.index@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@cellTypes.comboBoxCellType.values.editorValueType.values.value@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="validatorTypeList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="anyvalue-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.anyValue@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="number-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.number@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="list-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.list@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="formulalist-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.formulaList@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="date-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.date@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="textlength-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.textLength@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="formula-validator">
            @dataTab.dataValidation.setting.values.validatorType.option.custom@
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="validatorComparisonOperatorList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="6">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.between@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="7">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.notBetween@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.equalTo@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.notEqualTo@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.greaterThan@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="4">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.lessThan@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="3">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.greaterThanOrEqualTo@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="5">
            @dataTab.dataValidation.setting.values.validatorComparisonOperator.option.lessThanOrEqualTo@
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="errorAlertList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@dataTab.dataValidation.errorAlert.values.alertType.option.stop@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@dataTab.dataValidation.errorAlert.values.alertType.option.warning@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">
            @dataTab.dataValidation.errorAlert.values.alertType.option.information@
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu sparkline-dropdown-width" role="menu" id="sparklineExTypeList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="LINESPARKLINE">@sparklineDialog.sparklineExType.values.line@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="COLUMNSPARKLINE">@sparklineDialog.sparklineExType.values.column@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="WINLOSSSPARKLINE">@sparklineDialog.sparklineExType.values.winLoss@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="PIESPARKLINE">@sparklineDialog.sparklineExType.values.pie@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="AREASPARKLINE">@sparklineDialog.sparklineExType.values.area@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="SCATTERSPARKLINE">@sparklineDialog.sparklineExType.values.scatter@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="SPREADSPARKLINE">@sparklineDialog.sparklineExType.values.spread@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="STACKEDSPARKLINE">@sparklineDialog.sparklineExType.values.stacked@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="BULLETSPARKLINE">@sparklineDialog.sparklineExType.values.bullet@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="HBARSPARKLINE">@sparklineDialog.sparklineExType.values.hbar@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="VBARSPARKLINE">@sparklineDialog.sparklineExType.values.vbar@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="VARISPARKLINE">@sparklineDialog.sparklineExType.values.variance@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="BOXPLOTSPARKLINE">@sparklineDialog.sparklineExType.values.boxplot@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="CASCADESPARKLINE">@sparklineDialog.sparklineExType.values.cascade@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="PARETOSPARKLINE">@sparklineDialog.sparklineExType.values.pareto@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="MONTHSPARKLINE">@sparklineDialog.sparklineExType.values.month@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="YEARSPARKLINE">@sparklineDialog.sparklineExType.values.year@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="zoomList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0.25">@toolBar.zoom.zoomOption.twentyFivePercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0.5">@toolBar.zoom.zoomOption.fiftyPercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0.75">@toolBar.zoom.zoomOption.seventyFivePercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@toolBar.zoom.zoomOption.defaultSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1.25">@toolBar.zoom.zoomOption.oneHundredTwentyFivePercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1.5">@toolBar.zoom.zoomOption.oneHundredFiftyPercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@toolBar.zoom.zoomOption.twoHundredPercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="3">@toolBar.zoom.zoomOption.threeHundredPercentSize@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="4">@toolBar.zoom.zoomOption.fourHundredPercentSize@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="orientationList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@sparklineExTab.orientation.vertical@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@sparklineExTab.orientation.horizontal@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="textOrientationList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@sparklineExTab.orientation.vertical@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@sparklineExTab.orientation.horizontal@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="emptyCellDisplayTypeList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@sparklineExTab.emptyCellDisplayType.gaps@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@sparklineExTab.emptyCellDisplayType.zero@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@sparklineExTab.emptyCellDisplayType.connect@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="axisTypeList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="individual">@sparklineExTab.axisType.individual@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="custom">@sparklineExTab.axisType.custom@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="boxplotClassList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="5ns">@sparklineExTab.boxplotClass.fiveNS@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="7ns">@sparklineExTab.boxplotClass.sevenNS@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="tukey">@sparklineExTab.boxplotClass.tukey@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="bowley">@sparklineExTab.boxplotClass.bowley@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="sigma3">@sparklineExTab.boxplotClass.sigma@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="boxplotSparklineStyleList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@sparklineExTab.boxplotStyle.classical@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@sparklineExTab.boxplotStyle.neo@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="paretoLabelList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@sparklineExTab.paretoLabel.none@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@sparklineExTab.paretoLabel.single@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@sparklineExTab.paretoLabel.cumulated@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="spreadSparklineStyleList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@sparklineExTab.spreadStyle.stacked@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@sparklineExTab.spreadStyle.spread@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="3">@sparklineExTab.spreadStyle.jitter@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="4">@sparklineExTab.spreadStyle.poles@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="5">@sparklineExTab.spreadStyle.stackedDots@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="6">@sparklineExTab.spreadStyle.stripe@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="slicerItemSortingList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@slicerTab.general.itemSorting.option.none@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@slicerTab.general.itemSorting.option.ascending@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="2">@slicerTab.general.itemSorting.option.descending@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="cellLabelVisibilityList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="visible">@cellTab.style.cellLabel.visibilityOption.visible@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="hidden">@cellTab.style.cellLabel.visibilityOption.hidden@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="auto">@cellTab.style.cellLabel.visibilityOption.auto@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="cellLabelAlignmentList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="topLeft">@cellTab.style.cellLabel.alignmentOption.topLeft@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="topCenter">@cellTab.style.cellLabel.alignmentOption.topCenter@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="topRight">@cellTab.style.cellLabel.alignmentOption.topRight@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="bottomLeft">@cellTab.style.cellLabel.alignmentOption.bottomLeft@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="bottomCenter">@cellTab.style.cellLabel.alignmentOption.bottomCenter@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="bottomRight">@cellTab.style.cellLabel.alignmentOption.bottomRight@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="spreadThemeList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="css/gc.spread.sheets.11.0.0.css">
            @spreadTab.spreadTheme.theme.option.spreadJS@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="css/gc.spread.sheets.excel2013white.11.0.0.css">
            @spreadTab.spreadTheme.theme.option.excel2013White@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="css/gc.spread.sheets.excel2013lightGray.11.0.0.css">
            @spreadTab.spreadTheme.theme.option.excel2013LightGray@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="css/gc.spread.sheets.excel2013darkGray.11.0.0.css">
            @spreadTab.spreadTheme.theme.option.excel2013DarkGray@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="css/gc.spread.sheets.excel2016colorful.11.0.0.css">
            @spreadTab.spreadTheme.theme.option.excel2016Colorful@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="css/gc.spread.sheets.excel2016darkGray.11.0.0.css">
            @spreadTab.spreadTheme.theme.option.excel2016DarkGray@
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="chartSeriesIndexContner">
</div>

<div class="insp-menu" role="menu" id="chartSeriesGroupContner">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">
            @chartExTab.values.series.primary@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">
            @chartExTab.values.series.secondary@
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="copyPasteHeaderList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="noHeaders">
            @spreadTab.cutCopy.copyPasteHeaderOptions.option.noHeaders@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="rowHeaders">
            @spreadTab.cutCopy.copyPasteHeaderOptions.option.rowHeaders@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="columnHeaders">
            @spreadTab.cutCopy.copyPasteHeaderOptions.option.columnHeaders@
        </div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="allHeaders">
            @spreadTab.cutCopy.copyPasteHeaderOptions.option.allHeaders@
        </div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="resizeZeroIndicatorList">
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="0">@spreadTab.resizeZeroIndicator.option.defaultValue@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image fa fa-check"></div>
        <div class="text localize" data-value="1">@spreadTab.resizeZeroIndicator.option.enhanced@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="chartDataLabelList">
</div>

<div class="insp-menu" role="menu" id="chartLegendPositionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@chartExTab.values.legend.position.values.left@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@chartExTab.values.legend.position.values.right@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@chartExTab.values.legend.position.values.top@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="4">@chartExTab.values.legend.position.values.bottom@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="chartAxisTypeList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@chartExTab.values.axes.axisType.values.primaryCategory@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@chartExTab.values.axes.axisType.values.primaryValue@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@chartExTab.values.axes.axisType.values.secondaryCategory@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@chartExTab.values.axes.axisType.values.secondaryValue@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="chartTickPositionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="0">@chartExTab.values.axes.TickPosition.values.cross@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="1">@chartExTab.values.axes.TickPosition.values.inside@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@chartExTab.values.axes.TickPosition.values.none@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@chartExTab.values.axes.TickPosition.values.outside@</div>
        <div class="shortcut"></div>
    </div>
</div>

<div class="insp-menu" role="menu" id="chartTickLabelPositionList">
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="3">@chartExTab.values.axes.tickLabelPosition.values.none@</div>
        <div class="shortcut"></div>
    </div>
    <div class="menu-item">
        <div class="image"></div>
        <div class="text localize" data-value="2">@chartExTab.values.axes.tickLabelPosition.values.nextToAxis@</div>
        <div class="shortcut"></div>
    </div>
</div>
<div class="hidden">
    <input type="file" name="image" id="fileSelector"/>
</div>

<div id="sparklineexdialog" title="SparklineEx" class="hidden">
    <div>
        <div>
            <div class="insp-row">
                <div>
                    <div class="insp-dropdown-list insp-inline-row" data-list-ref="sparklineExTypeList"
                         data-name="sparklineExType" id="sparklineExTypeDropdown">
                        <div class="title insp-inline-row-item insp-col-6 localize">
                            @sparklineDialog.sparklineExType.title@
                        </div>
                        <div class="dropdown insp-inline-row-item btn btn-default insp-text-right insp-col-6">
                            <div style="width: 100%; height: 100%">
                                <span class="display"></span>
                                <span class="caret"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="group-item-divider"></div>
        <div id="lineContainer">
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtLineDataRange">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.lineSparkline.dataRange@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <span class="localize" id="dataRangeError">@sparklineDialog.lineSparkline.dataRangeError@</span>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <span class="localize"
                          id="singleDataRangeError">@sparklineDialog.lineSparkline.singleDataRange@</span>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtLineLocationRange">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.lineSparkline.locationRange@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <span class="localize"
                          id="locationRangeError">@sparklineDialog.lineSparkline.locationRangeError@</span>
                </div>
            </div>
        </div>
        <div id="bulletContainer">
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletMeasure">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.measure@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletTarget">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.target@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletMaxi">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.maxi@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletGood">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.good@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletBad">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.bad@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletForecast">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.forecast@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtBulletTickunit">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.tickunit@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="colorBulletColorScheme">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.bulletSparkline.colorScheme@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(160, 160, 160);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-checkbox insp-inline-row" data-name="checkboxBulletVertial">
                            <div class="button insp-inline-row-item"></div>
                            <div class="text insp-inline-row-item localize">@sparklineDialog.bulletSparkline.vertical@
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="hbarContainer">
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtHbarValue">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.hbarSparkline.value@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="colorHbarColorScheme">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.hbarSparkline.colorScheme@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(160, 160, 160);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="varianceContainer">
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtVariance">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.variance@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtVarianceReference">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.reference@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtVarianceMini">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.mini@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtVarianceMaxi">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.maxi@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtVarianceMark">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.mark@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtVarianceTickUnit">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.tickunit@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="colorVariancePositive">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.colorPositive@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(0, 128, 0);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="colorVarianceNegative">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.varianceSparkline.colorNegative@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(255, 0, 0);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-inline-row">
                            <div class="insp-checkbox insp-col-6" data-name="checkboxVarianceLegend">
                                <div class="button insp-inline-row-item"></div>
                                <div class="text insp-inline-row-item localize">
                                    @sparklineDialog.varianceSparkline.legend@
                                </div>
                            </div>
                            <div class="insp-checkbox insp-col-6" data-name="checkboxVarianceVertical">
                                <div class="button insp-inline-row-item"></div>
                                <div class="text insp-inline-row-item localize">
                                    @sparklineDialog.varianceSparkline.vertical@
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="monthContainer">
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtMonthValue">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.monthSparkline.month@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="yearContainer">
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtYearValue">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.yearSparkline.year@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="emptyColorValue">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.yearSparkline.emptyColor@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(211, 211, 211);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="startColorValue">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.yearSparkline.startColor@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(144, 238, 144);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="middleColorValue">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.yearSparkline.middleColor@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(0, 255, 0);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-color-picker insp-inline-row" data-name="endColorValue">
                            <div class="title  insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.yearSparkline.endColor@
                            </div>
                            <div class="picker insp-inline-row-item insp-col-6">
                                <div style="width: 100%; height: 100%">
                                    <div class="color-view " style="background-color: rgb(0, 100, 0);"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="insp-row">
                    <div>
                        <div class="insp-text insp-inline-row" data-name="txtColorRangeValue">
                            <div class="title insp-inline-row-item insp-col-6 localize">
                                @sparklineDialog.yearSparkline.colorRange@
                            </div>
                            <input class="editor insp-inline-row-item insp-col-6" type="text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="insertslicerdialog" title="Insert Slicer" class="hidden">
    <div id="slicer-container">
    </div>
</div>

<div id="passwordDialog" title="Password" class="hidden">
    <div>
        <div>
            <div class="insp-row">
                <span class="localize" id="passwordError">@passwordDialog.error@</span>
            </div>
        </div>
        <div class="insp-row">
            <div>
                <div class="insp-text insp-inline-row" data-name="txtPassword">
                    <div class="title insp-inline-row-item insp-col-6 localize">
                        @passwordDialog.title@
                    </div>
                    <input class="editor insp-inline-row-item insp-col-6" type="password">
                </div>
            </div>
        </div>
    </div>
</div>

<div id="downloadDialog" title="Download" class="hidden">
    <div>
        <div class="insp-row">
            <div>
                <div class="insp-text insp-inline-row">
                    <a id="download" class="title insp-inline-row-item insp-col-6 localize" data-contextmenu="false">@toolBar.download@</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="modalTemplate" role="dialog" data-backdrop="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default localize" id="dialogConfirm">@dialog.ok@</button>
                <button type="button" class="btn btn-default localize" data-dismiss="modal">@dialog.cancel@</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>