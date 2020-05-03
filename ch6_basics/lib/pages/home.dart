import 'package:ch6_basics/pages/widgets/flatbutton_example.dart';
import 'package:ch6_basics/pages/widgets/buttom_bar_widget.dart';
import 'package:ch6_basics/pages/widgets/buttom_navigator_home.dart';
import 'package:ch6_basics/pages/widgets/container_with_boxdecoration_widget.dart';
import 'package:ch6_basics/pages/widgets/images_and_icons_widget.dart';
import 'package:ch6_basics/pages/widgets/popup_menu_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          flexibleSpace: SafeArea(
              child: Icon(
              Icons.photo_camera,
              size: 75.0,
              color: Colors.white70,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(75.0),
            child: Container(
              color: Colors.lightGreen.shade100,
              height: 75.0,
              width: double.infinity,
              child: Center(
                child: Text("Button"),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const ContainerWithBoxDecorationWidget(),
                  Divider(),
                  const FlatButtonExample(),
                  Divider(),
                  const PopupMenuButtonWidget(),
                  Divider(),
                  const ButtonBarWidget(),
                  Divider(),
                  const ImagesAndIconsWidget(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
        bottomNavigationBar: ButtomNavigatorHome(),
      ),
    );
  }
}