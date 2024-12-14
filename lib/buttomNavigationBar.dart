import 'package:flutter/material.dart';

class MyButtomNavigationBar extends StatefulWidget {
  const MyButtomNavigationBar({super.key});

  @override
  State<MyButtomNavigationBar> createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  @override
  List<Icon>  listOfIcons=[
    Icon(Icons.home,size: 40,color: Colors.blue,)  ,
    Icon(Icons.message,size: 40,color: Colors.blue,) ,
    Icon(Icons.person,size: 40,color: Colors.blue,)

  ];
  int selectedIndex=0;
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Buttom Navigation Bar',
      style: TextStyle(color: Colors.white),),),
      body: Center(child: listOfIcons[selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedIconTheme: IconThemeData(
          size: 50,
          color: Colors.teal
        ),
        // unselectedIconTheme: IconThemeData(
        //   // opacity:100,
        // ),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home')  ,
        BottomNavigationBarItem(icon: Icon(Icons.message),label: 'message'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'User')

      ] ,
      onTap: (index){
         setState(() {
           selectedIndex=index;
         });
      },
      ),

      );
  }
}
