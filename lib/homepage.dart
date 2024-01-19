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
            enableLoadingAnimation: true,
            animationDuration: 3000,
            axes: <RadialAxis>[
              RadialAxis(
                
                maximum: 220,
                interval: 20,
                labelsPosition: ElementsPosition.outside,
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 0,
                    endValue: 60,
                    color: Colors.green,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 60,
                    endValue: 120,
                    color: Colors.yellow,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 120,
                    endValue: 160,
                    color: Colors.orange,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 160,
                    endValue: 220,
                    color: Colors.red,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                ],
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 140,
                    enableAnimation: true,
                    animationDuration: 6000,
                    animationType: AnimationType.ease,
                    needleLength: 0.66,
                    needleColor: Colors.black,
                    knobStyle: KnobStyle(
                      knobRadius: 0.08,
                      sizeUnit: GaugeSizeUnit.factor,
                    ),
                  ),
                ],
                annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      '140',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    angle: 90,
                    positionFactor: 0.5,
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
