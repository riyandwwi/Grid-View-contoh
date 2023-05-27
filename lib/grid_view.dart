import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cgrid extends StatelessWidget {
  const Cgrid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('belajar view '),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(color:Colors.cyan,),
          Container(color:Colors.red,),
        ],
        ),
    );
  }
}