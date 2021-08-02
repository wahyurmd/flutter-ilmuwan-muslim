// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ilmuwan_muslim_app/detail_screen.dart';
import 'package:ilmuwan_muslim_app/model/ilmuwan_list.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Ensiklopedia Ilmuwan Muslim',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 500) {
            return const MobileHomeScreen();
          } else if (constraints.maxWidth <= 1000) {
            return const WebHomeScreen(gridCount: 4);
          } else {
            return const WebHomeScreen(gridCount: 6);
          }
        }
      )
    );
  }
}

class MobileHomeScreen extends StatelessWidget{
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final IlmuwanList ilmuwan = ilmuwanList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(ilmuwan: ilmuwan);
            }));
          },
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.grey[800],
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(ilmuwan.imageAssets),
                                )
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  ilmuwan.name,
                                  style: const TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                )
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  ilmuwan.description,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white
                                  ),
                                )
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  ilmuwan.field,
                                  style: TextStyle(
                                    color: Colors.tealAccent[700],
                                    fontSize: 16.0,
                                  ),
                                )
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                ],
            )
          )
        );
      },
      itemCount: ilmuwanList.length,
    );
  }
}

class WebHomeScreen extends StatelessWidget {
  final int gridCount;

  const WebHomeScreen({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: ilmuwanList.map((ilmuwan) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(ilmuwan: ilmuwan);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(ilmuwan.imageAssets, fit: BoxFit.cover,),
                          )
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: 
                        Text(
                          ilmuwan.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: 
                        Text(
                          ilmuwan.description,
                          style: const TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: 
                          Text(
                            ilmuwan.field,
                            style: TextStyle(
                              color: Colors.tealAccent[700],
                              fontSize: 12.0,
                            ),
                          ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList()
        ),
      )
    );
  }
}
