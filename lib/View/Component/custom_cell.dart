import 'package:energy_drink_log/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CustomCell extends StatelessWidget {
  const CustomCell({
    super.key,
    required this.content,
    this.cellColor = Colors.white,
    this.onTap,
  });

  // シンプルな影付きのカード
  // 高さ・横幅は親で指定してあげよう
  final Widget content;
  final Color? cellColor;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null
          ? () {
              // 引数で渡されたら設定
              onTap!();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: content,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cellColor,
            boxShadow: const [
              BoxShadow(
                color: ColorName.boxShadow,
                spreadRadius: 1.0,
                blurRadius: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
