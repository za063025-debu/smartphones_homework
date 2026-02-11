import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Product Box")),
        body: Center(
          child: Container(
            width: 220,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // الصورة الجديدة Base64
                Image.memory(
                  base64Decode(
                    "YOUR_BASE64_STRING"
                  ),
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 10),

                Text(
                  "Surface Laptop",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text("Price: 3500 SAR"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
