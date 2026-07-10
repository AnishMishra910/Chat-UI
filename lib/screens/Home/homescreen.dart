import 'package:flutter/material.dart';
import 'package:guffgarum/screens/Home/Calls/callsscreen.dart';
import 'package:guffgarum/screens/Home/Chats/chatsscreen.dart';
import 'package:guffgarum/screens/Home/Camera/camerascreen.dart';
import 'package:guffgarum/screens/Home/Status/statusscreen.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [
           Tab(icon:Icon(Icons.camera_alt),),
           Tab(text: "CHATS",),
           Tab(text: "STATUS",),
           Tab(text: "CALLS",),
          ],
          indicatorColor: Colors.white,
          ),
          toolbarHeight: 90,
          title: UiHelper.CustomText(
            text: 'Guff Garum',
            height: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(onPressed: (){
                  
            }, icon: Icon(Icons.search, size: 40,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: TabBarView(children: [
          Camerascreen(),
          ChatsScreen(),
          Statusscreen(),
          CallsScreen(),
        ]),
      ),
    );
  }
}
