import 'package:first_flutter/pages/home/widgets/card_app.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp({Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .55,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(title: "Crédito"),
            CardApp(title: "NuConta"),
            CardApp(title: "Nubank Rewards"),
          ],
        ),
      ),
    );
  }
}
