// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ilmuwan_muslim_app/biografi_singkat.dart';
import 'package:ilmuwan_muslim_app/latar_belakang.dart';
import 'package:ilmuwan_muslim_app/model/ilmuwan_list.dart';

class DetailScreen extends StatelessWidget {
  final IlmuwanList ilmuwan;

  const DetailScreen({required this.ilmuwan});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(ilmuwan: ilmuwan);
        } else {
          return DetailMobilePage(ilmuwan: ilmuwan);
        }
      }
    );
  }
}

class DetailMobilePage extends StatelessWidget{
  final IlmuwanList ilmuwan;

  const DetailMobilePage({required this.ilmuwan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image profil
            Stack(
              children: [
                Image.asset(ilmuwan.imageAssets),
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      const SizedBox(height: 90,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          ilmuwan.name,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          ilmuwan.description,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
            // Card 1
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Profil Ilmuwan',
                                style: TextStyle(
                                  color: Colors.tealAccent[700],
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          // Kelahiran
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Kelahiran : ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      ilmuwan.birth,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          // Wafat
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Wafat : ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      ilmuwan.death,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          // Nama lain
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Nama lain : ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      ilmuwan.otherName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          // Bidang ilmuwan
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Bidang : ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      ilmuwan.field,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
            // Card Biografi dan Latar Belakang
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey[900],
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Biografi Singkat',
                                    style: TextStyle(
                                      color: Colors.tealAccent[700],
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7,),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      ilmuwan.shortBiography,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return BiografiSingkat(ilmuwan: ilmuwan,);
                                      }));
                                    },
                                    child: const Text(
                                      'Selengkapnya',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue, size: 20.0,),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ),
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey[900],
                        child: Padding(
                          padding: const EdgeInsets.all(7),
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
                              const SizedBox(height: 7,),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      ilmuwan.shortBackground,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return LatarBelakang(ilmuwan: ilmuwan);
                                      }));
                                    },
                                    child: const Text(
                                      'Selengkapnya',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue, size: 20.0,),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
            // Card Karya Ilmuwan
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.grey[900],
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Karya Ilmuwan',
                                style: TextStyle(
                                  color: Colors.tealAccent[700],
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          SizedBox(
                            height: 100,
                            width: 60,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: ilmuwan.creationImageAssets.map((asset) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ClipRRect(
                                    child: Image.asset(asset),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                );
                              }).toList()
                            )
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget{
  final IlmuwanList ilmuwan;

  const DetailWebPage({required this.ilmuwan});

  @override
  _DetailWebPage createState() => _DetailWebPage();
}

class _DetailWebPage extends State<DetailWebPage>{
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
          child: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      Text(
                        'Ilmuwan Muslim',
                        style: TextStyle(
                          color: Colors.tealAccent[700],
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          child: Image.asset(widget.ilmuwan.imageAssets),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.grey[900],
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  child: Text(
                                    'Profil Ilmuwan',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.tealAccent[700],
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Kelahiran : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(
                                            widget.ilmuwan.birth,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                // Wafat
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Wafat : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(
                                            widget.ilmuwan.death,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                // Nama lain
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Nama lain : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(
                                            widget.ilmuwan.otherName,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                // Bidang ilmuwan
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Bidang : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(
                                            widget.ilmuwan.field,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ),
                        )
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              color: Colors.grey[900],
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Biografi Singkat',
                                          style: TextStyle(
                                            color: Colors.tealAccent[700],
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 7,),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            widget.ilmuwan.shortBiography,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return BiografiSingkat(ilmuwan: widget.ilmuwan,);
                                            }));
                                          },
                                          child: const Text(
                                            'Selengkapnya',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14.0,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                        const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue, size: 20.0,),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              color: Colors.grey[900],
                              child: Padding(
                                padding: const EdgeInsets.all(7),
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
                                    const SizedBox(height: 7,),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            widget.ilmuwan.shortBackground,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return LatarBelakang(ilmuwan: widget.ilmuwan);
                                            }));
                                          },
                                          child: const Text(
                                            'Selengkapnya',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14.0,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                        const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue, size: 20.0,),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.grey[900],
                          child: 
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Karya Ilmuwan',
                                      style: TextStyle(
                                        color: Colors.tealAccent[700],
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 7.0,),
                                SizedBox(
                                  height: 100,
                                  width: 60,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: widget.ilmuwan.creationImageAssets.map((asset) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          child: Image.asset(asset),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      );
                                    }).toList()
                                  )
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
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
