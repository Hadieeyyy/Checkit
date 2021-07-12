 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'albums.dart';
import 'utils/functions.dart';
import 'selectpage.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    return

       Scaffold(
         appBar: AppBar(title: Text("CheckIT")),
         body:  Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

          //  Text(searchList.length.toString()),
             Container(
              child: Expanded(
               // height: 340.0,
                child:
                SingleChildScrollView(
                  child: FutureBuilder<List<Album>>(
                    future: fetchdata(),
                    builder: (context, snapshot){

                      if(snapshot.hasData) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: searchList
                              .map(
                                (element) =>
                                    Card(
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
      );

  }
}
