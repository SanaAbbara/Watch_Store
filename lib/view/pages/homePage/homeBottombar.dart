import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_size.dart';
class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: AppSize.SizeIcon),
          label: 'Home',
          backgroundColor: AppColors.C1,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, size: AppSize.SizeIcon),
            label: 'Home',
            backgroundColor: AppColors.C1),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: AppSize.SizeIcon),
            label: 'Home',
            backgroundColor: AppColors.C1),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, size: AppSize.SizeIcon),
            label: 'Home',
            backgroundColor: AppColors.C1),
      ],
    );
  }
}
