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
    final ButtonStyle buttonStyle= ElevatedButton.styleFrom(
        padding:EdgeInsets.all(25),
      backgroundColor:Colors.red,
      foregroundColor:Colors.black,
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
      )
    );
    return Scaffold(
      appBar:AppBar(
        title:Text("Mursalin"),
      ),

      body: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children:[
          TextButton(onPressed:(){MySnackBar("i am button",context);}, child:Text('Tex Button')),
          ElevatedButton(onPressed:(){MySnackBar("i am Elevated button",context);}, child:Text('Elevated Button'),style:buttonStyle,),
          OutlinedButton(onPressed:(){MySnackBar("i am Outlined  button",context);}, child:Text('Outlined Button')),
        ],


      ),
    );
  }

}

