import 'package:first_flutter/pages/home/widgets/item_menu_bottom.dart';
import 'package:flutter/material.dart';

class MyMenuBottom extends StatelessWidget {
  final bool showMenu;

  const MyMenuBottom({Key key, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: !showMenu ? MediaQuery.of(context).padding.bottom : 0,
      height: _screenHeigth * 0.14,
      right: 0,
      left: 0,
      child: IgnorePointer(
        ignoring: showMenu,
              child: AnimatedOpacity(
          duration: Duration(milliseconds: 150),
          opacity: !showMenu ? 1 : 0,
          child: Container(
            height: 150,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                ItemMenuBottom(
                  icon: Icons.person_add,
                  text: 'Indicar Amigos',
                ),
                ItemMenuBottom(
                  icon: Icons.phone_android,
                  text: 'Recarga de Celular',
                ),
                ItemMenuBottom(
                  icon: Icons.chat,
                  text: 'Cobrar',
                ),
                ItemMenuBottom(
                  icon: Icons.monetization_on,
                  text: 'Empréstimos',
                ),
                ItemMenuBottom(
                  icon: Icons.move_to_inbox,
                  text: 'Depositar',
                ),
                ItemMenuBottom(
                  icon: Icons.mobile_screen_share,
                  text: 'Transferir',
                ),
                ItemMenuBottom(
                  icon: Icons.format_align_center,
                  text: 'Ajustar Limite',
                ),
                ItemMenuBottom(
                  icon: Icons.chrome_reader_mode,
                  text: 'Pagar',
                ),
                ItemMenuBottom(
                  icon: Icons.lock_open,
                  text: 'Bloquear Cartão',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
