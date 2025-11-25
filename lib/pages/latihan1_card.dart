import 'package:flutter/material.dart';

class MyPages extends StatelessWidget {
  const MyPages({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0)
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const Card(
              color: Colors.red,
              child: Text("Card with color", style: TextStyle(fontSize: 16.0)),
            ),

            const SizedBox(height: 20),

            const Card(
              elevation: 8,
              color: Colors.yellow,
              child: Text("Tinggi bayangan shadow",style: TextStyle(fontSize: 12.0)),
          ),

          const SizedBox(height: 20),

            const Card(
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("margin card",style: TextStyle(fontSize: 10.0)),
                ),
            ),

            const SizedBox(height: 20),

            const Card(
              elevation: 8,
              child: Padding(padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tentang saya',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Saya Muhamamad Ulin nuha kelas teknik informatika software engginer',
                    style: TextStyle(fontSize: 15,color: Colors.grey, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
                  elevation: 8,
                  shadowColor: Colors.red,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blue, Colors.red],
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              )
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 55,
                            backgroundImage: AssetImage("assets/images/image.png"),
                          ),
                        ),

                        const SizedBox(height: 12),

                        const Text(
                          "Nuha Ulin",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ]),
        ),
      ),
      );
  }
}