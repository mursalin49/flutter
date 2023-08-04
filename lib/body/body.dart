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
        title:Text("Mursalin"),
        titleSpacing:10,
        toolbarHeight:60,
        toolbarOpacity:1,
        elevation:0,
        backgroundColor:Colors.green,
        actions:[
          IconButton(onPressed:(){MySnackBar("I am comments",context);}, icon:Icon(Icons.comment)),
          IconButton(onPressed:(){MySnackBar("I am searching",context);}, icon:Icon(Icons.search)),
          IconButton(onPressed:(){MySnackBar("I am settings",context);}, icon:Icon(Icons.settings)),
          IconButton(onPressed:(){MySnackBar("I am email",context);}, icon:Icon(Icons.email)),
        ],

      ),
      floatingActionButton:FloatingActionButton(
        elevation:10,
        child:Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed:(){
          MySnackBar("i am floating action button",context);
        },
      ),
      bottomNavigationBar:BottomNavigationBar(
          currentIndex:2,
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
            BottomNavigationBarItem(icon:Icon(Icons.message),label:"Contact"),
            BottomNavigationBarItem(icon:Icon(Icons.person),label:"Profile"),
          ],
          onTap:(int index){
            if(index==0){
              MySnackBar("i am floating action bottom menu",context);
            }

            if(index==1){
              MySnackBar("i am floating action bottom menu",context);
            }
            if(index==2){
              MySnackBar("i am floating action bottom menu",context);
            }
          }
      ),

      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
                padding:EdgeInsets.all(0),
                child:UserAccountsDrawerHeader(
                  decoration:BoxDecoration(color:Colors.black),
                  accountName:Text("Nirob Hasan"),
                  accountEmail:Text("mursalinnirob@gmail.com"),
                  currentAccountPicture:Image.asset("assets/images/nirob.jpg"),
                  onDetailsPressed: (){MySnackBar("This is profile",context);},
                )
            ),
            ListTile(
                leading:Icon(Icons.home),
                title:Text("Home"),
                onTap:(){
                  MySnackBar("Home",context);
                }),
            ListTile(
                leading:Icon(Icons.email),
                title:Text("email"),
                onTap:(){
                  MySnackBar("email",context);
                }),
            ListTile(
                leading:Icon(Icons.phone),
                title:Text("phone"),
                onTap:(){
                  MySnackBar("phone",context);
                }),

          ],
        ),
      ),
      endDrawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
                padding:EdgeInsets.all(0),
                child:UserAccountsDrawerHeader(
                  decoration:BoxDecoration(color:Colors.black),
                  accountName:Text("Nirob Hasan"),
                  accountEmail:Text("mursalinnirob@gmail.com"),
                  currentAccountPicture:Image.network("https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png"),
                  onDetailsPressed: (){MySnackBar("This is profile",context);},
                )
            ),
            ListTile(
                leading:Icon(Icons.home),
                title:Text("Home"),
                onTap:(){
                  MySnackBar("Home",context);
                }),
            ListTile(
                leading:Icon(Icons.email),
                title:Text("email"),
                onTap:(){
                  MySnackBar("email",context);
                }),
            ListTile(
                leading:Icon(Icons.phone),
                title:Text("phone"),
                onTap:(){
                  MySnackBar("phone",context);
                }),

          ],
        ),
      ),
body: Center(
child:Image.asset("assets/images/nirob.jpg"),
)
    );
  }

}

