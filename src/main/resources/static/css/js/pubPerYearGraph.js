var value = [
  [ 'Monday', 'Beginning JavaScript',       new Date(0,0,0,12,0,0),  new Date(0,0,0,13,30,0) ],
  [ 'Tuesday', 'Intermediate JavaScript',    new Date(0,0,0,14,0,0),  new Date(0,0,0,15,30,0) ],
  [ 'Wednesday', 'Advanced JavaScript',        new Date(0,0,0,16,0,0),  new Date(0,0,0,17,30,0) ],
  [ 'Thursday',   'Beginning Google Charts',    new Date(0,0,0,12,30,0), new Date(0,0,0,14,0,0) ],
  [ 'Friday',   'Intermediate Google Charts', new Date(0,0,0,14,30,0), new Date(0,0,0,16,0,0) ],
  [ 'Saturday',   'Advanced Google Charts',     new Date(0,0,0,16,30,0), new Date(0,0,0,18,0,0) ]];
google.charts.load("current", {packages:["timeline"]});
google.charts.setOnLoadCallback(drawBarChart);

function drawBarChart() {
  //if(value.length > 0){
    // loop the outer array

    console.log("*****************************I'm the GRAPH and I WAS CALLED*********************************");
    console.log(value);
    console.log("**************************************************************");


    //for (var i = 1; i < value.length; i++) {
     // value[i][1]= parseInt(value[i][1], 10);
   // }

  var container =  document.getElementById('columnchart_material');
  var chart = new google.visualization.Timeline(container);
  var data = new google.visualization.DataTable();
  data.addColumn({ type: 'string', id: 'Room' });
  data.addColumn({ type: 'string', id: 'Name' });
  data.addColumn({ type: 'date', id: 'Start' });
  data.addColumn({ type: 'date', id: 'End' });
  data.addRows([
    [ 'Monday', 'Software Architecture and Design patterns',       new Date(0,0,0,8,0,0),  new Date(0,0,0,10,30,0) ],
    [ 'Tuesday',   'S/W User Interface Design and Analysis',    new Date(0,0,0,8,0,0), new Date(0,0,0,10,0,0) ],
    [ 'Tuesday',   'Computer Literacy/Info Mgmt', new Date(0,0,0,12,0,0), new Date(0,0,0,16,0,0) ],
    [ 'Wednesday', 'Comp Networks and Dis Process',       new Date(0,0,0,12,0,0),  new Date(0,0,0,15,30,0) ],
    [ 'Wednesday', 'Mobile App Des & Impl',        new Date(0,0,0,8,0,0),  new Date(0,0,0,10,30,0) ],
    [ 'Thursday', 'Computer Science II',       new Date(0,0,0,12,0,0),  new Date(0,0,0,13,30,0) ],
    [ 'Friday', 'Advanced Data Management',       new Date(0,0,0,18,0,0),  new Date(0,0,0,21,30,0) ],
    [ 'Friday', 'Research Advances Software Eng',        new Date(0,0,0,12,0,0),  new Date(0,0,0,16,30,0) ]
  ]);

  var options = {
    title: 'My Daily Activities',
    is3D: true,
    legend: 'legend is here',
    timeline: {colorByRowLabel: true}
  };
  chart.draw(data, options);
}