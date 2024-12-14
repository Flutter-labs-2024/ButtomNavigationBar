import 'package:buttom_navigation_bar/listView.dart';
import 'package:flutter/material.dart';

class MyDefaultTabController extends StatelessWidget {
  const MyDefaultTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Tab bar',style: TextStyle(color: Colors
            .blue),),
          bottom: TabBar(tabs: [
            
            Tab(child: Text('Home'),) ,
            Tab(child: Text('About'),),
            Tab(child: Text('Login'),)
          
          ]),
        ),
        body: TabBarView( children: [
          Tab(child: MyListView(),),
          Tab(child: Icon(Icons.account_box,size: 40, color: Colors.blue,),),
          Tab(child: Icon(Icons.login,size: 40, color: Colors.blue,),)

        ],),
      ),
    );
  }
}
