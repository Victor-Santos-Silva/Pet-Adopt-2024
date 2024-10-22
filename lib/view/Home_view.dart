import 'package:flutter/material.dart';
import 'package:pet_adopt/widgets/background_widget.dart';
import 'package:pet_adopt/widgets/card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(
            imagePath: "assets/images/wallpaper.jpg",
          ),
          Container(
            color: Colors.green,
            height: 150,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 50),
                child: const Text(
                  "Pet Adopt",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, left: 100),
                width: 80,
                child: Image.asset('assets/images/foto de perfil.png'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 180, left: 60),
            child: Stack(
              children: [
                // Texto com borda (usando Paint)
                Text(
                  "PESQUISE SEU PET:",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.black, // Cor da borda
                  ),
                ),
                // Texto preenchido
                Text(
                  "PESQUISE SEU PET:",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Cor de preenchimento do texto
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 250),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.green,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 350),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
