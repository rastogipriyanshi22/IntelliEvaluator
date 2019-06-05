<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<title>Insert title here</title>
<script>
var chart = AmCharts.makeChart("chartdiv", {
	"type": "serial",
     "theme": "light",
	"categoryField": "year",
	"rotate": true,
	"startDuration": 1,
	"categoryAxis": {
		"gridPosition": "start",
		"position": "left"
	},
	"trendLines": [],
	"graphs": [
		{
			"balloonText": "Income:[[value]]",
			"fillAlphas": 0.8,
			"id": "AmGraph-1",
			"lineAlpha": 0.2,
			"title": "Income",
			"type": "column",
			"valueField": "income"
		},
		{
			"balloonText": "Expenses:[[value]]",
			"fillAlphas": 0.8,
			"id": "AmGraph-2",
			"lineAlpha": 0.2,
			"title": "Expenses",
			"type": "column",
			"valueField": "expenses"
		}
	],
	"guides": [],
	"valueAxes": [
		{
			"id": "ValueAxis-1",
			"position": "top",
			"axisAlpha": 0
		}
	],
	"allLabels": [],
	"balloon": {},
	"titles": [],
	
	"dataProvider": [
		{
			"year": <%=2005%>,
			"income":<%=49.5%>,
			"expenses":<%=20.5%> 
		},
		{
			"year": 2006,
			"income": 26.2,
			"expenses": 22.8
		},
		{
			"year": 2007,
			"income": 30.1,
			"expenses": 23.9
		},
		{
			"year": 2008,
			"income": 29.5,
			"expenses": 25.1
		},
		{
			"year": 2009,
			"income": 24.6,
			"expenses": 25
		}
	],
    "export": {
    	"enabled": true
     }

});
</script>
<style>  
#chartdiv {
	width		: 60%;
	height		: 300px;
	font-size	: 11px;
}						
</style>
</head>
<body>
<div id="chartdiv"></div>								
</body>
</html>