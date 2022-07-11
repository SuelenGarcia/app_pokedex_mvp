import 'dart:core';
import 'package:flutter/material.dart';
import '../../model/pokemon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Pokemon item = ModalRoute.of(context)!.settings.arguments as Pokemon;
    return Scaffold(
        appBar: AppBar(
          title: Text('${item.name}'),
        ),
        body: Card(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 80),
            child: Padding(
                padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 230,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromARGB(255, 231, 227, 227),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Text(
                                '#${item.number}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Center(
                                child: Image.network(item.thumbnailImage ?? ''),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(item.description!),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        height: 20,
                      ),
                      const Text(
                        'Tipo:',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(item.type!.join(' ')),
                      const Divider(
                        height: 20,
                      ),
                      const Text(
                        'Fraquezas:',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(item.weakness!.join(' ')),
                    ]))));
  }
}
