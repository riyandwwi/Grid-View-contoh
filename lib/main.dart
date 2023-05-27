import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // final  List number = [1,2,3,4,5,6,7,8,9,]; 
 final List<Map> indomie =
      List.generate(100, (index) => {"id": index, "nama": "Indomi rendang harga Rp $index  ",
       "harga" : "harga $index Rupiah"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
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
          itemCount: indomie.length,
         itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                     child: Text(indomie[index]["nama"])
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
