import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> filters = const [
    "All", "Addias", "Nike", "Bata", "Jordans"
  ];  

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                  ),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(28),
                    )
                );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("eKiatu\nCollection", 
                                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 25,
                                ),
                                ),
                ),

              const Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: "Search", 

                prefixIcon: Icon(Icons.search),   
                border: border,
                enabledBorder:  border,          
                ),
              )
              ),
              ]
            ),

            SizedBox(
              height: 120,
              child: ListView.builder(
              itemCount: filters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Chip(
                    label: Text(filter),
                    ),
                );
              
              }
              ),
            )
          ]
        ),
      )
      );
  }
}