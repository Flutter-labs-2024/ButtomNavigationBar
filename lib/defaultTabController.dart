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
        drawer: Drawer(
          child: ListView(children: [
            
            DrawerHeader(child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(40)
              ),

            
            ),
            ListTile(leading: Icon(Icons.person ,size: 40,color: Colors.blue,),
            title: Text('User'),
            ) ,
            ListTile(leading: Icon(Icons.password ,size: 40,color: Colors.blue,),
              title: Text('change'),
            ),
            ListTile(leading: Icon(Icons.login ,size: 40,color: Colors.blue,),
              title: Text('login'),
            )
          ],),
        ),
      ),
    );
  }
}
