import 'package:flutter/material.dart';

import 'todomenuitem.dart';

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {

  const PopupMenuButtonWidget({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          //cabeçalho
          icon: Icon(Icons.view_list),
          onSelected: (valueselected) {
            print('${valueselected.title}');
          },
          itemBuilder: (BuildContext context) {
            List<TodoMenuItem> foodMenulist = [TodoMenuItem(title: "Gamer", icon: Icon(Icons.star))];
            return foodMenulist.map((TodoMenuItem itemLista) {
              return PopupMenuItem<TodoMenuItem>(
                value: itemLista,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(itemLista.icon.icon),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Text(itemLista.title),
                    ],
                  ),
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.0);
}