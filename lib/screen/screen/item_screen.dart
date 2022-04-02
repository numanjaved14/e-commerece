import 'package:e_commereceapp/componets/horizontal_listview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/componets/horizontal_listview.dart';
// import 'package:untitled/componets/project_detail.dart';
// import 'package:untitled/widgets/projects.dart';
import 'ListViewHomePage.dart';
import 'ListViewHomePage.dart';
import 'project_detail.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    )
  );
}

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.cyan,
          title: Text('shopApp'),


          actions: [
            IconButton(icon: const Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white,),
                onPressed: () {})
            ]
        ),




        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(accountName: Text('mayasa '),
                accountEmail: Text('mayasa123@gmail.com'),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white,),
                    )
                ),
                decoration: new BoxDecoration(
                    color: Colors.cyan
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile
                  (title: Text('My account'),
                  leading: Icon(Icons.person),),
              ),
              InkWell(
                onTap: () {},
                child: ListTile
                  (title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket),),
              ),
              InkWell(
                onTap: () {},
                child: ListTile
                  (title: Text('Categoris'),
                  leading: Icon(Icons.dashboard),),
              ),
              InkWell(
                onTap: () {},
                child: ListTile
                  (title: Text('Favourites'),
                  leading: Icon(Icons.favorite),),

              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile
                  (title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.black,),),
              ),
              InkWell(
                onTap: () {},
                child: ListTile
                  (title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.blue,),),
              ),
            ],
          ),
        ),
      body: SafeArea(child: Column(
      children:[Image.asset('assets/images/image2.jpg'  ,fit: BoxFit.cover,),

        new Padding(
          padding: const EdgeInsets.all(15.0),
          child: new Text('Categories', ),),
          HorizontalList(),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Names Of Projects'),
                  TextButton(onPressed: (){},
                      child: Text("View more..."),),
                ],



              ),
            ),

            SizedBox(
              height: 190.0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index){
                  return Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      bottom: 10.0,
                      left: 6.0,
                      right: 6.0,
                    ),
                    child: Stack(
                    children: [
                      Container(
                          child:Card(
                            child: Container(
                              width:120,
                              height: 120,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white38,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/projects/project1.png")
                                )
                              ) ,


                              ),
                            
                            ),

                    ),
                      Expanded(
                        child: Container(
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)
                              ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 200.0 , bottom:7 ),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(''),
                                Text("ALHAZAM"),
                                Text( "Homemade Omani spices",),

                              ],
                            ),
                          ),
                        ),
                      )


                        ]),
                  );

                  }),
            )
          ],
        )



      ],








      )

      )
        
    



    );
  }
}









