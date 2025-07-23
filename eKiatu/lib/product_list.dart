import 'package:flutter/material.dart';
import 'package:kiatu/product_card.dart';
import 'package:kiatu/product_details_page.dart';
import 'global_variables.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<
  ProductList> createState() => _ProductListState();
}
class _ProductListState extends State<ProductList> {
  final List<String> filters = const [
    "All", "Addias", "Nike", "Bata", "Jordans", "Samurai"
  ];  
  late String selectedFilter;

   @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];

}


  // @override
  // void initState() {
  //   super.initState();
  //   selectedFilter = filters[0];
  // }
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

    return SafeArea(        
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
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GestureDetector(
                   onTap: () {
                        setState(() {
                          selectedFilter = filter;
                        });
                      },

                    child: Chip(
                      backgroundColor:  selectedFilter == filter? 
                      Theme.of(context).colorScheme.primary : 
                      const Color.fromRGBO(245, 247, 249, 1),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 231, 234, 237),
                      ),
                      label: Text(filter),
                      padding: const EdgeInsets.all(5),
                    
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      ),
                  ),
                );
              
              }
              ),
            ),


                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // ✅ two per row
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.75, // adjust based on card height/width
                      ),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProductDetailsPage(product: product);

                              },
                             ),
                            );
                          },
                          child: ProductCard(
                            title: product["title"] as String,
                            price: product["price"] as double,
                            image: product["imageURL"] as String,
                          ),
                        );
                      },
                    ),
                  ),
                ),

          ]
        ),
        
      );
  }
}