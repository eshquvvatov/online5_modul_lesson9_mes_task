import 'package:flutter/material.dart';

import 'madel.dart';

class FaceBook_UI_1 extends StatefulWidget {
  const FaceBook_UI_1({Key? key}) : super(key: key);

  @override
  _FaceBook_UI_1State createState() => _FaceBook_UI_1State();
}

class _FaceBook_UI_1State extends State<FaceBook_UI_1> {
  bool isTap=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:isTap?Colors.white: Colors.black,
      /// #appbar

      appBar: AppBar(
        elevation: 0,
        backgroundColor:isTap?Colors.white: Colors.black,
        title: const Text(
          "facebook",
          style: TextStyle(
              fontSize: 35, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions:  [
          Icon(
            Icons.search_sharp,
            color: Colors.grey,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(onTap: (){
            setState(() {
              isTap=!isTap;
            });
          },
            child: Icon(
            Icons.camera_alt_sharp,
            color: Colors.grey,
          ),),
          SizedBox(
            width: 20,
          )
        ],
      ),

      ///

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            /// #search
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/facebook/image15.jpg",
                            ),
                            radius: 20,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), border:Border.all(color: Colors.grey) ),
                          padding: EdgeInsets.only(right: 10),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              contentPadding: EdgeInsets.only(
                                  right: 10, left: 10, top: 10, bottom: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(25)),
                              hintText: "What's on your mind",
                              hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.video_call,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Live",
                                      style: TextStyle(fontSize: 20,color: Colors.grey),
                                    )
                                  ],
                                ))),
                        const VerticalDivider(
                          width: 2,
                          color: Colors.grey,
                        ),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.photo,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      "Photo",
                                      style: TextStyle(fontSize: 20,color: Colors.grey),
                                    )
                                  ],
                                ))),
                        const VerticalDivider(
                          width: 2,
                          color: Colors.grey,
                        ),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Check In",
                                      style: TextStyle(fontSize: 20,color: Colors.grey),
                                    )
                                  ],
                                ))),
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),

            /// #friends
            SizedBox(
              height: 160,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Images().images.length,
                  itemBuilder: (context, index) {
                    return friendsOf_iteams(index);
                  }),
            ),

            SizedBox(
              height: 10,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
            /// aboutFrinds
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Images().images.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        dense: false,
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        minLeadingWidth: 30,
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                              Images().images[(index * 17 + 3) % 15].image),
                        ),
                        title: Text(
                          "User",
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 20,
                              color:isTap? Colors.black:Colors.grey.shade400,
                              fontWeight: FontWeight.bold),
                        ),
                        isThreeLine: false,
                        subtitle: Text(
                          "1 hour ago",
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        trailing: Icon(Icons.play_arrow_rounded,color: Colors.grey,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          Images().text[1],
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  Images().images[(index * 17 + 3) % 15].image,
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.volunteer_activism),
                            ),
                            Text("2,5k"),

                            Text(
                              "400 Comments",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }

  Stack friendsOf_iteams(int index) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: index == 0 ? 5 : 5,
              right: index == Images().images.length ? 10 : 5,
              top: 10,
              bottom: 10),
          height: 140,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Images().images[index].image)),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.09),
                      Colors.black.withOpacity(0.02),
                      Colors.black.withOpacity(0.01),
                    ])),
            child: Text(
              "User",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        Positioned(
            top: 17,
            left: 15,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 13,
                backgroundImage:
                    AssetImage(Images().images[(index * 17 + 3) % 15].image),
              ),
            ))
      ],
    );
  }
}
