
import 'package:flutter/material.dart';
import '../api/cat_api.dart';
import 'cat_info.dart';

class CatBreedsPage extends StatefulWidget {
  CatBreedsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CatBreedsPageState createState() => _CatBreedsPageState();
}

class _CatBreedsPageState extends State<CatBreedsPage> {
  @override
  void initState() {
    super.initState();
    getCatData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: 0,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CatInfo(catId: 'id', catBreed: 'Name');
                }));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Breed Name'),
                    subtitle: Text('Breed Description'),
                  ),
                ),
              ),
            );
          }),
    );
    
  }

  void getCatData() async{
    var result= await CatAPI().getCatBreeds();
    print(result);
  }
}
