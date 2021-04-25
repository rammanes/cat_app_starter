
import 'network.dart';
import 'network.dart';
import 'network.dart';

const String apiKey = '5b33a975-1326-46f4-97b0-d5e087b8f84c';
const String catAPIURL = 'https://api.thecatapi.com/v1/breeds?';
const String catImageAPIURL = 'https://api.thecatapi.com/v1/images/search?';
const String breedString = 'breed_id=';
const String apiKeyString = 'x-api-key=$apiKey';

class CatAPI{

  Future<dynamic> getCatBreeds() async{
    Network network = Network('$catAPIURL$apiKeyString');
    var catData= await network.getData();
    return catData;
  }

  Future<dynamic> getCatBreed(String breedName) async {
    Network network= Network('$catImageAPIURL$breedString&$apiKeyString');
    var catData= await network.getData();
    return catData;
  }

}