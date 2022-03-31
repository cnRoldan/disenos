import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
            Color.fromARGB(255, 99, 245, 208),
            Color.fromARGB(255, 32, 160, 185),
          ])
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2()
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(),
        const MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white
        );


    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100,),
          const Text('11°', style: textStyle,),
          const Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 59, 195, 223),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 59, 195, 223),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 32, 160, 185),
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10)
          ),
          onPressed: () {  },
          child: const Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30,),
        ),
      ),
    ));
  }
}