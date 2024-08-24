import 'package:energy_drink_log/View/Component/custom_cell.dart';
import 'package:flutter/material.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.width * 0.6,
              width: size.width * 0.9,
              child: const CustomCell(
                content: Center(
                  child: Text('今日の本数'),
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.6,
              width: size.width * 0.9,
              child: const CustomCell(
                content: Center(
                  child: Text('今日の本数'),
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.6,
              width: size.width * 0.9,
              child: const CustomCell(
                content: Center(
                  child: Text('今日の本数'),
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.6,
              width: size.width * 0.9,
              child: const CustomCell(
                content: Center(
                  child: Text('今日の本数'),
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.6,
              width: size.width * 0.9,
              child: const CustomCell(
                content: Center(
                  child: Text('今日の本数'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
