import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_cubit.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/widgets/cart_display/cart_display.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:online_shop_app/utils/navigation_service.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final PastryModel pastry;
  final int index;
  final PastryType pastryType;

  const DetailsPage({
    Key? key,
    required this.image,
    required this.pastry,
    required this.index,
    required this.pastryType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * .62,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        pastry.image,
                      ),
                      fit: BoxFit.cover),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, 2),
                    colors: [Color(0x00121212), Color(0xce121212)],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
            ),

            Positioned(
                bottom: 0,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * .42,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                    pastry.name,
                                    style: Theme.of(context).textTheme.headline2?.copyWith(
                                        fontSize: 22),
                                  )
                              ),
                              Expanded(
                                  child: RichText(
                                    textAlign: TextAlign.end,
                                    text: TextSpan(
                                        text: '\$',
                                        style: Theme.of(context).textTheme.bodyText1,
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '22',
                                              style: Theme.of(context).textTheme.headline1?.copyWith(
                                                  fontSize: 28
                                              )
                                          )
                                        ]),
                                  )
                              )
                            ],
                          ),

                          const SizedBox(height: 20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _littleDetail(
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                      pastry.rating.toString(),
                                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                          color: Colors.black
                                      )
                                  )
                              ),

                              _littleDetail(
                                  Image.asset(
                                    'assets/images/raster/calories.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                      pastry.calories,
                                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                          color: Colors.black
                                      )
                                  )
                              ),

                              _littleDetail(
                                  Image.asset(
                                    'assets/images/raster/clock.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                      pastry.deliveryTime,
                                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                          color: Colors.black
                                      )
                                  )
                              ),

                            ],
                          ),

                          const SizedBox(height: 20,),

                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Details',
                                      style: Theme.of(context).textTheme.headline2,
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 20,),

                                SizedBox(
                                  width: size.width,
                                  child: Text(
                                    pastry.detail,
                                    style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 18,
                        left: 18,
                        right: 18,
                        child: GestureDetector(
                          onTap: (){
                            if(pastry.addedToCart){
                              BlocProvider.of<ShoppingCartCubit>(context)
                                  .removeFromShoppingCart(
                                  pastry,
                                  index,
                                  _decideList(context)
                              );
                              Fluttertoast.showToast(
                                  msg: "Item Removed To Cart",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: AppColors.primaryColor
                              );
                            }else{
                              BlocProvider.of<ShoppingCartCubit>(context)
                                  .addToShoppingCart(
                                  pastry,
                                  index,
                                  _decideList(context)
                              );

                              Fluttertoast.showToast(
                                  msg: "Item Added To Cart",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: AppColors.primaryColor
                              );
                            }

                            popView(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              border: Border.all(
                                  color: AppColors.primaryColor,
                                  width: 1.6
                              ),
                            ),
                            padding: const EdgeInsets.all(14),
                            child: Center(
                              child: Text(
                                pastry.addedToCart ? 'Remove From Cart' : 'Add To Cart',
                                style: Theme.of(context).textTheme
                                    .headline2?.copyWith(color: AppColors.primaryColor),
                              ),
                            ),
                          ),
                        )
                    )
                  ],
                ),
            ),


            Positioned(
              left: 18,
                top: 40,
                child: GestureDetector(
                  onTap: (){
                    popView(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.primaryColor,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                  ),
                )
            ),

           const Positioned(
              right: 18,
                top: 40,
                child: CartDisplay()
            )

          ],
        ),
      ),
    );
  }

  Widget _littleDetail(Widget firstWidget, Widget secondWidget){
    return Container(
      child: Row(
        children: [
          firstWidget,
          const SizedBox(width: 4,),
          secondWidget
        ],
      ),
    );
  }

  List<PastryModel> _decideList(BuildContext context){
    GetLocalMockDataCubit localMockDataCubit = BlocProvider.of<GetLocalMockDataCubit>(context);

    if(pastryType == PastryType.TODAYSPECIAL){
      return localMockDataCubit.todaySpecialPasteryList;
    }else if(pastryType == PastryType.RECOMMENDED){
      return localMockDataCubit.recommendedPasteryList;
    }else{
      return localMockDataCubit.overPopularPasteryList;
    }
  }
}
