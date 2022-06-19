import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 10,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: NetworkImage(
          //       ''),
          // ),
        ),
      ),
    );
  }
}
