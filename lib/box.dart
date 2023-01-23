import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final String boxName;
  final icon ;

  MyBox({required this.boxName,required this.icon});

  @override
  Widget build(BuildContext context) {

    return Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(25)
                  
                ),
                child: Row(
                  
                  children: [
                    
                    Icon(icon,color: Colors.grey[500],size: 29,),
                    SizedBox(width: 19,),
                    Text(boxName,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(width: 8,)
                  ],
                ),
              );
    
  }
}