import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLottieVisible = false;
  double lottiePosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Elephant ;)'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isLottieVisible = !isLottieVisible;
                  });
                },
                icon: Icon(isLottieVisible ? Icons.visibility_off : Icons.visibility),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    lottiePosition -= 50.0;
                  });
                },
                icon: const Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    lottiePosition += 50.0;
                  });
                },
                icon: const Icon(Icons.arrow_forward),
              ),
              if (isLottieVisible)
                Transform.translate(
                  offset: Offset(lottiePosition, 0.0),
                  child: Lottie.asset('assets/elephon.json'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
