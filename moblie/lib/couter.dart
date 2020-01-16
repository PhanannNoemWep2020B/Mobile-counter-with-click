

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  Image _image;
  void add(){
    setState(() {
      count++;
    
      switch(count){
        case 2:
          _image = Image.network("https://srcwap.com/wp-content/uploads/2019/12/Advance-Happy-New-Year-Animated-Gif-2020-Moving-Photos-Images.gif");
          break;

        case 5:
          _image = Image.network("https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
          break;
        
        case 10:
          _image = Image.network("https://images.pexels.com/photos/247314/pexels-photo-247314.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
          break;

        case 11:
          _image = Image.network("https://i1.wp.com/d24fkeqntp1r7r.cloudfront.net/wp-content/uploads/2018/10/24223253/AdobeStock_181640661.jpeg?fit=1180%2C788&ssl=1");
          break;
      }
    });
  }
  void remove(){
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 40.0),
                  child: _image,
                ),
                Text("${count}", style: TextStyle(fontSize: 40),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: (){
                        add();
                      },
                      child: Icon(Icons.add),
                    ),
                  
                    FloatingActionButton(
                      onPressed: (){
                        remove();
                      },
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
          ),
        );
  }
}