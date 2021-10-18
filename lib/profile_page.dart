import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:satmonwedbatchfirst/edit_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 25,
        ),
        actions: [
          Container(
            height: 25,
            width: 105,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
              top: 15,
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.lime.shade500,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.create_rounded,
                      size: 15,
                      color: Colors.black,
                    ),
                  ]),
            ),
          ),
        ],
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      //extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //Profile image, name, address container
              Container(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    //Profile image
                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Mahmudul Mirsalin.jpg"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(105, 107, 103, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(250, 251, 252, 1),
                      ),
                    ),

                    // Address and Name container
                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Name Text
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Mahmudul Mursalin",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(34, 35, 40, 1),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            //Address Text
                            Text(
                              "3, BKMT Road, Tarer Pukur, Khulna-9100, Khulna, Bangladesh",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(45, 46, 47, 1),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
              ),

              // User Bio Conatiner

              Container(
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //Header Container in Bio

                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Text(
                              "Bio",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 19,
                              color: Color.fromRGBO(56, 60, 80, 1),
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Icon(
                            Icons.info_outline_rounded,
                            size: 19,
                            color: Color.fromRGBO(56, 60, 80, 1),
                          ),
                        ]
                      ),
                    ),

                    //Bio Container

                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "I am Mahmudul Mursalin."
                            "I have been working on youtube since 2017. "
                            "Having a good experience making sellable youtube content."
                        "I have completed my study form National University "
                            "and enrolled in mobile app development course which "
                            "is organized  by ICT Division and I am also a freelancer",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(100, 120, 140, 1),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),

              //button container

              Container(
                 height: MediaQuery.of(context).size.height/7,
                 width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 17),
                child: Wrap(
                  children:[

                    //post button container


                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 250, 250, .6),
                        border: Border.all(
                          color: Color.fromRGBO(31, 31, 31, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.post_add_sharp,
                            size: 15,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                            "Posts",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                      ),
                    ),
                    //following button container
                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 250, 250, .6),
                        border: Border.all(
                          color: Color.fromRGBO(21, 21, 21, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.message_outlined,
                            size: 15,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                              "Messenger",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(21, 21, 21, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                      ),
                    ),

                    //follower button container

                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(21, 21, 21, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                        color: Color.fromRGBO(250, 250, 250, .6),
                      ),
                      child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.follow_the_signs_rounded,
                            size: 15,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                              "Follower",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                      ),
                    ),

                    //Following button container

                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/3.2,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 250, 250, .6),
                        border: Border.all(
                          color: Color.fromRGBO(21, 21, 21, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: FlatButton.icon(
                          onPressed: (){}, 
                          icon: Icon(
                            Icons.add_circle,
                            size: 15,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ), 
                          label: Text(
                              "Following",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                      ),
                    ),
                  ]
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
