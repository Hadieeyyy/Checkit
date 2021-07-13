
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';
//import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'albums.dart';
import 'utils/functions.dart';
import 'searchpage.dart';
import 'categorypage.dart';
import 'selectpage.dart';
import 'package:splashscreen/splashscreen.dart';

//import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(home: SplashScrin()));
}

class SplashScrin extends StatefulWidget {
  @override
  _SplashScrinState createState() => _SplashScrinState();
}

class _SplashScrinState extends State<SplashScrin> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: OnboardingPage(),
      image: Image.asset('assets/checkitstorelogo.png'),
      photoSize: 100.0,
      loaderColor: Colors.red,
    );
  }
}

//-----------------------
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: PageView(
      children: [
        //--------------------------1
        Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150.0,
                ),
                SizedBox(
                  height:200.0,
                  width: 300.0,
                  child: SvgPicture.asset('assets/ob1.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 5.0,
                    ),
                      SizedBox(
                        width: 10.0,
                      ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 5.0,
                    ),
                  ],),
                ),
                SizedBox(
                  height:30.0,
                ),
                Container(
                  child:
                    Text(
                      "Save the stress of searching for products across multiple vendors.",

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:  MaterialStateProperty.all<Color>
                          (Colors.redAccent)
                    ),
                      onPressed: (){},
                      child: new InkWell(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } ,
                        child: Text("Get Started"),
                  )
                  ),
                ),
              ],
            ),
          ),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/onboarding 1 image.svg'),
          //       fit: BoxFit.cover,
          //     ),
          //   )
        ),
        //--------------------------2
        Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150.0,
                ),
                SizedBox(
                  height:200.0,
                  width: 300.0,
                  child: SvgPicture.asset('assets/ob2.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 5.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 5.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 5.0,
                      ),
                    ],),
                ),
                SizedBox(
                  height:30.0,
                ),
                Container(
                  child:
                  Text(
                    "Find yourself the best deal available.",

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>
                            (Colors.redAccent)
                      ),
                      onPressed: (){},
                      child: new InkWell(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } ,
                        child: Text("Get Started"),
                      )
                  ),
                ),
              ],
            ),
          ),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/onboarding 1 image.svg'),
          //       fit: BoxFit.cover,
          //     ),
          //   )
        ),
        //--------------------------3
        Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150.0,
                ),
                SizedBox(
                  height:200.0,
                  width: 300.0,
                  child: SvgPicture.asset('assets/ob3.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 5.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 5.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 5.0,
                      ),
                    ],),
                ),
                SizedBox(
                  height:30.0,
                ),
                Container(
                  child:
                  Text(
                    "Share your comparisons!",

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>
                            (Colors.redAccent)
                      ),
                      onPressed: (){},
                      child: new InkWell(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } ,
                        child: Text("Get Started"),
                      )
                  ),
                ),
              ],
            ),
          ),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/onboarding 1 image.svg'),
          //       fit: BoxFit.cover,
          //     ),
          //   )
        ),



      ],
        ));
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckIT'),
        centerTitle: true,
      ),

      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(

          children: [
            SizedBox(
              height: 70.0,

              child:
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child:

                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter item here',
                      ),
                        onChanged:(String a) => setState((){ enlistSearch(a) ;}),
                        onSubmitted: (String str) => setState(() {
                          if (str != "") {


                            //objectList.map((el) {
                            //  if(el.title.contains(str)){
                            //    searchList.add(el);
                              //}
                           // });
                            enlistSearch(str);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchPage()),
                            );
                          }
                        })
                        ),



              ),
            ),


            //horizontal listview below
            Container(
              //color: Colors.yellow,
              height: 50.0,

              child:

              ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(
            //shadowColor: Colors.redAccent,
                style: ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all<Color>
                    (Colors.redAccent)
                ),
                    child:
                    new InkWell(
                      onTap:(){
                        ePress = true;
                        enlistCategory();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryPage()),
                        );
                      } ,
                      child: SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child:
                        Center(
                          child: Text('Electronics',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    //shadowColor: Colors.redAccent,
                    style: ButtonStyle(
                        backgroundColor:  MaterialStateProperty.all<Color>
                          (Colors.blueAccent)
                    ),
                    child:
                    new InkWell(
                      onTap:(){
                        jPress = true;
                        enlistCategory();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryPage()),
                        );
                      } ,
                      child: SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child:
                        Center(
                          child: Text('Jewellery',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    //shadowColor: Colors.redAccent,
                    style: ButtonStyle(
                        backgroundColor:  MaterialStateProperty.all<Color>
                          (Colors.grey)
                    ),
                    child:
                    new InkWell(
                      onTap:(){
                        mcPress = true;
                        enlistCategory();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryPage()),
                        );
                      } ,
                      child: SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child:
                        Center(
                          child: Text('Men\'s clothing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    //shadowColor: Colors.redAccent,
                    style: ButtonStyle(
                        backgroundColor:  MaterialStateProperty.all<Color>
                          (Colors.deepOrange)
                    ),
                    child:
                    new InkWell(
                      onTap:(){
                        wcPress = true;
                        enlistCategory();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryPage()),
                        );
                      } ,
                      child: SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child:
                        Center(
                          child: Text('Women\'s clothing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],

              ),

              //Text('Theeeegvhj'),



            ),

            SizedBox(
              height: 15.0,
           //   child: TextField(),
            ),
            //vertical listview below
            Expanded(
              child: Container(
               height: 200.0,
                child:
                SingleChildScrollView(
                  child: FutureBuilder<List<Album>>(
                    future: fetchdata(),
                    builder: (context, snapshot){

                      if(snapshot.hasData) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: objectList
                              .map(
                                (element) =>  Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: ListTile(
                                      leading: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: Image.network(element.image),
                                      ),
                                      //Text(element.id.toString()),
                                      title: Text(element.title,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,),

                                      onTap: () {

                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SelectPage(selects: element),
                                          ),
                                        );
                                      },


                                    ),
                                  ),
                                ),

                          )
                              .toList(),
                        );}
                      else if(snapshot.hasError){print(snapshot.error);}
                      {return CircularProgressIndicator();}
                    },
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}


