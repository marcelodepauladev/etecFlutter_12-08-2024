import 'package:flutter/material.dart';

class Android {
  String descricao;
  double valor;
  String foto;

  Android({required this.descricao, required this.valor, required this.foto});
}

List<Android> androids = [
  Android(
      descricao: "Smartphone 1",
      valor: 3499.9,
      foto:
          "https://a-static.mlcdn.com.br/800x560/smartphone-xiaomi-poco-x6-preto-5g-256gb-12gb-ram/phoneart/8906129036512b/bf36bc2a914b5473ef07a8eb6764fd33.jpeg"),
  Android(
      descricao: "Smartphone 2",
      valor: 3499.9,
      foto:
          "https://a-static.mlcdn.com.br/800x560/smartphone-xiaomi-poco-x6-preto-5g-256gb-12gb-ram/phoneart/8906129036512b/bf36bc2a914b5473ef07a8eb6764fd33.jpeg"),
  Android(
      descricao: "Smartphone 3",
      valor: 3499.9,
      foto:
          "https://a-static.mlcdn.com.br/800x560/smartphone-xiaomi-poco-x6-preto-5g-256gb-12gb-ram/phoneart/8906129036512b/bf36bc2a914b5473ef07a8eb6764fd33.jpeg"),
  Android(
      descricao: "Smartphone 4",
      valor: 3499.9,
      foto:
          "https://a-static.mlcdn.com.br/800x560/smartphone-xiaomi-poco-x6-preto-5g-256gb-12gb-ram/phoneart/8906129036512b/bf36bc2a914b5473ef07a8eb6764fd33.jpeg"),
  Android(
      descricao: "Smartphone 5",
      valor: 3499.9,
      foto:
          "https://a-static.mlcdn.com.br/800x560/smartphone-xiaomi-poco-x6-preto-5g-256gb-12gb-ram/phoneart/8906129036512b/bf36bc2a914b5473ef07a8eb6764fd33.jpeg"),
  Android(
      descricao: "Smartphone 6",
      valor: 3499.9,
      foto:
          "https://a-static.mlcdn.com.br/800x560/smartphone-xiaomi-poco-x6-preto-5g-256gb-12gb-ram/phoneart/8906129036512b/bf36bc2a914b5473ef07a8eb6764fd33.jpeg"),
];

List<Android> consulta = [];

class pagina2 extends StatelessWidget {
  const pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Android')),
        body: Column(children: [Expanded(child: grade())]));
  }
}

grade() {
  return GridView.builder(
    itemCount: androids.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
    itemBuilder: (BuildContext context, int index) {
      return Card(
          child: Center(
              child: Column(children: [
        Expanded(child: Image.network(consulta[index].foto)),
        Text(androids[index].descricao),
        Text(androids[index].valor.toStringAsFixed(2)),
        ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text("Comprar"))
      ])));
    },
  );
}
