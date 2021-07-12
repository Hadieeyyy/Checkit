import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'albums.dart';
import 'dart:math';
import 'package:share/share.dart';

import 'utils/functions.dart';
import 'albums.dart';


Random random = new Random(100);

double rn = random.nextDouble();
class SelectPage extends StatelessWidget {
  // Declare a field that holds the Todo.
  final Album selects;

 // double op = rnd + (selects.price);

  // In the constructor, require a Todo.
  SelectPage({Key key,  this.selects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return  Scaffold(
      appBar: AppBar(
        title: Text("CheckIT"),
      ),

       body: Center(child:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 260.0,
                  height: 540.0,
                  child: Column(
                    children: [
                      Expanded(child: Image.network(selects.image)),
                      SizedBox(height: 30.0),
                      Text(selects.title,
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,

                      )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(selects.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        style:TextStyle(
                        color: Colors.grey,
                      )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30.0,
                            height:20.0,
                            child: Image.asset('assets/fakestorelogo.png'),

                          ),
                          SizedBox(width: 10.0),
                          Text("Fake Data store: N${selects.price.toString()}")
                        ],
                      ),

                      //-----------------second store price
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30.0,
                            height:20.0,
                            child: Image.asset('assets/checkitstorelogo.png'),

                          ),
                          SizedBox(width: 10.0),
                          Text("CheckIT store: N${(selects.price+rn).toStringAsFixed(2)}")
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.share),
                              color: Colors.redAccent,
                              onPressed: (){
                              Share.share('''Product name: ${selects.title}
                                             Fake data store price: ${selects.price} 
                                             CheckIT store price: ${(selects.price+rn).toStringAsFixed(2)}'''
                                  );
                              }
                            )
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),
           //  Text(selects.title),
           //  Text(selects.description),

           ],
         ),
       ),
    //Card(
      //  child: Padding(
      //     padding: const EdgeInsets.all(30.0),
      //      child: Column(
      //      children: [
      //         SizedBox(
      //           width: 160.0,
      //           height: 80.0,
      //            child: Image.network(selects.image),
      //          ),
      //        Text(selects.title),
      //        Text(selects.description),
      //        Text(selects.price),
      //
      //        ],
      //     ),
      //   ),
      // ),
     );
  }
}

// class SelectPage extends StatefulWidget {
//
//   @override
//   _SelectPageState createState() => _SelectPageState(Album album);
// }
//
// class _SelectPageState extends State<SelectPage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("CheckIT"),
//       ),
//
//       body:Center(
//         child: Card(
//           child: Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: Column(
//               children: [
//                 SizedBox(
//                   width: 150.0,
//                   height: 150.0,
//                   child: Image.network(selected.image),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
