import 'package:flutter/material.dart';
import 'package:flutter_kmpus2/homepage.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 38, 16),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        leading: SizedBox(),
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYJdvMCLnoRNJS71p04s2ahHfBmzcOTIwtQg&s "),
            ),
            const SizedBox(height: 20),
            const Text(
              'Prabowo Subianto',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('prabowo@gmail.com', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            //pindah halaman ke homepage
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Go to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}