import "package:flutter/material.dart";
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:ps_store/widgets/product_card.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import "package:visibility_detector/visibility_detector.dart";
import "package:ps_store/models/product_model.dart";
import "package:ps_store/utils/consts.dart";
import "package:ps_store/providers/product_provider.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> productsList = ProductsState().categoryPS5Controls;
  int indexPage = 0;
  int indexType = 0;
  int isCurrentItem = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 480),
        child: Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: color2,
              ),
              Positioned(
                bottom: 120,
                left: 260,
                child: Container(
                  height: MediaQuery.of(context).size.height - 120,
                  width: MediaQuery.of(context).size.width - 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        color3,
                        color4,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 110,
                right: -34,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "DUAL SENSE",
                    style: TextStyle(
                      letterSpacing: 6,
                      fontWeight: FontWeight.w900,
                      fontSize: 120,
                      fontFamily: "Lato",
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 38, 32, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 46,
                          width: 46,
                          child: NeumorphicButton(
                            onPressed: () {},
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(100),
                              ),
                              shape: NeumorphicShape.convex,
                              color: color2,
                              depth: 3,
                              intensity: 0.4,
                              lightSource: LightSource.topLeft,
                              shadowLightColor: Colors.white.withOpacity(0.4),
                              shadowDarkColor: Colors.black,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/icons/png/menu.png",
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 46,
                          width: 46,
                          child: Stack(
                            children: [
                              NeumorphicButton(
                                onPressed: () {},
                                style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(100),
                                  ),
                                  shape: NeumorphicShape.convex,
                                  color: color5,
                                  depth: 3,
                                  intensity: 0.4,
                                  lightSource: LightSource.topLeft,
                                  shadowLightColor:
                                      Colors.white.withOpacity(0.4),
                                  shadowDarkColor: Colors.black,
                                ),
                                padding: const EdgeInsets.fromLTRB(8, 8, 12, 8),
                                child: Container(
                                  height: 46,
                                  width: 46,
                                  child: SvgPicture.asset(
                                    "assets/icons/svg/cart.svg",
                                    semanticsLabel: "Profile",
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 12,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: color3,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(200),
                                    ),
                                  ),
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Featured",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: "ZenDots",
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Products",
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: "ZenDots",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
                    child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      items: [
                        BottomNavigationBarItem(
                          backgroundColor: Colors.transparent,
                          icon: indexType == 0
                              ? Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    height: 60,
                                    width: 68,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                      child: Image.asset(
                                        "assets/icons/png/filter.png",
                                        color: color3,
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                  child: Container(
                                    height: 60,
                                    width: 68,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                      child: Image.asset(
                                        "assets/icons/png/filter.png",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: Colors.transparent,
                          icon: indexType == 1
                              ? Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: color4.withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        color3,
                                        color4,
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 68,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                    child: Image.asset(
                                      "assets/icons/png/ps5_controls.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Colors.grey[900].withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        color1,
                                        color2,
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 68,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                    child: Image.asset(
                                      "assets/icons/png/ps5_controls.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                          label: "Controls",
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: Colors.transparent,
                          icon: indexType == 2
                              ? Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: color4.withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        color3,
                                        color4,
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 68,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                    child: Image.asset(
                                      "assets/icons/png/psp.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Colors.grey[900].withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        color1,
                                        color2,
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 68,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                    child: Image.asset(
                                      "assets/icons/png/psp.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: Colors.transparent,
                          icon: indexType == 3
                              ? Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: color4.withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        color3,
                                        color4,
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 68,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    child: Image.asset(
                                      "assets/icons/png/ps5_console.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Colors.grey[900].withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        color1,
                                        color2,
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 68,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    child: Image.asset(
                                      "assets/icons/png/ps5_console.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                          label: "Home",
                        ),
                      ],
                      currentIndex: indexType,
                      onTap: (newIndex) {
                        setState(() {
                          indexType = newIndex;
                        });
                      },
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1.08,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return VisibilityDetector(
                          key: Key(index.toString()),
                          onVisibilityChanged: (VisibilityInfo info) {
                            if (info.visibleFraction == 1)
                              isCurrentItem = index;
                          },
                          child: ProductCard(
                            productsList: productsList,
                            index: index,
                            isCurrentItem: isCurrentItem,
                            width: 230,
                          ),
                        );
                      },
                      viewportFraction: 0.7,
                      outer: true,
                      itemWidth: 200,
                      scale: 0.9,
                      itemCount: productsList.length,
                      autoplay: false,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                        shape: NeumorphicShape.convex,
                        color: Colors.transparent,
                        depth: 3,
                        intensity: 0.4,
                        lightSource: LightSource.topLeft,
                        shadowLightColor: Colors.white.withOpacity(0.4),
                        shadowDarkColor: Colors.black,
                      ),
                      child: BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        elevation: 0,
                        items: [
                          BottomNavigationBarItem(
                            backgroundColor: color5,
                            icon: indexPage == 0
                                ? Padding(
                                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            spreadRadius: 6,
                                            blurRadius: 10,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            color3,
                                            color4,
                                          ],
                                        ),
                                      ),
                                      height: 40,
                                      width: 106,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 2, 0),
                                            child: Image.asset(
                                              "assets/icons/png/house.png",
                                              height: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          VerticalDivider(
                                            thickness: 2,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
                                            child: Text(
                                              "Home",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Image.asset(
                                    "assets/icons/png/house.png",
                                    height: 24,
                                    color: Colors.white,
                                  ),
                            label: "Home",
                          ),
                          BottomNavigationBarItem(
                            backgroundColor: color6,
                            icon: indexPage == 1
                                ? Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            spreadRadius: 6,
                                            blurRadius: 10,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            color3,
                                            color4,
                                          ],
                                        ),
                                      ),
                                      height: 40,
                                      width: 106,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 2, 0),
                                            child: SvgPicture.asset(
                                              "assets/icons/svg/user.svg",
                                              height: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          VerticalDivider(
                                            thickness: 2,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
                                            child: Text(
                                              "Profile",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/svg/user.svg",
                                    height: 24,
                                    color: Colors.white,
                                  ),
                            label: "Home",
                          ),
                          BottomNavigationBarItem(
                            backgroundColor: color7,
                            icon: indexPage == 2
                                ? Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 6,
                                              blurRadius: 10,
                                              offset: Offset(0, 3)),
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            color3,
                                            color4,
                                          ],
                                        ),
                                      ),
                                      height: 40,
                                      width: 106,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 2, 0),
                                            child: SvgPicture.asset(
                                              "assets/icons/svg/settings.svg",
                                              height: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                          VerticalDivider(
                                            thickness: 2,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
                                            child: Text(
                                              "Config",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/svg/settings.svg",
                                    height: 24,
                                    color: Colors.white,
                                  ),
                            label: "Home",
                          ),
                          BottomNavigationBarItem(
                            backgroundColor: color8,
                            icon: indexPage == 3
                                ? Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            spreadRadius: 6,
                                            blurRadius: 10,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            color3,
                                            color4,
                                          ],
                                        ),
                                      ),
                                      height: 40,
                                      width: 106,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 2, 0),
                                            child: SvgPicture.asset(
                                              "assets/icons/svg/bookmark_outline.svg",
                                              height: 22,
                                              color: Colors.white,
                                            ),
                                          ),
                                          VerticalDivider(
                                            thickness: 2,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
                                            child: Text(
                                              "Likes",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/svg/bookmark_outline.svg",
                                    height: 28,
                                    color: Colors.white,
                                  ),
                            label: "Home",
                          ),
                        ],
                        currentIndex: indexPage,
                        onTap: (newIndex) {
                          setState(() {
                            indexPage = newIndex;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
