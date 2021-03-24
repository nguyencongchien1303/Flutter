import 'package:app_shop_detail/constants.dart';
import 'package:app_shop_detail/models/Product.dart';
import 'package:app_shop_detail/screens/detail/components/add_to_cart.dart';
import 'package:app_shop_detail/screens/detail/components/color_and_size.dart';
import 'package:app_shop_detail/screens/detail/components/counter_with_fav_btn.dart';
import 'package:app_shop_detail/screens/detail/components/description.dart';
import 'package:app_shop_detail/screens/detail/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //lấy size của màn hình body

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn(),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
