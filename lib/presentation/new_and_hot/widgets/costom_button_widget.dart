import 'package:flutter/cupertino.dart';

class CostomButtonWidget extends StatelessWidget {
  final Widget iconData;
  final String textData;
  final TextStyle style;

  const CostomButtonWidget(
      {Key? key,
      required this.iconData,
      required this.textData,
      required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        iconData,
        Text(textData, style: style),
      ],
    );
  }
}
