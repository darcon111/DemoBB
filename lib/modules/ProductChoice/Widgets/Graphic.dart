import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<Color> gradientColors = [
  Color.fromRGBO(0, 131, 146, 0.4),
  Color.fromRGBO(0, 131, 146, 0.4),
];

class GraphicWidget extends StatelessWidget {
  const GraphicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: AspectRatio(
        aspectRatio: 2.70,
        child: LineChart(
          mainData(),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        color: Color(0xFF6C757D),
        fontWeight: FontWeight.w400,
        fontSize: 12,
        fontFamily: 'Lexend',
        height: 1.50);
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Ene.', style: style);
        break;
      case 1:
        text = const Text('Feb.', style: style);
        break;
      case 2:
        text = const Text('Mar.', style: style);
        break;
      case 3:
        text = const Text('Abr.', style: style);
        break;
      case 4:
        text = const Text('May.', style: style);
        break;
      case 5:
        text = const Text('Jun.', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '';
        break;
      case 3:
        text = '';
        break;
      case 5:
        text = '';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.grey,
            strokeWidth: 0.2,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.transparent,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 5,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 2.1),
            FlSpot(1, 3.5),
            FlSpot(2, 3),
            FlSpot(3, 0.8),
            FlSpot(4, 2.5),
            FlSpot(5, 2.6),
          ],
          isCurved: false,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withValues(alpha: 0.3))
                  .toList(),
            ),
          ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(5, 0),
            FlSpot(5, 2.6),
          ],
          isCurved: false,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: false, color: const Color.fromRGBO(0, 131, 146, 0.4)),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 0),
            FlSpot(0, 2.1),
          ],
          isCurved: false,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: false, color: const Color.fromRGBO(0, 131, 146, 0.4)),
        ),
      ],
    );
  }
}
