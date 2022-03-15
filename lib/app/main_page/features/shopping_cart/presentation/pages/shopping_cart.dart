import 'package:flutter/material.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/widgets/cart_item.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:online_shop_app/utils/navigation_service.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            popView(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.grey,
            size: 30,
          ),
        ),
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => CartItem()
        ),
      ),
    );
  }
}
