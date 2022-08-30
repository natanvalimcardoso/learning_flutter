import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'imc_gauge_range.dart';

class ImcGauge extends StatelessWidget {
  final double imc;

  const ImcGauge({Key? key, required this.imc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            ImcGaugeRange(
              start: 12.5,
              end: 18.5,
              color: Colors.blue,
              label: 'Magreza',
            ),
            ImcGaugeRange(
              start: 18.5,
              end: 24.5,
              color: Colors.green,
              label: 'Normal',
            ),
            ImcGaugeRange(
              start: 24.5,
              end: 29.9,
              color: Colors.yellow[600]!,
              label: 'Sobrepeso',
            ),
            ImcGaugeRange(
              start: 29.9,
              end: 39.9,
              color: Colors.red[500]!,
              label: 'Obesidade',
            ),
            ImcGaugeRange(
              start: 39.9,
              end: 47.9,
              color: Colors.red[900]!,
              label: 'Obesidade Grave',
            ),
          ],
          pointers: [
            NeedlePointer(
              value: imc,
              enableAnimation: true,
            )
          ],
        ),
      ],
    );
  }
}
