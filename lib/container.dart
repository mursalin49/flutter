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
    return SafeArea(child: Scaffold(
      body : Center(
        child: Container(
          alignment: Alignment.center,
          height: 150,
          width: 150,
          child: Text("hello flutter"),
          // margin: EdgeInsets.all(100),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.green,
            border: Border.all(
                color: Colors.blue,
                width: 5
            ),
          ),
          transform: Matrix4.rotationZ(1.5),
        ),
      ),
    ));
  }
}