import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:online_shop_app/app/base/base_view.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_cubit.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_state.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/pages/details_page.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/pages/main_page/main_page_view_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/widgets/cart_display/cart_display.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/widgets/home_display_item.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:online_shop_app/utils/navigation_service.dart';

import '../../../data/models/pastry_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BaseView<MainPageViewModel>(
      model: MainPageViewModel(
          BlocProvider.of<GetLocalMockDataCubit>(context)
      ),
      onModelReady: (model) => model.init(),
      builder: (context, model, _)=> BlocBuilder<GetLocalMockDataCubit, GetLocalMockDataState>(
          builder: (context, pateriesState){
            if(pateriesState is GetLocalMockDataLoaded){
              return _listItems(
                  context,
                  model!,
                  pateriesState.overPopularPasteryList,
                pateriesState.recommendedPasteryList,
                pateriesState.todaySpecialPasteryList
              );
            }
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
      ),

    );
  }

  Widget _listItems(
      BuildContext context,
      MainPageViewModel model,
      List<PastryModel> overPopularItems,
      List<PastryModel> recommended,
      List<PastryModel> todaySpecial
      ){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    FeatherIcons.alignLeft,
                    color: AppColors.primaryColor,
                    size: 30,
                  ),

                  CartDisplay(),
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'What would\nyou like to eat?',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),

              const SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.accentColor,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here...',
                      hintStyle: Theme.of(context).textTheme.subtitle1,
                      prefixIcon: Icon(
                        FeatherIcons.search,
                        color: AppColors.primaryColor.withOpacity(.8),
                        size: 18,
                      )
                  ),

                ),
              ),

              HomeDisplayItem(
                title: 'Over Popular Items',
                onTap: (pastery, index){
                  navigate(context, DetailsPage(
                    image: 'assets/images/raster/doughnut.jpg',
                    pastry: pastery,
                    index: index,
                    pastryType: PastryType.OVERPOPULAR,
                  ));
                },
                pastries: overPopularItems,
              ),

              HomeDisplayItem(
                title: 'Recommended',
                onTap: (pastery, index){
                  navigate(context, DetailsPage(
                    image: 'assets/images/raster/doughnut.jpg',
                    pastry: pastery,
                    index: index,
                    pastryType: PastryType.RECOMMENDED,
                  ));
                },
                pastries: recommended,
              ),

              HomeDisplayItem(
                title: "Today's Special",
                onTap: (pastery, index){
                  navigate(context, DetailsPage(
                    image: 'assets/images/raster/doughnut.jpg',
                    pastry: pastery,
                    index: index,
                    pastryType: PastryType.TODAYSPECIAL,
                  ));
                },
                pastries: todaySpecial,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

