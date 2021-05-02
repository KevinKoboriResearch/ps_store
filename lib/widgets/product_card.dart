import "package:flutter/material.dart";
import "dart:ui";
import "package:ps_store/widgets/card_clipper.dart";
import "package:ps_store/widgets/clip_shadow_path.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import "package:ps_store/models/product_model.dart";
import "package:ps_store/utils/consts.dart";
import "package:ps_store/views/details_page.dart";

class ProductCard extends StatelessWidget {
  ProductCard({this.productsList, this.index, this.isCurrentItem, this.width});
  final List<ProductModel> productsList;
  final int index, isCurrentItem;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 32, 32),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailsPage(
                product: productsList[index],
              ),
            ),
          );
        },
        child: ClipShadowPath(
          clipper: CardClipper(
            cornerSize: 30,
            diagonalHeight: 44,
          ),
          shadow: Shadow(
            blurRadius: 24,
            color: index == isCurrentItem
                ? Colors.black.withOpacity(0.4)
                : Colors.black.withOpacity(0.2),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  index == isCurrentItem ? color1 : color1.withOpacity(0.8),
                  index == isCurrentItem ? color2 : color2.withOpacity(0.8),
                ],
              ),
            ),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset(
                        "assets/logos/playstation_logo.png",
                        color: Colors.black.withOpacity(0.4),
                        width: 40,
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                Hero(
                  tag: "${productsList[index].id}",
                  child: Image.asset(
                    // 'assets/images/ps5_control_black.png',
                    productsList[index].image,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 125,
                        child: Text(
                          productsList[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "ZenDots",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: "Official PS5 ",
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: "Controller",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
