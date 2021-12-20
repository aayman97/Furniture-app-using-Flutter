import 'package:flutter/material.dart';
import 'package:furniture_app/detailScreen.dart';
import 'Classes/categoriesAndItsProducts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  var categories = ["Lamp", "Fan", "Chair", "Table"];
  List<CategoriesAndItsProducts> catergoriesAndItsProducts = [
    CategoriesAndItsProducts(
        "Shadow lamp",
        "Lamp",
        [
          "assets/images/shadowlamb1.jpg",
          "assets/images/shadowlamb2.jpg",
          "assets/images/shadowlamb3.jpg"
        ],
        "Lamp mist Frarance spray is floral, and to with top notes of black oil, cyclon for,"),
    CategoriesAndItsProducts(
        "Ritana lamp",
        "Lamp",
        [
          "assets/images/ritanalamp1.jpg",
          "assets/images/ritanalamp2.jpg",
          "assets/images/ritanalamp3.jpg"
        ],
        "Lamp mist Frarance spray is floral, and to with top notes of black oil, cyclon for,"),
    CategoriesAndItsProducts(
        "Pedestal Fan",
        "Fan",
        [
          "assets/images/pfan1.jpg",
          "assets/images/pfan2.jpg",
          "assets/images/pfan3.jpg"
        ],
        "These are best known for their powerful cooling abilities and their increased versatility."),
    CategoriesAndItsProducts(
        "Tower Fan",
        "Fan",
        [
          "assets/images/tfan.jpg",
          "assets/images/tfan1.jpg",
          "assets/images/tfan2.jpg"
        ],
        "As the name suggests, this is a fairly tall, narrow, tower-like fan that usually comes in very sleek and compact designs."),
    CategoriesAndItsProducts(
        "Recliner Chair",
        "Chair",
        [
          "assets/images/rchair1.jpg",
          "assets/images/rchair2.jpg",
          "assets/images/rchair3.jpg"
        ],
        "A recliner is an upholstered, comfortable armchair that allows the person sitting in it to lower the back and lift up a footrest."),
    CategoriesAndItsProducts(
        "Wingback Chair",
        "Chair",
        [
          "assets/images/wchair1.jpg",
          "assets/images/wchair2.jpg",
          "assets/images/wchair3.jpg"
        ],
        "The wingback is an upholstered chair with a high back and “winged” sides around the top."),
    CategoriesAndItsProducts(
        "Side Table",
        "Table",
        [
          "assets/images/stable.jpg",
          "assets/images/stable1.jpg",
          "assets/images/stable2.jpg"
        ],
        "As its name so aptly implies, a side table fits beside a sofa and provides a great place for a lamp or drink."),
    CategoriesAndItsProducts(
        "Drum Table",
        "Table",
        [
          "assets/images/dtable1.jpg",
          "assets/images/dtable2.jpg",
          "assets/images/dtable3.jpg"
        ],
        "The drum table was created in the 1700s and is a heavy, circular table. Sometimes it’s tall enough to pull up a chair to. ")
  ];

  List<Widget> loopOverListodd(
      List<CategoriesAndItsProducts> catergoriesAndItsProducts, Size size) {
    List<Widget> listOfWidgets = [];

    for (var i = 0; i < catergoriesAndItsProducts.length; i++) {
      if (i % 2 != 0 &&
          catergoriesAndItsProducts[i].Categories == categories[_index]) {
        listOfWidgets.add(
          Container(
              width: size.width * 0.42,
              height: size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 1, blurRadius: 7),
                ],
              ),
              child: Container(
                width: size.width * 0.38,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 1, blurRadius: 7),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    category: catergoriesAndItsProducts[i],
                                  )),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              catergoriesAndItsProducts[i].images[0],
                              width: size.width * 0.4,
                              height: size.height * 0.21,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Container(
                        width: size.width * 0.36,
                        height: size.height * 0.3 * 0.2,
                        // decoration : BoxDecoration(
                        //   color: Colors.amberAccent
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    catergoriesAndItsProducts[i].name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\$50.0",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                  width: (size.width * 0.36) * 0.22,
                                  height: (size.width * 0.36) * 0.22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        (size.width * 0.36) * 0.2),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.orangeAccent
                                              .withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.favorite_border_rounded,
                                    size: 17,
                                    color: Colors.orangeAccent,
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        );
      }
    }
    return listOfWidgets;
  }

  List<Widget> loopOverList(
      List<CategoriesAndItsProducts> catergoriesAndItsProducts, Size size) {
    List<Widget> listOfWidgets = [];
    for (int i = 0; i < catergoriesAndItsProducts.length; i++) {
      if (i % 2 == 0 &&
          catergoriesAndItsProducts[i].Categories == categories[_index]) {
        listOfWidgets.add(
          Container(
              width: size.width * 0.42,
              height: size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 1, blurRadius: 7),
                ],
              ),
              child: Container(
                width: size.width * 0.38,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 1, blurRadius: 7),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    category: catergoriesAndItsProducts[i],
                                  )),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              catergoriesAndItsProducts[i].images[0],
                              width: size.width * 0.4,
                              height: size.height * 0.21,
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                      Container(
                        width: size.width * 0.36,
                        height: size.height * 0.3 * 0.2,
                        // decoration : BoxDecoration(
                        //   color: Colors.amberAccent
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    catergoriesAndItsProducts[i].name,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$50.0",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                  width: (size.width * 0.36) * 0.22,
                                  height: (size.width * 0.36) * 0.22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        (size.width * 0.36) * 0.2),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.orangeAccent
                                              .withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.favorite_border_rounded,
                                    size: 17,
                                    color: Colors.orangeAccent,
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        );
      }
    }
    return listOfWidgets;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff9f9f9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: NavBar(size: size),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ExploreNewItemText(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.05),
                    child: SearchSomethingTextField(size: size)),
              ),
              Container(
                  margin: EdgeInsets.only(top: size.height * 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 20.0),
                        child: Container(
                          margin: EdgeInsets.only(top : 20),
                          child: CategoriesText()),
                      ),
                      Container(
                        margin: EdgeInsets.only(top : size.height*0.01),
                        child: CategoriesTabBar(size)),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    child: PopularAndSeeAllButton(
                        categories: categories, index: _index)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.01),
                  width: size.width,
                  height: size.height * 0.3,
                  child: Row(
                    children: [
                      Column(
                        children: loopOverList(catergoriesAndItsProducts, size),
                      ),
                      Spacer(),
                      Column(
                        children:
                            loopOverListodd(catergoriesAndItsProducts, size),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.15,
              )
            ],
          ),
        ),
      ),
    );
  }

  Align CategoriesTabBar(Size size) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: size.width,
        height: size.height * 0.09,
        decoration: BoxDecoration(color: Colors.transparent),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          itemCount: categories.length,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => setState(() {
                _index = index;
                print(_index);
              }),
              child: Padding(
                padding: index == categories.length - 1
                    ? EdgeInsets.only(right: 20.0)
                    : EdgeInsets.only(right: 0.0),
                child: Container(
                  width: size.width * 0.2,
                  height: size.height * 0.1,
                  margin: index == 0
                      ? EdgeInsets.only(left: 20)
                      : EdgeInsets.only(left: 0),
                  decoration: BoxDecoration(
                    color: _index == index ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 7),
                    ],
                  ),
                  child: Center(
                      child: Text(
                    categories[index],
                    style: TextStyle(
                        color: _index == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              width: 30,
            );
          },
        ),
      ),
    );
  }
}

class PopularAndSeeAllButton extends StatelessWidget {
  const PopularAndSeeAllButton({
    Key? key,
    required this.categories,
    required int index,
  })  : _index = index,
        super(key: key);

  final List<String> categories;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text(
          'Popular ' + categories[_index] + 's',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        GestureDetector(
          child: Text(
            'See All',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.orange),
          ),
        ),
      ],
    );
  }
}

class CategoriesText extends StatelessWidget {
  const CategoriesText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }
}

class SearchSomethingTextField extends StatelessWidget {
  const SearchSomethingTextField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 15),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.search, size: 40, color: Colors.orange),
            Container(
              margin: EdgeInsets.only(left: 2),
              width: size.width * 0.55,
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search Something',
                ),
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
              ),
            ),
            Container(
                width: size.width * 0.15,
                height: size.width * 0.15,
                child: Icon(
                  Icons.filter_list_rounded,
                  size: 40,
                ))
          ],
        ),
      ),
    );
  }
}

class ExploreNewItemText extends StatelessWidget {
  const ExploreNewItemText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Explore \nour new items",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          size: 30,
        ),
        Image.asset(
          "assets/images/avatar.png",
          width: size.width * 0.15,
        )
      ],
    );
  }
}
