import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../custom_cell.dart';
import '../../custom_text.dart';

class FunctionCell extends StatelessWidget {
  const FunctionCell({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: size.width * 0.2,
        width: size.width * 0.9,
        child: CustomCell(
          cellColor: ColorName.mainColor,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // 読み取り
                    },
                    child: SizedBox(
                      width: size.width * 0.1,
                      height: size.width * 0.1,
                      child: const FractionallySizedBox(
                        widthFactor: 0.9,
                        heightFactor: 0.9,
                        child: Icon(
                          Icons.qr_code_scanner,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const CustomText(
                    text: '読み取り',
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // 読み取り
                    },
                    child: SizedBox(
                      width: size.width * 0.1,
                      height: size.width * 0.1,
                      child: const FractionallySizedBox(
                        widthFactor: 0.9,
                        heightFactor: 0.9,
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const CustomText(
                    text: '買いに行く',
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // 過去の記録ページへ
                    },
                    child: SizedBox(
                      width: size.width * 0.1,
                      height: size.width * 0.1,
                      child: const FractionallySizedBox(
                        widthFactor: 0.9,
                        heightFactor: 0.9,
                        child: Icon(
                          Icons.update,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const CustomText(
                    text: '摂取履歴',
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // つぶやき
                    },
                    child: SizedBox(
                      width: size.width * 0.1,
                      height: size.width * 0.1,
                      child: const FractionallySizedBox(
                        widthFactor: 0.9,
                        heightFactor: 0.9,
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const CustomText(
                    text: 'つぶやき',
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
