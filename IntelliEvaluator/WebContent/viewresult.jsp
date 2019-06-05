<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
<%
  final double[][] data = new double[][]{
 {210, 300, 320, 265, 299},
 {200, 304, 201, 201, 340}
 };

 final CategoryDataset dataset = 
   DatasetUtilities.createCategoryDataset("Team ", "", data);

 JFreeChart chart = null;
 BarRenderer renderer3D = null;
 CategoryPlot plot = null;


 final CategoryAxis3D categoryAxis = new CategoryAxis3D("Match");
 final ValueAxis valueAxis = new NumberAxis3D("Run");
 renderer3D = new BarRenderer3D();

 plot = new CategoryPlot(dataset, categoryAxis, valueAxis, renderer3D);
 plot.setOrientation(PlotOrientation.VERTICAL);
 chart = new JFreeChart("Srore Bord", JFreeChart.DEFAULT_TITLE_FONT, 
  plot, true);

 chart.setBackgroundPaint(new Color(249, 231, 236));

  try {
 final ChartRenderingInfo info = new ChartRenderingInfo
 (new StandardEntityCollection());
 final File file1 = new File("Images/bargraph.png");
 ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
  } catch (Exception e) {
 out.println(e);
 }
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Result</title>
<style>
body {
    background-image: url("Images/green.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
.button1 {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #33adff;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: #3e8e41}

.button1:active {
  background-color: #33adff;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

</head>

             
 
 <body>
  <IMG SRC="Images/bargraph.png"  WIDTH="600" HEIGHT="400" BORDER="0" USEMAP="#chart">
 
</body>
</html>