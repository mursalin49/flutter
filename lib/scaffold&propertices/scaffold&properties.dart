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
    return SafeArea(
      child:Scaffold(
        drawer:Drawer(),
        floatingActionButton:FloatingActionButton(onPressed:(){},child:Icon(Icons.add),),
      backgroundColor:Colors.grey,
        appBar:AppBar(title:Text("flutter"),centerTitle:true,),
        body:Padding(
          padding:const EdgeInsets.all(100),
          child:Text(" i love flutter", style:TextStyle(fontSize:50),),
        ),
      ),


    );
  }

}

