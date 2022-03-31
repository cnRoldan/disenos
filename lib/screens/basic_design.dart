import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(image: AssetImage('assets/landscape.jpg')), 
          Title(), 
          Buttons(),
          Description()
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: const Text('Irure ut nostrud est consectetur enim magna reprehenderit. Ipsum et pariatur enim laborum Lorem sit ea nisi labore id elit nulla. Excepteur adipisicing nisi ipsum id amet culpa officia in labore. Dolore exercitation ipsum eiusmod anim incididunt ipsum mollit dolore est amet ullamco anim ad commodo. Duis ad duis eu nulla esse ad dolor Lorem culpa sint dolore pariatur.', textAlign: TextAlign.justify));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          const Expanded(child: SizedBox()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  static const String label1 = 'Call';
  static const String label2 = 'Route';
  static const String label3 = 'Share';

  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Button(label: label1, icon: Icons.call,),
          Button(label: label2, icon: Icons.location_on_rounded),
          Button(label: label3, icon: Icons.share,),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.label, required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
        ),
        const SizedBox(height: 10,),
        Text(
          label.toUpperCase(),
          style: const TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }
}


