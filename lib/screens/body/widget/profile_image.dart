import 'package:flutter/material.dart';
class ProfileImage extends StatelessWidget {
  final Alignment alignment;
  final double size;
  final String photoPath;

  const ProfileImage({Key? key,required this.alignment,required this.size,required this.photoPath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:alignment,
      child: PhysicalModel(
        shape: BoxShape.circle,
        color: Colors.black,
        elevation: 20,
        child: CircleAvatar(
          radius: size,
          backgroundImage: AssetImage(photoPath),
          backgroundColor: Colors.grey,
        ),
      ),
    );;
  }
}
