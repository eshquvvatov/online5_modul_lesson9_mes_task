import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../madels.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  bool isTap=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #appBar
backgroundColor:isTap?Colors.white:Colors.black,
      appBar: AppBar(

        leadingWidth: 60,
        backgroundColor:isTap? Colors.white:Colors.black,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            maxRadius: 15,
            backgroundImage: AssetImage("assets/images/Oval.png"),
          ),
        ),
        titleSpacing: 0,
        title: const Text(
          "Chats",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade100,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade100,
            child: GestureDetector(onTap: (){
              setState(() {
                isTap=!isTap;
              });
            },
              child: const Icon(
                CupertinoIcons.pen,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],

        /// search
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 40,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  isDense: true,
                  isCollapsed: true,
                  prefixIconColor: Colors.black,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 20),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),

          /// #story
          storyOf_iteam(),

          ///#chatting
          chattingOf_iteam()
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,

        decoration: BoxDecoration(color: Colors.black,gradient:isTap?
        RadialGradient(
          center: Alignment.centerLeft,
          colors: [
            Colors.grey.shade500,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
          radius:10

        ):
        RadialGradient(
         radius: 60,
            colors: [
              Colors.black,
              Colors.grey,
              Colors.black,
              Colors.grey,
        ])),
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              CupertinoIcons.chat_bubble_fill,
              color:isTap? Colors.black:Colors.white,
              size: 30,
            ),
            Stack(
              children: [
            Icon(
              CupertinoIcons.person_2_fill,
              color: Colors.grey,
              size: 40,
            ),
            Positioned(top: 0,right:0,
                child: CircleAvatar(backgroundColor:!isTap? Colors.black:Colors.grey.shade300,
              minRadius:5,maxRadius: 6,
              child: Text("2",style: TextStyle(fontWeight:
              FontWeight.bold,color: Colors.green,fontSize: 10),),
            ))
              ],
            ),
            Icon(
              CupertinoIcons.compass_fill,
              color: Colors.grey,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  ListView chattingOf_iteam() {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: Users().chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            minVerticalPadding: 10,
            minLeadingWidth: 50,
            contentPadding: EdgeInsets.only(left: 10),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(Users().chats[index].image),
            ),
            dense: false,
            horizontalTitleGap: 10,
            title: Text(
              Users().chats[index].name,
              style:
                  TextStyle(color:isTap? Colors.black:Colors.white.withOpacity(0.7), fontWeight: FontWeight.bold),
            ),
            subtitle: Text(Users().messege[index],style: TextStyle(color: Colors.grey),),
            trailing: Icon(Icons.check_circle_outline_outlined,color: Colors.grey.withOpacity(0.3),),
          );
        });
  }

  SizedBox storyOf_iteam() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: Users().stroy.length + 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Column(
                children: [
                  Stack(
                    children: [
                      index == 0
                          ? CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey.shade300,
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black),
                              ),
                            )
                          : CircleAvatar(
                              backgroundImage:
                                  AssetImage(Users().stroy[index - 1].image),
                              radius: 30,
                            ),
                      Positioned(
                          right: 5,
                          bottom: 5,
                          child: index == 0
                              ? CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                )
                              : CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                      radius: 7.5,
                                      backgroundColor:
                                          Users().stroy[index - 1].isOnline
                                              ? Colors.green
                                              : Colors.white),
                                )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  index == 0
                      ? Text(
                          "your Story",
                          style: TextStyle(color: Colors.grey),
                        )
                      : Text(Users().stroy[index - 1].name,
                          style: TextStyle(color: Colors.grey))
                ],
              ),
            );
          }),
    );
  }
}
