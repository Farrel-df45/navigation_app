import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int jumlahBarang = 0;

  void tambahBarang() {
    setState(() {
      jumlahBarang++;
    });
  }

  void kurangiBarang() {
    if (jumlahBarang > 0) {
      setState(() {
        jumlahBarang--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.inventory_2,
                  color: Colors.blue,
                  size: 80,
                ),

                const SizedBox(height: 15),

                const Text(
                  "Jumlah Barang",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // Counter
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: kurangiBarang,
                      icon: const Icon(Icons.remove),
                      iconSize: 30,
                      color: Colors.red,
                    ),

                    Container(
                      width: 80,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "$jumlahBarang",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    IconButton(
                      onPressed: tambahBarang,
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      color: Colors.green,
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: 220,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("Back"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}