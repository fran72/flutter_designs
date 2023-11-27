import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(image: AssetImage('assets/pic.jpg')),
          _Title(),
          _ButtonSection(),
          const Description()
          // IconButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, 'medium_design');
          //     },
          //     icon: const Icon(Icons.abc)),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: const Text(
        'Lorem et exercitation est Lorem aliqua do voluptate amet. Laboris sint culpa ad proident dolore dolor id velit. Proident elit minim sit commodo quis nisi consequat. Incididunt aliqua nulla laborum anim eiusmod sit sunt non do. Occaecat commodo exercitation minim amet amet fugiat ex cillum magna commodo pariatur dolore duis voluptate.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Basicccccc Design Screen',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              Text('Basiccccccen',
                  style: TextStyle(fontSize: 16.0, color: Colors.blueGrey)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(icon: Icons.phone, text: 'call'),
          _CustomButton(icon: Icons.send, text: 'send'),
          _CustomButton(icon: Icons.share, text: 'share'),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const _CustomButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'scroll_design');
      },
      child: Column(
        children: [
          Icon(icon, color: Colors.blueAccent),
          Text(text, style: const TextStyle(color: Colors.blueAccent)),
        ],
      ),
    );
  }
}
