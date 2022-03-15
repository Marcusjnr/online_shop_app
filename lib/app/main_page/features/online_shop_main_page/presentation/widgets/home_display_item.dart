import 'package:flutter/material.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/widgets/items_container.dart';

class HomeDisplayItem extends StatelessWidget {
  final List<PastryModel>? pastries;
  final Function(PastryModel) onTap;
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

        SizedBox(
          height: 180,
          child: ListView.builder(
              itemCount: pastries!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ItemsContainer(
                onTap:(){
                  onTap(pastries![index]);
                },
                pastry: pastries![index],
              )
          ),
        )
      ],
    );
  }
}
