import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedbatchfirst/models/models.dart';
import 'package:satmonwedbatchfirst/profile_page.dart';


List<Postmodel> postmodels = [
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 34, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 234, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 57, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 43, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 56, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 65, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 67, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 76, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 3343, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: null, address: null, likes: 343, postImageURL: null),
];

class Post_page extends StatefulWidget {
  const Post_page({Key key}) : super(key: key);

  @override
  _Post_pageState createState() => _Post_pageState();
}

class _Post_pageState extends State<Post_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(240, 240, 240, .6),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Color.fromRGBO(25, 25, 45, .6),
            ),
            iconSize: 25,
          ),
          title: Text(
            "Posts Page",
            style: TextStyle(
              color: Color.fromRGBO(25, 25, 45, .6),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Post_page(),
                  ),
                );
              },
              icon: Icon(
                Icons.refresh_outlined,
                color: Color.fromRGBO(25, 25, 45, .6),
              ),
              iconSize: 25,
            ),
          ],
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: ListView.builder(
            itemCount:, 
            itemBuilder: (BuildContext context,int index){
              return Container();
            }
          ),
        )
      );
  }
}
