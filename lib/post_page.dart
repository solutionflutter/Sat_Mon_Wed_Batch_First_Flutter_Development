import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedbatchfirst/models/models.dart';
import 'package:satmonwedbatchfirst/profile_page.dart';


List<Postmodel> postmodels = [
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Khulna Government Mahila College", address: "Jalil - Sarani, Khulna,Khulna,Bangaldesh", likes: 34, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Khulna College", address: "Seikh Para Main Rd, Khulna,Khulna,Bangladesh", likes: 234, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Ahsanullah College", address: "KDA Ave, Khulna,Khulna,Bangladesh", likes: 57, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Azam Khan Government Commerce College", address: "Babu Khan Rd, Khulna,Khulna,Bangladesh", likes: 43, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Govt. Brajalal (BL) College", address: "Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh", likes: 56, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Govt. M. M. City College", address: "300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh", likes: 65, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Khulna Public College", address: "public college, road, Khulna-9000,Khulna,Bangladesh", likes: 67, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Khulna Government College", address: "Hasanbag Road, Khulna,Khulna,Bangladesh", likes: 76, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Government Sundarban Adarsha College", address: "91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh", likes: 3343, postImageURL: null),
  Postmodel(username: "Mahmudul Mursalin", profileImageURL: "images/Mahmudul Mirsalin.jpg", caption: "Khulna Islamia Degree College", address: " M A Bari St, Khulna,Khulna,Bangladesh", likes: 343, postImageURL: null),
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
            itemCount: postmodels.length,
            itemBuilder: (BuildContext context,int index){
              return Container();
            }
          ),
        )
      );
  }
}
