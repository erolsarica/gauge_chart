import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gauge Chart',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                
                maximum: 40,
                interval: 2,
                labelsPosition: ElementsPosition.outside,
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 0,
                    endValue: 10,
                    color: Colors.green,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 10,
                    endValue: 20,
                    color: Colors.yellow,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 20,
                    endValue: 30,
                    color: Colors.orange,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 30,
                    endValue: 40,
                    color: Colors.red,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
