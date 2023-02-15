
import 'package:flutter/material.dart';

import '../../../const/colors.dart';
import '../../about/about_screen.dart';
import '../../photos/photos_sceens.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 5,
            backgroundColor: Colors.white,
            bottom: const TabBar(
                labelColor: mainColor,
                labelStyle: TextStyle(
                  fontSize: 12,
                ),
                indicatorColor: mainColor,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: Image(
                        height: 30,
                        image: AssetImage("assets/tab/contact.png")),
                    text: 'About',
                  ),
                  Tab(
                    icon: Image(
                        height: 30,
                        image: AssetImage("assets/tab/galery.png")),
                    text: 'Photos',
                  ),
                  Tab(
                    icon: Image(
                        height: 30,
                        image: AssetImage("assets/tab/shop.png")),
                    text: 'Sell',
                  )
                ]),
          ),
          body: const TabBarView(children: [
            AboutScreen(),
            PhotosScreen(),
            AboutScreen(),
          ]),
        ),
      ),
    );
  }
}