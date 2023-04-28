

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
  
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );
     

    return Scaffold(

      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 1.1,
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

            children: [
               const Text("Numero de Clicks", style: fontSize30,),
              Text('$counter', style: fontSize30,),
            ],

          ),

      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(

            child: const Icon( Icons.exposure_minus_1_outlined),
            onPressed: () { 

              counter--;
              setState(() {});
             }, 
            
           ),

          const SizedBox( width: 30 ),

          FloatingActionButton(

            child: const Icon( Icons.restore),
            onPressed: () { 

              counter = 0;
              setState(() {});
             }, 
            
           ),

           const SizedBox( width: 30 ),

           FloatingActionButton(

            child: const Icon( Icons.add),
            onPressed: () { 

              counter++;
              setState(() {});
             }, 
            
           ),

        ],

      ),

     );

  }
}