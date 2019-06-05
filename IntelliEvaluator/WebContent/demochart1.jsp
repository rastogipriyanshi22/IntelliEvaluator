<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
        <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Criteria');
                dataTable.addColumn('number', 'Grade');
 
                //define rows of data
                dataTable.addRows([['Spelling',1], ['Grammar',2],['Relevance',3],['Word Count', 4]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart'));
 
                //define options for visualization
                var options = {width: 600, height: 350, is3D: true, title:'Score' };
                
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
 
    </head>
 
    <body>
 
        <!--Div for our chart -->
        <div id="chart"></div>



</body>
</html>