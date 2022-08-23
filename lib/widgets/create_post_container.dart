// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(
                imageUrl: currentUser.imageUrl,
                isActive: true,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'What\'s on your mind?'))),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.2,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () => print("Live"),
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text("Live")),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                    onPressed: () => print("Photo"),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text("Photo")),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                    onPressed: () => print("Room"),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text("Room")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
