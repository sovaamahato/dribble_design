import 'package:dribble_design_ui/big_picture_box.dart';
import 'package:dribble_design_ui/box.dart';
import 'package:dribble_design_ui/picture_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    [
      "https://images.unsplash.com/photo-1536063211352-0b94219f6212?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80",
      "1.1k"
    ],
    [
      "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/makmain.jpg",
      "2.2k"
    ],
    [
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-nude-lipsticks-1645128160.jpg",
      "2.2k"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar-------------
            Container(
              padding:
                  EdgeInsets.only(top: 10, left: 19, right: 18, bottom: 30),
              color: Colors.grey[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.network(
                            "https://flash.popxo.com/wp-content/uploads/2021/01/Lipstick.jpg",
                            fit: BoxFit.cover,
                          )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey[700],
                        size: 35,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(9)),
                    child: Text(
                      "Create NFT",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //write something textfield--------------------------
            // TextField(
            //   decoration: InputDecoration(

            //     hintText: "Write something.........",

            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(
                "Write something...",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //reel and photo row--------------
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10,right: 16,bottom: 6),
              child: Row(
                children: [
                  MyBox(
                    boxName: "Reel",
                    icon: Icons.video_collection_outlined,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MyBox(
                    boxName: "Photo",
                    icon: Icons.photo_camera_back_outlined,
                  )
                ],
              ),
            ),

            SizedBox(
              height: 19,
            ),

            //listview -------scrollable horizontally-----------------
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (BuildContext context, int index) {
                  return MyPictureBox(
                    imagepath: imageList[index][0],
                    views: imageList[index][1],
                  );
                },
              ),
            ),
            
            //big container------------------scrollable to down
            Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 5),
      child: Container(
                height: 290,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14, top: 15),
                  child: Column(
                    children: [
                      //1st row-----
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  "https://i.pinimg.com/280x280_RS/e4/86/86/e4868681b6e2cc4ce83c3b9a5d010b6c.jpg",
                                ),
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Barb Ada",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text("20 min ago",
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ))
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(13)),
                            child: Text(
                              "Subscibe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //picturebox------------
                      Container(
                        height: 160,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.network(
                              "https://media.glamourmagazine.co.uk/photos/638e04e0c934202e53acf09c/16:9/w_2580,c_limit/CHRISTMAS%20BEAUTY%20GIFTS%2051222_SF.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      //last row-------------
                      SizedBox(
                        height: 11,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_outline,
                                color: Colors.grey[700],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.3k",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.message_rounded,
                                color: Colors.grey[700],
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(
                                Icons.rotate_right_sharp,
                                color: Colors.grey[700],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle_outlined,
                                color: Colors.grey[700],
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(
                                Icons.stop_circle,
                                color: Colors.grey[700],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
