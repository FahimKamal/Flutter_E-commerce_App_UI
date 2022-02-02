import 'package:flutter/material.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/details/details_screen.dart';
import 'package:shop_ui/screens/home/components/product_card.dart';
import 'package:shop_ui/screens/home/components/section_title.dart';

import '../../../constants.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(pressSeeAll: () {}, title: 'Popular'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: demo_product[index]),
                      ),
                    );
                  },
                  product: demo_product[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
