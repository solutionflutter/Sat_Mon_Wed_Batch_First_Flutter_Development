import 'package:flutter/cupertino.dart';
import 'package:satmonwedbatchfirst/models/following_model.dart';

class FollowerModel {
  FollowerModel({
    @required this.username,
    @required this.userProfilePicture,
    @required this.friends,
  });

  String username;
  String userProfilePicture;
  int friends;
}
