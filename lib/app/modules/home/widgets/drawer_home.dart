import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C4E03AQEo0ngxZRqXpw/profile-displayphoto-shrink_100_100/0/1645106852032?e=1669852800&v=beta&t=K-dW4Exa_-X4JmWlknuyTpA3F1dElp7gUbbT3KlHjS4',
                    ),
                    radius: 65,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(onPressed: () {}, child: const Text('Sobre mim')),
                TextButton(
                    onPressed: () => Get.toNamed('/empresas'),
                    child: const Text('Empresas')),
                TextButton(onPressed: () {}, child: const Text('Meu git')),
                TextButton(onPressed: () {}, child: const Text('Localização')),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 200),
              child: Center(
                child: Expanded(
                  child: Text('Versão 1.0'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
