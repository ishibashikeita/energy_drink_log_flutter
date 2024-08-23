import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,

    ///テキストを...とするかどうかのflag
    ///デフォルトtrueで、trueのときは...となるようにしています
    ///EX): 問題表示部分ではFalseを指定し、セルなどではdefault値のtrueを使用することで、...にしています
    this.isOverFlow = true,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool isOverFlow;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: color ?? const Color.fromARGB(255, 35, 35, 35),
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontFamily: 'Noto_Sans_JP',
    );

    return Text(
      text,
      style: textStyle,
      overflow: isOverFlow
          ? TextOverflow.ellipsis
          : null, // isOverFlow の値によって overflow を設定
    );
  }
}
