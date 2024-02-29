import 'package:bookly/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            width: 75.w,
            height: 16.1.h,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go(AppRoutes.searchView);
            },
            child: SizedBox(
              width: 25.w,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  Assets.searchIcon,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
