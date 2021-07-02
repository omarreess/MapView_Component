import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/*
Here we will getting image then convert it to its origin byte Array
then resizing it then return it as a image again
so we can convert it to marker icon
 */

Future<BitmapDescriptor> getMarkerIconResized(String imgPath) async {
  final Uint8List markerIcon = await getBytesFromAsset(imgPath, 90);

  

  return BitmapDescriptor.fromBytes(markerIcon);
}

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}
