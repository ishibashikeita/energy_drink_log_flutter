import 'package:energy_drink_log/View/Component/custom_cell.dart';
import 'package:energy_drink_log/View/Component/custom_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: size.width * 0.9,
              height: size.width * 0.5,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.3,
                          height: size.width * 0.3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          height: size.width * 0.1,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.4,
                          height: size.width * 0.4,
                          color: Colors.red,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
