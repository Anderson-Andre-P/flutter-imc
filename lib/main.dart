// import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:projeto_1/calcular_imc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primeiro App',
      home: HomeApp(),
    );
  }
}


class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  TextEditingController pesoController = TextEditingController();
  double peso = 0;
  TextEditingController alturaController = TextEditingController();
  double altura = 0;

  String status = 'Status do IMC';

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.blue,
    // );
    // return const Material(
    //   child: Center(child: Text("Ola mundo")),
    // );
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calcular IMC"),
        // elevation: 6,
        actions: [
          IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.search)
            )
        ],
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        // width: size.width,
        // height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // textBaseline: TextBaseline.alphabetic,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text("Digite seu peso:", textAlign: TextAlign.start,),
              TextField(
                controller: pesoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Digite seu peso:', hintText: 'Peso'
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Digite sua altura',
                  hintText: 'Altura'
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      status = calcularImc(peso: pesoController.text, altura: alturaController.text);
                    });
                  },
                  child: const Text('Calcular IMC'),
                )
              ),
              const SizedBox(height: 15),
              Text(status),
            ],
          ),
        ),
      )
    );
  }
}
