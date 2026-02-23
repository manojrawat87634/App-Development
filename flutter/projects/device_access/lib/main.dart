import 'package:device_access/devices_access_pages/CameraAccessScreen.dart';
import 'package:device_access/devices_access_pages/LocationAccessPage.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(title: 'Camera Access Demo', home: Scaffold(body: Column(
      children: [
        ElevatedButton(onPressed: ()async{
           Future<Position> position = determinePosition();
           print(position.toString());
        }, child: Text("Location Access"))
        // CameraAccessScreen()
      ],
    )));
  }
}