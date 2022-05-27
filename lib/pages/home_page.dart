import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/image_5.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text('Apple products'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            child: const Center(child: Text('7')),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            // $header
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/image_4.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Lifestyle sale',
                      style: TextStyle(color: Colors.white, fontSize: 36)),
                  const SizedBox(height: 30),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
                child: GridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              children: _listItem.map((e) => cellOfList(e)).toList(),
            )),
          ],
        ),
      ),
    );
  }

  Widget cellOfList(item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.favorite,size: 40,color: Colors.red),
          ],
        ),
      ),
    );
  }
}
