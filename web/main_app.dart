import 'dart:html';
import 'package:chart/chart.dart';
import 'package:polymer/polymer.dart' show CustomTag, observable, PolymerElement;

@CustomTag('main-app')
class MainApp extends PolymerElement {

  MainApp.created() : super.created();

  void chartdemo(Event e, var detail, Node target) {

  }

  @override
  void attached() {
    super.attached();
    initChart();
  }

  void initChart() {
    Bar bar = new Bar({
        'labels' : ["A","B","C"],
        'datasets' : [
            {
                'fillColor' : "rgba(220,220,220,0.5)",
                'strokeColor' : "rgba(220,220,220,1)",
                'data' : [65,59,90]
            },
        ]

    }, null);

    DivElement container3 = new DivElement();
    container3.style.height ='200px';
    container3.style.width =  '200px';
    $['chartWrapper'].append(container3);
    bar.show(container3);
  }
}
