import 'package:flutter/material.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Explore',
          style: Theme.of(context).textTheme.headline4!.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Text(
          'Best Outfits for you',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}