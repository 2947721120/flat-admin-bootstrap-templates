
# Chart.JS
$ ->
  Chart.defaults.global.responsive = true
  ctx = $('#dashboard-order-chart').get(0).getContext('2d')
  ctx_light = $('#dashboard-order-chart-light').get(0).getContext('2d')
  options = 
    bezierCurve: false
    pointDotRadius: 0
    datasetStroke: true
    datasetStrokeWidth: 5
    scaleGridLineColor: 'rgba(255,255,255,0)'
    scaleFontColor: 'rgba(255,255,255,.4)'
    scaleLineColor: 'rgba(0,0,0,0)'
    scaleShowVerticalLines: false
    scaleShowGridLines: false
    scaleOverride: false
    scaleShowLabels: false
    scaleSteps: 10
    pointDotStrokeWidth: 0
    showScale: true

  options_light = 
    bezierCurve: false
    pointDotRadius: 0
    datasetStroke: true
    datasetStrokeWidth: 5
    scaleGridLineColor: 'rgba(255,255,255,0)'
    scaleFontColor: 'rgba(0,0,0,.4)'
    scaleLineColor: 'rgba(0,0,0,0)'
    scaleShowVerticalLines: false
    scaleShowGridLines: true
    scaleOverride: false
    scaleSteps: 10
    scaleShowLabels: false
    pointDotStrokeWidth: 0
    showScale: true
  data = 
    labels: [
      'January'
      'February'
      'March'
      'April'
      'May'
      'June'
      'July'
      'August'
      'September'
    ]
    datasets: [ {
      label: 'My First dataset'
      fillColor: 'transparent'
      strokeColor: '#FFF'
      pointColor: '#FFF'
      pointStrokeColor: 'rgba(0,177,106,1)'
      pointHighlightFill: '#fff'
      pointHighlightStroke: 'rgba(220,220,220,1)'
      data: [
        35000
        38000
        29000
        40000
        34500
        41000
        42000
        56000
        80000
      ]
    } ]

  data_light = 
    labels: [
      'January'
      'February'
      'March'
      'April'
      'May'
      'June'
      'July'
      'August'
      'September'
    ]
    datasets: [ {
      label: 'My First dataset'
      fillColor: 'transparent'
      strokeColor: '#22A7F0'
      pointColor: '#FFF'
      pointStrokeColor: 'rgba(0,177,106,1)'
      pointHighlightFill: '#fff'
      pointHighlightStroke: 'rgba(220,220,220,1)'
      data: [
        39
        32
        42
        40
        58
        66
        78
        80
        99
      ]
    } ]
  myLineChart = new Chart(ctx).Line(data, options)
  myLineChartLight = new Chart(ctx_light).Line(data_light, options_light)
  return