import 'package:hack/brain/networking.dart';

class SentiApi{
Future<dynamic> getsenti(String senti) async {
    var url =
        'http://10.0.2.2:5000/aspas/$senti';
    NetworkHelper networkHelper = NetworkHelper(url);
    var Data = await networkHelper.getData();
    return Data;
  }
}