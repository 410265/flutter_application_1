import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<Map<String, dynamic>> obtenerPokemon() async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu');
    final respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      return jsonDecode(respuesta.body);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peticiones HTTP',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peticiones HTTP - Pokémon'),
        ),
        body: Center(
          child: FutureBuilder<Map<String, dynamic>>(
            future: obtenerPokemon(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final pokemon = snapshot.data!;
                final nombre = pokemon['name'];
                final imagen = pokemon['sprites']['front_default'];
                final altura = pokemon['height'];
                final peso = pokemon['weight'];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pokémon: $nombre',
                      style: const TextStyle(fontSize: 24),
                    ),
                    Image.network(imagen),
                    Text('Altura: $altura'),
                    Text('Peso: $peso'),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}