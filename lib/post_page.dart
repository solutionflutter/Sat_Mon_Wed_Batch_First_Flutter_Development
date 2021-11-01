import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedbatchfirst/models/models.dart';
import 'package:satmonwedbatchfirst/profile_page.dart';

List<Postmodel> postmodels = [
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Khulna Government Mahila College",
      address: "Jalil - Sarani, Khulna,Khulna,Bangaldesh",
      likes: 34,
      postImageURL: "images/Posts/post_1.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Khulna College",
      address: "Seikh Para Main Rd, Khulna,Khulna,Bangladesh",
      likes: 234,
      postImageURL: "images/Posts/post_2.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Ahsanullah College",
      address: "KDA Ave, Khulna,Khulna,Bangladesh",
      likes: 57,
      postImageURL: "images/Posts/post_3.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Azam Khan Government Commerce College",
      address: "Babu Khan Rd, Khulna,Khulna,Bangladesh",
      likes: 43,
      postImageURL: "images/Posts/post_4.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Govt. Brajalal (BL) College",
      address: "Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh",
      likes: 56,
      postImageURL: "images/Posts/post_5.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Govt. M. M. City College",
      address: "300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh",
      likes: 65,
      postImageURL: "images/Posts/post_6.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Khulna Public College",
      address: "public college, road, Khulna-9000,Khulna,Bangladesh",
      likes: 67,
      postImageURL: "images/Posts/post_7.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Khulna Government College",
      address: "Hasanbag Road, Khulna,Khulna,Bangladesh",
      likes: 76,
      postImageURL: "images/Posts/post_8.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Government Sundarban Adarsha College",
      address: "91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh",
      likes: 3343,
      postImageURL: "images/Posts/post_9.jpg"),
  Postmodel(
      username: "Mahmudul Mursalin",
      profileImageURL: "images/Mahmudul Mirsalin.jpg",
      caption: "Khulna Islamia Degree College",
      address: " M A Bari St, Khulna,Khulna,Bangladesh",
      likes: 343,
      postImageURL: "images/Posts/post_10.jpg"),
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
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: postmodels.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Header Row profile image
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 34,
                        backgroundImage:
                            AssetImage("${postmodels[index].profileImageURL}"),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: "${postmodels[index].username}\n",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, .6),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Address Row and Caption taking column

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Column(
                        children: [
                          // Addtess row

                          Container(
                            height: MediaQuery.of(context).size.height / 30,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "${postmodels[index].address}",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Caption Container

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 25,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "${postmodels[index].caption}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
