import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/favourite_bloc/favourite_state.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_cubit.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_state.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/widgets/items_container.dart';

import '../bloc/favourite_bloc/favourite_cubit.dart';

class HomeDisplayItem extends StatelessWidget {
  final List<PastryModel>? pastries;
  final Function(PastryModel, int) onTap;
  final String title;

  const HomeDisplayItem({
    Key? key,
    required this.pastries,
    required this.onTap,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.left,
            ),
          ],
        ),

        const SizedBox(height: 20,),

        BlocConsumer<FavouriteCubit, FavouriteState>(
            listener: (context, favouriteState){

            },
            builder: (context, favouriteState) {
              return SizedBox(
                height: 180,
                child: ListView.builder(
                    itemCount: pastries!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ItemsContainer(
                      onTap:(){
                        onTap(pastries![index], index);
                      },
                      pastry: pastries![index],
                      index: index,
                      favouriteTap: (){
                        BlocProvider.of<FavouriteCubit>(context).markFavourite(
                            pastries![index],
                            pastries!,
                            index,
                        );
                      },
                    )
                ),
              );
            },
        )
      ],
    );
  }
}
