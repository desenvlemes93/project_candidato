import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmpresasCandidato extends StatelessWidget {
  const EmpresasCandidato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Empresas',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Wrap(
          runSpacing: 50,
          children: [
            Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://yt3.ggpht.com/ytc/AMLnZu9A574Fn2LsUmBlvFnNTQqsVGxI_W3KkF8uX6LwSA=s88-c-k-c0x00ffffff-no-rj',
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 100,
                    left: 15,
                  ),
                  child: Text('Totvs',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.google.com/maps/uv?pb=!1s0x935d672eca282193:0xe3c62ebe7040fc81!3m1!7e115!4shttps://lh5.googleusercontent.com/p/AF1QipOyTs2KnsQqroZjJ7vgnTMCeewKUj2WGEFxTdXO%3Dw160-h160-k-no!5sgipi+sistemas+-+Pesquisa+Google!15zQ2dJZ0FRPT0&imagekey=!1e10!2sAF1QipOyTs2KnsQqroZjJ7vgnTMCeewKUj2WGEFxTdXO&hl=pt-BR&sa=X&ved=2ahUKEwjdhKqpyrv6AhWDpJUCHTPJB8AQoip6BAg9EAM',
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 100,
                    left: 15,
                  ),
                  child: Text('Gipi',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D1190873614329648&imgrefurl=https%3A%2F%2Fen-gb.facebook.com%2Fpages%2FMR-Ve%25C3%25ADculos%2F239287282821624&tbnid=k9wj0X92SMaGvM&vet=12ahUKEwjexaDNy7v6AhXrnpUCHa5NAMkQMygAegQIARAy..i&docid=GMK32VaDjhx2hM&w=497&h=348&itg=1&q=mr%20veiculos%20itapuranga&ved=2ahUKEwjexaDNy7v6AhXrnpUCHa5NAMkQMygAegQIARAy',
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 100,
                      left: 66,
                    ),
                    child: Text(
                      'Mr Veiculos',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text('Totvs'),
              subtitle: Text('Empresa de Sistema'),
            ),
          ],
        ),
      ),
    );
  }
}
