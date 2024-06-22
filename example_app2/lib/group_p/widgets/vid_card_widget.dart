import 'package:flutter/material.dart';

class VidCard extends StatelessWidget {
  final String thumbnail;
  final double view;
  final String smallThumbnail;
  final String title;
  const VidCard({
    super.key,
    required this.thumbnail,
    required this.view,
    required this.smallThumbnail,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          color: Colors.green,
          child: Column(
            children: [
              Stack(
                children: [
                  const Placeholder(
                    fallbackWidth: 200,
                    fallbackHeight: 100,
                  ),
                  Positioned(
                    bottom: 3,
                    child: Text('$view views'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(radius: 15),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(title),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
