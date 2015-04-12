
# Jumbotron - Line Chart
$ ->
  Chart.defaults.global.responsive = true
  ctx = $('#jumbotron-line-chart').get(0).getContext('2d')
  options = 
    showScale: false
    scaleShowGridLines : false,
    scaleGridLineColor : "rgba(0,0,0,.05)",
    scaleGridLineWidth : 0,
    scaleShowHorizontalLines: false,
    scaleShowVerticalLines: false,
    bezierCurve : false,
    bezierCurveTension : 0.4,
    pointDot : false,
    pointDotRadius : 0,
    pointDotStrokeWidth : 2,
    pointHitDetectionRadius : 20,
    datasetStroke : true,
    datasetStrokeWidth : 4,
    datasetFill : true,
    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"


  data = 
    labels: [
      'Jan'
      'Feb'
      'Mar'
      'Apr'
      'May'
      'Jun'
      'Jul'
    ]
    datasets: [{
        label: "My Second dataset",
        fillColor: "rgba(34, 167, 240,0.2)",
        strokeColor: "#22A7F0",
        pointColor: "#22A7F0",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "#22A7F0",
        data: [28, 48, 40, 45, 76, 65, 90]
    } ]

  myLineChart = new Chart(ctx).Line(data, options)
  return