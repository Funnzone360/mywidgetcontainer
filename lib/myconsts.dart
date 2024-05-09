import 'package:flutter/material.dart';

Widget mycontainer(
    Color mycolor,
    String mytext,
    Color mytextcolor,
    double mytextsize,
    FontWeight myfontweight,
    String myfontfaimily,
    String myimage,
    double mycontainerhight,
    double mycontainerwidth,
    double myborderradious,
    double myborder,
    Color mybordercolor,
    final VoidCallback functionName) {
  return InkWell(
    onTap: functionName,
    child: Container(
      alignment: Alignment.center,
      height: mycontainerhight,
      width: mycontainerwidth,
      decoration: BoxDecoration(
        color: mycolor,
        borderRadius: BorderRadius.circular(myborderradious),
        border: Border.all(width: myborder, color: mybordercolor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mytext,
            style: TextStyle(
              color: mytextcolor,
              fontSize: mytextsize,
              fontWeight: myfontweight,
              fontFamily: myfontfaimily,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
            child: Image.network(
              "$myimage",
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    ),
  );
}
