data =
  labels: [
    'January'
    'February'
    'March'
    'April'
    'May'
    'June'
  ]
  series: [
    [ 5, 4, 4.6, 5.7 , 3.2, 4.1]
    [ 4.3, 4.7, 4.9, 5.0 , 5.4, 4.8]
    [ 3.6, 3.2, 4.0, 3.9 , 3.7, 4.1]
  ]

options =
  height: 250
  axisY:
    offset: 60
    labelInterpolationFnc: (value) ->
      return '$' + value + 'm';

new (Chartist.Line)('#line-chart', data,options)
new (Chartist.Bar)('#bar-chart', data,options)

pie_data =
  width: 250
  labels: [
    'iOS'
    'Android'
    'Window Phone'
    'Other'
  ],
  series: [100, 65, 25, 10]

sum = (a, b) ->
  return a + b

pie_options =
  labelInterpolationFnc: (value) ->
    return value;

donut_data =
  series: [100, 65, 25, 10]

donut_options =
  donut: true
  donutWidth: 20
  labelInterpolationFnc: (value) ->
    return Math.round(value / donut_data.series.reduce(sum) * 100) + '%';

new (Chartist.Pie)('#pie-chart', pie_data,pie_options)
new (Chartist.Pie)('#donut-chart', donut_data, donut_options)
