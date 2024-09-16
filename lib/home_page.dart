import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  String number1 = "";
  String number2 = "";


  void clickButton() {
    String sum = number1 + number2;
    String _controller1 = number1;
    String _controller2 = number2;

    setState(() {
      print(sum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 233, 255),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.25,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // title of the page
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 75),
            child: Text(
              "Add Two Numbers",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 22, 116),
                fontFamily: 'Calistoga',
                fontSize: 28,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // number1 textField
                TextField(
                  controller: _controller1,
                  decoration: InputDecoration(
                    hintText: "Enter number1",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      )
                    )
                  ),
                ),
            
                const SizedBox(height: 20),
          
                // number2 textFeild
                TextField(
                  controller: _controller1,
                  decoration: InputDecoration(
                    hintText: "Enter number2",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      )
                    )
                  ),
                ),
            
                const SizedBox(height: 50),
          
                // Add button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: GestureDetector(
                    onTap: clickButton,
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Calistoga',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}