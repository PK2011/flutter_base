import 'package:flutter/material.dart';

class NetworkImage extends StatelessWidget {
  const NetworkImage({Key? key, required this.imageUrl, this.fit})
      : super(key: key);
  final String imageUrl;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      fit: fit ?? BoxFit.fill,
    );
  }
}
