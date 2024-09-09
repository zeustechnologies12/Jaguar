import 'package:flutter/material.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,size: 30,color: Color(0XFF4C53A5),),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text(
            "Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Color(0XFF4C53A5),
            ),
          ),
          ),
          Spacer(),
          Icon(Icons.more_vert,size: 30,color: Color(0XFF4C53A5),)
        ],
      ),
    );
  }
}
