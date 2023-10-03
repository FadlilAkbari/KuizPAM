import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pokemon_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Pokedox')
          ),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: listPokemon.length,
                itemBuilder: (context, index) {
                  final PokemonData data = listPokemon[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => detail(data : data)));
                    },
                    child: Card(
                      child: SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width /6 ,
                              child: Image(
                                image: NetworkImage(data.image),
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              data.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            )
        ),
      ),
    );
  }
}

class detail extends StatelessWidget {
  const detail({super.key, required this.data});
  final PokemonData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(data.name)
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: <Widget>[
          BookmarkButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Image.network(data.image),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,5),
              child: Text(data.name,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,0,0),
              child: Center(
                  child: Text('Type', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children:
                    data.type.map((text) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30,0,30,10),
                      child: Text('- $text'),
                    );
                  }
                  ).toList()
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,0,0),
              child: Center(
                  child: Text('Weakness', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children:
                  data.weakness.map((text) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30,0,30,10),
                      child: Text('- $text'),
                    );
                  }
                  ).toList()
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,0,0),
              child: Center(
                  child: Text('Previous Evolution', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children:
                  data.prevEvolution.map((text) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30,0,30,10),
                      child: Text('- $text'),
                    );
                  }
                  ).toList()
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,0,0),
              child: Center(
                  child: Text('Next Evolution', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children:
                  data.nextEvolution.map((text) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30,0,30,10),
                      child: Text('- $text'),
                    );
                  }
                  ).toList()
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launcher(data.wikiUrl);
        },
        tooltip: 'Open Web',
        child: Icon(Icons.open_in_browser),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
  Future<void> _launcher(String url) async{
    final Uri _url = Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception("gagal membuka url : $_url");
    }
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        color: _isBookmarked ? Colors.white : null,
      ),
      onPressed: () {
        setState(() {
          _isBookmarked = !_isBookmarked;
        });
        // Show a snackbar indicating the bookmark state
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_isBookmarked ? 'Berhasil Menambahkan ke Favorit' : 'Berhasil Menghapus dari Favorit'),
            backgroundColor : _isBookmarked ? Colors.lightGreen : Colors.red,
            duration: Duration(seconds: 1),
          ),
        );
      },
    );
  }
}