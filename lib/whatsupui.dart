import 'package:flutter/material.dart';
import 'package:whatsup_ui/Chatmodel.dart';

class WhatsAppUi extends StatelessWidget{

  final mystyle=TextStyle(fontSize: 40);
  Widget build (BuildContext context){
    return DefaultTabController(length: 4,
        child: Scaffold(
    appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          Padding (
            padding:  const EdgeInsets.all(8.0),
          child:
          Icon(Icons.search),
        ),
      Padding (
        padding:  const EdgeInsets.all(8.0),
        child:
        Icon(Icons.camera_alt),
      ),
        PopupMenuButton(itemBuilder: (context){
          return[
            PopupMenuItem(child: Text('New group')),
            PopupMenuItem(child: Text(' New Broadcast')),
            PopupMenuItem(child: Text('linked devices')),
            PopupMenuItem(child: Text('starred messages')),
            PopupMenuItem(child: Text('setting')),

          ];
        })
        ],
      bottom: TabBar(tabs: [

          Tab(
        child: Icon(Icons.camera_alt)),



    Tab(child: Text('chat')),
    Tab(child: Text('group')),
    Tab(child: Text('call')),

        ],),
      ),
      body: Container(
        child: TabBarView(children: [
          Center(
            child: Text("CAMERA",
            style: mystyle,
        ),
          ),
          ListView.separated(
            itemCount:chatList.length,
            itemBuilder:(context,index){

            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(chatList[index].profilepic),),
              title: Text(chatList[index].title),
              subtitle: Text(chatList[index].message),
              trailing: Text(chatList[index].time),

            ) ;
          },
            separatorBuilder: (context,index){
            return Divider();
             },
          ),
          Center(
          child:Text("CHAT",
            style: mystyle,
          ),
          ),
          Text("GROUP",
            style: mystyle,
          ),
          Text("CALL",
            style: mystyle,
          ),


        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:const Color(0xff128C7E),
        onPressed: () {},
      child:  Icon(Icons.add,
      ),
    ),
    ),
    );

  }
}