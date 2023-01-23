import 'package:flutter/material.dart';

class MyPictureBox extends StatelessWidget {
  // const PictureBox({Key? key}) : super(key: key);
  final imagepath;
  final views;
  MyPictureBox({required this.imagepath, required this.views});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0),
      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          
                          height: 150,
                          width: 110,
            
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(imagepath,fit: BoxFit.cover,)),
                        ),
                        SizedBox(height: 8,),
                        Row(
                         
                          children: [
                            Icon(Icons.remove_red_eye_outlined,color: Colors.grey[600],),
                            SizedBox(width: 15,),
                            Text(views,style: TextStyle(color: Colors.white),),
                          ],
                        )

                      ],
                    ),
    );
    
  }
}