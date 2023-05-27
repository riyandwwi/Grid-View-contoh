import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // final  List number = [1,2,3,4,5,6,7,8,9,]; 
 final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
      appBar: AppBar(
        title: Text('belajar view '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
            ),
          itemCount: myProducts.length,
         itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                     child: Text(myProducts[index]["name"])
              );
         }
         ),
        // child: GridView.count(
          //  crossAxisCount: 2,
          // crossAxisSpacing: 4,
          // mainAxisSpacing: 4,
        //   children: [
        //     Container(color:Colors.cyan,),
        //     Container(color:Colors.red,),
        //     Container(color:Colors.green,),
        //     Container(color:Colors.purple,),
        //     Container(color:Colors.orange,),
        //     Container(color:Colors.red,),
        //   ],
        //   ),
          
      ),
      )
    );
  }
}
