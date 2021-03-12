import 'package:first_flutter/pages/home/widgets/card_app.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged; 

  const PageViewApp({Key key, this.top, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .55,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(title: "Crédito"),
          CardApp(title: "NuConta"),
          CardApp(title: "Nubank Rewards"),
        ],
      ),
    );
  }
}
