import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_am_kiishii/model/kiishi.dart';
import 'package:i_am_kiishii/services/the_app_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<TheAppCubit>(
        create: (context) => TheAppCubit()..favourite,
        child: IAmKiishi(),
      ),
    );
  }
}

class IAmKiishi extends StatelessWidget {
  IAmKiishi({Key? key}) : super(key: key);

  final List<String> _elementsOfKiishi = [
    'My Name',
    'Car Name',
    'Favourite Colour',
    'Favourite Outfit',
    'Favourite Shoes',
    'Favourite Instrument',
    'FrameWork',
  ];

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('I Am Kiishi'),
      ),
      body: BlocBuilder<TheAppCubit, List<Kiishi>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red.shade400,
                color: Colors.red.shade800,
              ),
            );
          }

          return Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: _screenSize.height * 0.02,
                ),
                Expanded(
                  child: ListView(children: <Widget>[
                    ListTile(
                      contentPadding: const EdgeInsets.all(8.0),
                      title: Text(_elementsOfKiishi[0] + ': ' + state[0].name),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title:
                          Text(_elementsOfKiishi[1] + ': ' + state[0].carName),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title: Text(_elementsOfKiishi[2] +
                          ': ' +
                          state[0].favouriteColour),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title: Text(_elementsOfKiishi[3] +
                          ': ' +
                          state[0].favouriteOutfit),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title: Text(_elementsOfKiishi[4] +
                          ': ' +
                          state[0].favouriteShoes),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title: Text(_elementsOfKiishi[5] +
                          ': ' +
                          state[0].favouriteInstrument),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title: Text(
                          _elementsOfKiishi[6] + ': ' + state[0].frameWork),
                    ),
                  ]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
