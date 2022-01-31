class User{
  String name;
  String image;
  bool isOnline;
  User({required this.name, required this.image, required this.isOnline});
}
class Users {
  List<User> stroy=[
    User(name: "Joshua", image:"assets/images/Joshua.png" , isOnline: true),
    User(name: "Martin", image:"assets/images/Martin.png", isOnline: true),
    User(name: "Karen", image:"assets/images/Karen.png", isOnline: true),
    User(name: "Jack", image: "assets/images/Oval (12).png", isOnline: true)
  ];
  List<User> chats=[
    User(name:"Martin Randolph" , image: "assets/images/Martin.png", isOnline:false),
    User(name:"Andrew Paker" , image: "assets/images/Andrey_Parker.png", isOnline:false),
    User(name: "Karen Castillo", image: "assets/images/Karen.png", isOnline:false),
    User(name:"Maisy Humpherey" , image: "assets/images/Maisy_humphrey.png", isOnline:false),
    User(name: "Joshua Lawrence", image: "assets/images/Joshua.png", isOnline:false),
    User(name: " Frank Jack", image: "assets/images/Oval.png", isOnline:false),
  ];

  List messege=[
    "You:What's man!.9:40 AM",
    "you:Ok,thanks!.9:25 AM",
    "You:Ok,See you in Tomarrov.Friday",
    "Have a good day, Maisy!.Friday",
    "The businness plan loo... Thu",
    "Finally fineshed"
  ];
}
