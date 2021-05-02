import "dart:ui";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import "package:ps_store/models/product_model.dart";
import "package:ps_store/utils/consts.dart";

class DetailsPage extends StatefulWidget {
  DetailsPage({this.product});
  final ProductModel product;
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
                child: Column(
                  children: [
                    Expanded(
                      flex: 80,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              color3,
                              color4,
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 40,
                              left: 120,
                              child: Container(
                                height: MediaQuery.of(context).size.width,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: color4.withOpacity(0.3),
                                      spreadRadius: 4,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(200),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      color3,
                                      color4,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Positioned(
                            //   right: ,
                            //   child: Container(
                            //     margin: EdgeInsets.all(32),
                            //     // height: 200,
                            //     // width: 200,
                            //     decoration: BoxDecoration(
                            //       gradient: LinearGradient(
                            //         begin: Alignment.topLeft,
                            //         end: Alignment.bottomCenter,
                            //         colors: [
                            //           color1,
                            //           color2,
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 107,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(32, 42, 32, 90),
                        color: color2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.title,
                              style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 30,
                                fontFamily: "ZenDots",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 14),
                            Text(
                              widget.product.desc,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          32,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: NeumorphicButton(
                                          onPressed: () {},
                                          style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(14),
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
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 8, 8),
                                          child: Image.asset(
                                            "assets/icons/png/ps5_control.png",
                                            color: color3,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      RichText(
                                        text: TextSpan(
                                          text: "Futuristic\n",
                                          style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "Design",
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
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          32,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: NeumorphicButton(
                                          onPressed: () {},
                                          style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(14),
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
                                          padding: const EdgeInsets.fromLTRB(
                                              14, 14, 14, 14),
                                          child: Image.asset(
                                            "assets/icons/png/microfone.png",
                                            color: color3,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      RichText(
                                        text: TextSpan(
                                          text: "Built-in\n",
                                          style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "Microfone",
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
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          32,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: NeumorphicButton(
                                          onPressed: () {},
                                          style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(14),
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
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 12, 12, 12),
                                          child: Image.asset(
                                            "assets/icons/png/game_control_arrows.png",
                                            color: color3,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      RichText(
                                        text: TextSpan(
                                          text: "Haptic\n",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "Feedback",
                                              style: TextStyle(
                                                letterSpacing: 1,
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
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          32,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: NeumorphicButton(
                                          onPressed: () {},
                                          style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(14),
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
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 16, 16, 16),
                                          child: SvgPicture.asset(
                                            "assets/icons/svg/flash.svg",
                                            color: color3,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      RichText(
                                        text: TextSpan(
                                          text: "Fast Charge\n",
                                          style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "USB-C part",
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
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 38, 32, 0),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset(
                            "assets/icons/png/arrow_back.png",
                            color: Colors.white,
                            height: 32,
                            width: 32,
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PLATAFORM",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text("PS5"),
                              Spacer(),
                              Text(
                                "RELEASE",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text("FALL 2020"),
                              Spacer(),
                              Text(
                                "PRICE",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                  "\$${widget.product.price.toInt().toString()}"),
                              Spacer(),
                              SizedBox(
                                height: 46,
                                width: 46,
                                child: NeumorphicButton(
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
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  child: SvgPicture.asset(
                                    "assets/icons/svg/bookmark_outline.svg",
                                    semanticsLabel: "Profile",
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Hero(
                            tag: "${widget.product.id}",
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Image.asset(
                                widget.product.image,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Neumorphic(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                    child: Container(
                      height: 70,
                      color: color5,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: RichText(
                              text: TextSpan(
                                text: "\$",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  color: color3,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        "${widget.product.price.toInt().toString()}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: NeumorphicButton(
                              onPressed: () {},
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(10),
                                ),
                                shape: NeumorphicShape.convex,
                                color: color3,
                                depth: 3,
                                intensity: 0.4,
                                lightSource: LightSource.topLeft,
                                shadowLightColor: Colors.white.withOpacity(0.4),
                                shadowDarkColor: Colors.black,
                              ),
                              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Container(
                                height: 44,
                                width: 158,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      color3,
                                      color4,
                                    ],
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 12, 0),
                                      child: Text(
                                        "Preorder",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                      child: Image.asset(
                                        "assets/icons/png/arrow_foward.png",
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(right: 24),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       boxShadow: [
                          //         BoxShadow(
                          //           color: Colors.black.withOpacity(0.2),
                          //           spreadRadius: 6,
                          //           blurRadius: 10,
                          //           offset: Offset(0, 3),
                          //         ),
                          //       ],
                          //       borderRadius: BorderRadius.circular(8),
                          //       gradient: LinearGradient(
                          //         begin: Alignment.topLeft,
                          //         end: Alignment.bottomRight,
                          //         colors: [
                          //           color3,
                          //           color4,
                          //         ],
                          //       ),
                          //     ),
                          //     height: 40,
                          //     width: 152,
                          //     child: Row(
                          //       children: [
                          //         Padding(
                          //           padding:
                          //               const EdgeInsets.fromLTRB(16, 0, 12, 0),
                          //           child: Text(
                          //             "Preorder",
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w500,
                          //               letterSpacing: 1,
                          //               fontSize: 16,
                          //             ),
                          //           ),
                          //         ),
                          //         VerticalDivider(
                          //           thickness: 2,
                          //           color: Colors.black.withOpacity(0.2),
                          //         ),
                          //         Padding(
                          //           padding:
                          //               const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          //           child: Image.asset(
                          //             "assets/icons/png/arrow_foward.png",
                          //             height: 24,
                          //             color: Colors.white,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // )
                        ],
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
