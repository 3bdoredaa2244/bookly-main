import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class TitleMedium extends StatelessWidget {
  const TitleMedium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 18),
      child: Text(
        'Newest Seller',
        style: Styles.textStyle20,
      ),
    );
  }
}
