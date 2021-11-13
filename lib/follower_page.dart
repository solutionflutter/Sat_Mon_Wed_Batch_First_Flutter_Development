import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedbatchfirst/models/models.dart';
import 'package:satmonwedbatchfirst/profile_page.dart';

List<FollowerModel> followerModels = [
  FollowerModel(
    username: "Shakib Al Hasan",
    userProfilePicture: "images/Users/user_1.jpg",
    friends: 23454,
  ),
  FollowerModel(
    username: "Mahmudullah Riyad",
    userProfilePicture: "images/Users/user_2.jpg",
    friends: 827382,
  ),
  FollowerModel(
    username: "Mushfiqur Rahim",
    userProfilePicture: "images/Users/user_3.jpg",
    friends: 362632,
  ),
  FollowerModel(
    username: "Mustafizur Rahman",
    userProfilePicture: "images/Users/user_4.jpg",
    friends: 782378273,
  ),
  FollowerModel(
    username: "Tamim Iqbal",
    userProfilePicture: "images/Users/user_5.jpg",
    friends: 2738728,
  ),
  FollowerModel(
    username: "Sharirer Nafiz",
    userProfilePicture: "images/Users/user_6.jpg",
    friends: 77726372,
  ),
  FollowerModel(
    username: "Nafees Iqbal",
    userProfilePicture: "images/Users/user_7.jpg",
    friends: 783728,
  ),
  FollowerModel(
    username: "Saeed Anwar",
    userProfilePicture: "images/Users/user_8.jpg",
    friends: 7238728,
  ),
  FollowerModel(
    username: "Babar Azam",
    userProfilePicture: "images/Users/user_9.jpg",
    friends: 728323,
  ),
  FollowerModel(
    username: "Soumya Sarkar",
    userProfilePicture: "images/Users/user_10.jpg",
    friends: 82838783,
  ),
];

class Follower_page extends StatefulWidget {
  const Follower_page({Key key}) : super(key: key);

  @override
  _Follower_pageState createState() => _Follower_pageState();
}

class _Follower_pageState extends State<Follower_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Follower Page",
          style: TextStyle(
            color: Color.fromRGBO(25, 25, 35, .6),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(25, 25, 35, .6),
          ),
          iconSize: 25,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh_outlined,
                color: Color.fromRGBO(25, 25, 35, .6),
              ),
              iconSize: 25,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Follower_page(),
                  ),
                );
              }),
        ],
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
      ),
      body: Center(
        child: Text("Follower Page"),
      ),
    );
  }
}
