import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            iconSize: 31.5,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close_outlined)),
        IconButton(
            iconSize: 25,
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
