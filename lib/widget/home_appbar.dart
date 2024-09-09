import 'package:flutter/material.dart';

class HHomeAppBar extends StatelessWidget {
  const HHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0XFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("DP Shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0XFF4C53A5)),),
          ),
          Spacer(),
          Badge(
            backgroundColor : Colors.red,
            padding: EdgeInsets.all(5),
            label: Text("3",style: TextStyle(color: Colors.white),),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context,"cartPage");
              },
              child: Icon(Icons.shopping_bag_outlined,size: 32,color: Color(0XFF4C53A5),),
            ),
          )
        ],
      ),
    );
  }
}
