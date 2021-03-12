import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top
        ),
        GestureDetector(
          onTap: onTap,
            child: Container(
              height: MediaQuery.of(context).size.height * .20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Image.network(
                        'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                        height: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text('Marco', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                    ]
                  ),
                  Icon(showMenu ? Icons.expand_less : Icons.expand_more, color: Colors.white,)
                ],
              ),
            ),
        )
      ]
    );
  }
}