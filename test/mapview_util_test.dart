import 'package:flutter_test/flutter_test.dart';
import 'package:mapview_mvvm/config/constants.dart';
import 'package:mapview_mvvm/util/repaint_marker_ic.dart';

/// For testing util functions

void main() async {
/*
here we will test repaint marker icon util
as it takes an image and repainting it to match marker icon's criteria
but its matrix value is very huge as it has 33k index so we test on random values on it
*/

//For loading Assets
  TestWidgetsFlutterBinding.ensureInitialized();

//Getting actual data
  late var newMarkerIcon;
  await getMarkerIconResized(markerIconImgPath).then((result) {
    newMarkerIcon = result;
  });

  //Expected Data

  final expectedImgLength = '34434';
  final expectedImgValue5 = 'B';
  final expectedImgValue600 = '5';
  final expectedImgValue1500 = '0';

  group('Repaint Marker Image Icon util', () {
    //Asserting
    test('Check length of Image\'s matrix ', () {
      expect(newMarkerIcon.toJson().toString().length.toString(),
          expectedImgLength);
    });

    test('Check the 5 index value of Image\'s matrix ', () {
      expect(newMarkerIcon.toJson().toString()[5], expectedImgValue5);
    });
    test('Check the 600 index value of Image\'s matrix ', () {
      expect(newMarkerIcon.toJson().toString()[600], expectedImgValue600);
    });
    test('Check the 1500 index value of Image\'s matrix ', () {
      expect(newMarkerIcon.toJson().toString()[1500], expectedImgValue1500);
    });
  });
}
