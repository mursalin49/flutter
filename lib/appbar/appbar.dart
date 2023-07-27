import 'package:flutter/material.dart';
main(){
  runApp(const MyApp()); // Application
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme:ThemeData(primarySwatch: Colors.green),
        darkTheme:ThemeData(primarySwatch: Colors.amber),

        home:HomeActivity()
    );

  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Inventory App"),
        titleSpacing:10,
        toolbarHeight:60,
        toolbarOpacity:1,
        elevation:0,
        backgroundColor:Colors.red,
        actions:[
          IconButton(onPressed:(){MySnackBar("I am comments",context);}, icon:Icon(Icons.comment)),
          IconButton(onPressed:(){MySnackBar("I am searching",context);}, icon:Icon(Icons.search)),
          IconButton(onPressed:(){MySnackBar("I am settings",context);}, icon:Icon(Icons.settings)),
          IconButton(onPressed:(){MySnackBar("I am email",context);}, icon:Icon(Icons.email)),
        ],

      ),
    );
  }

}

