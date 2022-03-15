import 'package:flutter/material.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/widgets/cart_item.dart';
import 'package:online_shop_app/utils/navigation_service.dart';

class ShoppingCart extends StatelessWidget {
  final ShoppingCartCubit shoppingCartCubit;

  const ShoppingCart({
    Key? key,
    required this.shoppingCartCubit
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(16),
        child: decideLayout(context),
      ),
    );
  }

  Widget decideLayout(BuildContext context){
    if(shoppingCartCubit.shoppingCartList.isEmpty){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              'assets/images/raster/cart.png',
            width: 100,
            height: 100,
          ),

          const SizedBox(height: 20,),

          Text(
            'Your Cart is Empty',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Colors.grey,
              fontSize: 20
            ),
          )
        ],
      );
    }
    return ListView.builder(
        itemCount: shoppingCartCubit.shoppingCartList.length,
        itemBuilder: (context, index) => CartItem(
          pastry: shoppingCartCubit.shoppingCartList[index],
          index: index,
        )
    );
  }
}
