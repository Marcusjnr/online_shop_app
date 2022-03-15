import 'package:flutter/material.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:online_shop_app/utils/navigation_service.dart';

class CustomAppBar extends AppBar {
  final Function? onTap;

  CustomAppBar({required this.onTap})
      : super(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    actions: [
      GestureDetector(
        onTap: (){
          onTap!();
        },
        child: Container(
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.primaryColor
          ),
          child: Row(
            children: [
              Icon(Icons.shopping_cart, size: 14,),
              Text('0')
            ],
          ),
        ),
      )
    ],
  );
}

