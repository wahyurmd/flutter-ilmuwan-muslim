// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ilmuwan_muslim_app/model/ilmuwan_list.dart';

class LatarBelakang extends StatelessWidget {
  final IlmuwanList ilmuwan;

  const LatarBelakang({required this.ilmuwan});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SafeArea(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.white,)
                    ),
                    const Text(
                      'Profil Ilmuan',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    )
                  ],
                )
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.grey[900],
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Latar Belakang',
                                  style: TextStyle(
                                    color: Colors.tealAccent[700],
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7.0,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    ilmuwan.background,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => launch(ilmuwan.link),
                                  child: Text(
                                    ilmuwan.source,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}