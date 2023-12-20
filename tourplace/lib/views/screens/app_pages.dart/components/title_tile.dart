import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class TitleTile extends StatelessWidget {
  const TitleTile({
    Key? key,
    required this.tittle,
    required this.text,
  }) : super(key: key);

  final String tittle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            tittle,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                height: 0,
                // letterSpacing: 0,
                fontSize: 16),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: kBackground,
                fontWeight: FontWeight.w600,
                height: 0,
                // letterSpacing: 0,
                fontSize: 12),
                
          ),
        ],
      ),
    );
  }
}
