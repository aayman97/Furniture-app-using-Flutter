import 'package:flutter/material.dart';
import 'package:furniture_app/Classes/categoriesAndItsProducts.dart';

class DetailScreen extends StatefulWidget {
  final CategoriesAndItsProducts category;
  DetailScreen({Key? key, required this.category}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState(category);
}

class _DetailScreenState extends State<DetailScreen> {
  final CategoriesAndItsProducts category;
  String _image = "";
  int _index = 0;
  _DetailScreenState(this.category);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _image = category.images[0];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
                  children: [
            TheFirstHalfOfTheScreen(height, context, width),
            Padding(
              padding: const EdgeInsets.only(left :20.0,right: 20.0,top : 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$50.00",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    GestureDetector(
                      onTap: () => print("Cart with add sign"),
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: [
                          Container(
                            width: width * 0.28,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.0),
                              borderRadius: BorderRadius.circular(width * 0.25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10),
                              ],
                            ),
                          ),
                          Positioned(
                            top: height * 0.015,
                            left: 10,
                            child: Text(
                              'Cart',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Positioned(
                            left: width * 0.15,
                            child: Container(
                              width: height * 0.06,
                              height: height * 0.06,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.25)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(left :22.0,right: 20.0,top : 2),
              child: Row(
                children: [
                  Text(
                    "38 ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.orangeAccent),
                  ),
                  Text(
                    "Reviews",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12,color: Colors.orangeAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                PropertiesOfTheCategory(width: width, icon: Icons.lightbulb_outline_rounded,data : "10 watt"),
                 PropertiesOfTheCategory(width: width, icon: Icons.electrical_services_rounded,data : "30 kmh"),
                  PropertiesOfTheCategory(width: width, icon: Icons.compare_arrows_rounded,data : "10 Sizes"),
                  PropertiesOfTheCategory(width: width, icon: Icons.format_color_fill_outlined,data : "12 Colors"),
              ],),
            ),

            Padding(
              padding: const EdgeInsets.only(left : 20.0,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Description",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),)
                ),
            ),

            Padding(
              padding: const EdgeInsets.only(left : 20.0,right: 20.0,top : 10),
              child: Text(category.description,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color : Colors.grey,
                fontSize: 15,
                letterSpacing: 0.3
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(
                width : width,
                height: height*0.2,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  GestureDetector(
                    onTap: () => print("Close"),
                    child: Container(
                      width: width*0.22,
                      height: width*0.22,
                      decoration: BoxDecoration(
                         color: Colors.white,
                         border : Border.all(
                           color: Colors.grey.withOpacity(0.4),
                           width : 2
                         ),
                         borderRadius: BorderRadius.circular(30)
                      ),
                      child: Icon(Icons.close_rounded,size: 30,),
                    ),
                  ),
                    GestureDetector(
                      onTap: () => print("Buy now"),
                      child: Container(
                      width: width*0.6,
                      height:width*0.22,
                      decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text("BUY NOW", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 1
                        ),),
                      ),
                                      ),
                    )
                ],
                ),
              ),
            )

                  ],
                ),
          )),
    );
  }

  int findTheIndex(List<String> images, String e) {
    int index = 0;
    for (var i = 0; i < images.length; i++) {
      if (images[i] == e) {
        index = i;
        break;
      }
    }

    return index;
  }

  Stack TheFirstHalfOfTheScreen(
      double height, BuildContext context, double width) {
    return Stack(
      children: [
        Image.asset(
          _image,
          height: height * 0.54,
          width: width,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Stack(children: [
                  Container(
                    width: width * 0.11,
                    height: width * 0.11,
                    decoration: BoxDecoration(
                        color: Color(0xffdbdbdb),
                        borderRadius: BorderRadius.circular(width * 0.15)),
                  ),
                  Positioned(
                    left: width * 0.01,
                    top: width * 0.01,
                    child: Container(
                        width: width * 0.09,
                        height: width * 0.09,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.15)),
                        child: Icon(Icons.arrow_back_ios_new_rounded)),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () => print("cart"),
                child: Stack(children: [
                  Container(
                    width: width * 0.11,
                    height: width * 0.11,
                    decoration: BoxDecoration(
                        color: Color(0xffdbdbdb),
                        borderRadius: BorderRadius.circular(width * 0.15)),
                  ),
                  Positioned(
                    left: width * 0.01,
                    top: width * 0.01,
                    child: Container(
                        width: width * 0.09,
                        height: width * 0.09,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.15)),
                        child: Icon(Icons.shopping_cart_rounded)),
                  )
                ]),
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.2,
          left: width * 0.83,
          child: Column(
            children: category.images.map((e) {
              return GestureDetector(
                onTap: () => setState(() {
                  _image = e;
                  for (var i = 0; i < category.images.length; i++) {
                    if (e == category.images[i]) {
                      _index = i;
                      break;
                    }
                  }
                  print(_index);
                }),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  width: _index == findTheIndex(category.images, e)
                      ? width * 0.14
                      : width * 0.12,
                  height: _index == findTheIndex(category.images, e)
                      ? width * 0.14
                      : width * 0.12,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 7),
                    ],
                  ),
                  // duration: const Duration(milliseconds: 500),
                  // curve: Curves.easeInOut,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        e,
                        fit: BoxFit.fill,
                      )),
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
          top: height * 0.43,
          left: 20,
          child: Container(
              height: height * 0.085,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category.name,
                    style: TextStyle(
                        color: category.Categories =="Fan"? Colors.black:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        
                        ),
                  ),
                  Container(
                    width: width * 0.145,
                    height: height * 0.038,
                    decoration: BoxDecoration(
                        color: Color(0xff797463).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 2),
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}

class PropertiesOfTheCategory extends StatelessWidget {
  const PropertiesOfTheCategory({
    Key? key,
    required this.width, required this.icon, required this.data,
  }) : super(key: key);

  final double width;
  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width*0.15,
          height: width*0.15,
          decoration: BoxDecoration(
            color : Color(0xfff1e5d7),
            borderRadius: BorderRadius.circular(width*0.15)
          ),
          child: Icon(icon,size: 30,),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(data,style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }
}
