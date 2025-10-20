import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sinau statless widget dan stateful widget'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(width: 10, height: 10),
            Text(
              "$nilai",
              style: TextStyle(
                fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    if (nilai > 0) {
                      nilai--;
                      setState(() {});
                    }
                  },
                  label: Text("kurang"),
                  icon: Icon(Icons.remove),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      nilai++;
                    });
                  },
                  label: Text("tambah"),
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ),
                        child: Text(
                          " Hallo Sayang ",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("contoh dialog"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Hapus Akun"),
                        content: Text(
                          "Apakah anda yakin ingin menghapus akun ini?",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text("tidak, batalkan"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("ya, hapus akun ini"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("hapus akun"),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("ini adalah snackbar",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,                        
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    backgroundColor: const Color.fromARGB(255, 18, 145, 79),
                    action: SnackBarAction(
                      label: "tutup",
                      textColor: const Color.fromARGB(255, 243, 242, 242),
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                    margin: EdgeInsets.all(10),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                  ));
              },
              child: Text("tampilkan snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}