import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/base/base_view.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/widgets/cart_display/view_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_state.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/pages/shopping_cart.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:online_shop_app/utils/navigation_service.dart';

class CartDisplay extends StatelessWidget {
  const CartDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CartDisplayViewModel>(
        model: CartDisplayViewModel(
            BlocProvider.of<ShoppingCartCubit>(context)
        ),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) => GestureDetector(
          onTap: (){
            navigate(context!, ShoppingCart(
              shoppingCartCubit: BlocProvider.of<ShoppingCartCubit>(context),
            ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.primaryColor
            ),
            padding: const EdgeInsets.only(
                top: 8,
                right: 12,
                bottom: 8,
                left: 12
            ),
            child: BlocConsumer<ShoppingCartCubit, ShoppingCartState>(
              listener: (context, shoppingCartState){
                if(shoppingCartState is ShoppingCartItemAdded){
                  model?.getShoppingCartLength(shoppingCartState.shoppingCartList);
                }
              },
              builder: (context, shoppingCartState){
                return Row(
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      size: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 12,),

                    Text(
                      model!.itemsInCart.toString(),
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white),
                    )
                  ],
                );
              },
            ),
          ),
        ),);
  }
}
