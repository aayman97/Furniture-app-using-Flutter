import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/screenone.dart';



void main() {
    
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'EmptyScreen1',
      style: optionStyle,
    ),
    Text(
      'EmptyScreen2',
      style: optionStyle,
    ),
    Text(
      'EmptyScreen3',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(
          width : size.width,
          height : size.height,
          child: Center(
            child: Stack(
                children: [
                  Container(
                    width : size.width,
                    height : size.height,
                    decoration : BoxDecoration(
                   
                      
                    )
                  ),
                  Center(child: _widgetOptions.elementAt(_selectedIndex)),
                  BottomTabNavigator(size),
                ],
              ),
          ),
        ),
      
        
      ),
    );
  }

  Align BottomTabNavigator(Size size) {
    return Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: size.width*0.8,
                  height: size.height*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), 
                     boxShadow: [                                                               
                                BoxShadow(
                                color: Colors.black38, 
                                spreadRadius: 0,
                                 blurRadius: 10),       
                                  ],    
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                  child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),  
                    child: BottomNavigationBar (
                          backgroundColor: Colors.black,
                           type: BottomNavigationBarType.fixed, 
                          items: const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.shopping_cart_outlined),
                              label: 'Business',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.favorite_border_rounded ),
                              label: 'School',
                            ),
                             BottomNavigationBarItem(
                              icon: Icon(Icons.person_outline ),
                              label: 'EmptyScreens',
                            ),
                          ],
                          currentIndex: _selectedIndex,
                          selectedItemColor: Colors.amber[800],
                          unselectedItemColor: Colors.white,
                          showSelectedLabels: false,
                          showUnselectedLabels: false,
                          
                          onTap: _onItemTapped,
                        ),
                  ),
                ),
              );
  }
}
