import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pokemon APP')),
        body: Center(
          child: Column(
            children: [
              Text(
                'Some Pokemons Names:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Image.network(
                'https://w.forfun.com/fetch/b7/b7e10a95be610f96a6a2ce6fef8d4bfd.jpeg',
              ),
              const SizedBox(height: 20),
              FutureBuilder<List<Map<String, dynamic>>>(
                future: getPokemons(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      decoration: const BoxDecoration(color: Colors.amber),
                      height: 350,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 10),
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          Map<String, dynamic> pokeDetail =
                              snapshot.data![index];
                          return Text(
                            pokeDetail['name'],
                            style: Theme.of(context).textTheme.displaySmall,
                            textAlign: TextAlign.center,
                          );
                        }),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.hasError}');
                  }
                  return const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

Future<List<Map<String, dynamic>>> getPokemons() async {
  Uri url = Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=120&limit=20');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final pokemon = jsonDecode(response.body);
    final pokemonDetails = pokemon.pokeDetails;
    return pokemonDetails;
  } else {
    throw ("Network error");
  }
}
