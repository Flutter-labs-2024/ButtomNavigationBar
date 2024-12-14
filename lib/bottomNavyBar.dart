import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class MyBottomNavyBar extends StatefulWidget {
  const MyBottomNavyBar({super.key});

  @override
  State<MyBottomNavyBar> createState() => _MyBottomNavyBarState();
}

class _MyBottomNavyBarState extends State<MyBottomNavyBar> {
  @override
  List<Icon>  listOfIcons=[
    Icon(Icons.home,size: 40,color: Colors.blue,)  ,
    Icon(Icons.message,size: 40,color: Colors.blue,) ,
    Icon(Icons.person,size: 40,color: Colors.blue,)

  ];
  int _selectedIndex=0;

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Buttom Navigation Bar',
      style: TextStyle(color: Colors.white),),),
      body: Center(child: listOfIcons[_selectedIndex],),
bottomNavigationBar: BottomNavyBar(
    selectedIndex: _selectedIndex,
    // iconSize: 25,
    itemCornerRadius: 24,
    // showInactiveTitle: true,

    items: [
  BottomNavyBarItem(icon: Icon(Icons.home), title: Text('Home')) ,
  BottomNavyBarItem(icon: Icon(Icons.message), title: Text('Message')) ,
  BottomNavyBarItem(icon: Icon(Icons.person), title: Text('User'))



], onItemSelected: (index){

      setState(() {
        _selectedIndex=index;
      });
}),

    );
  }
}
