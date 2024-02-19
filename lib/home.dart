import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const Text("Queremos palomitas"),
          TextField(
            controller: controller,
            onSubmitted: (value) {
              print(value);
            },
          ),
          ElevatedButton(
            onPressed: () {
              print(controller.text);
            },
            child: const Icon(Icons.print),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Botón 1");
                },
                child: const Icon(Icons.print),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Botón 1");
                },
                child: const Icon(Icons.print),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Botón 2");
                },
                child: const Icon(Icons.print),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Botón 3");
                },
                child: const Icon(Icons.print),
              ),
            ],
          )
        ],
      ),
    );
  }
}
