import 'package:flutter/material.dart';
import 'package:image_search_app/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              photo.previewURL,
            ),
          ),
        ),
      ),
    );
  }
}
