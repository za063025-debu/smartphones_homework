import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String selectedBrand = "Microsoft";

  List<String> brands = ["Microsoft", "Apple", "Dell", "HP", "Lenovo"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://images.unsplash.com/photo-1517336714731-489689fd1ca8",
                  height: 180,
                  width: 300,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const SizedBox(
                      height: 180,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      height: 180,
                      child: Center(child: Text("فشل تحميل الصورة")),
                    );
                  },
                ),
              ),

              const SizedBox(height: 12),

              
              const Text(
                "Laptop هو جهاز خفيف وقوي  مناسب للدراسة والعمل والتصميم ويتميز بسرعة الأداء وجودة الشاشة.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),

              const SizedBox(height: 15),

              DropdownButton<String>(
                value: selectedBrand,
                items: brands.map((String brand) {
                  return DropdownMenuItem(value: brand, child: Text(brand));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBrand = value!;
                  });
                },
              ),

              const SizedBox(height: 10),

              const Text(
                "Price: 3500 SAR",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
