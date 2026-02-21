import 'package:camera/camera.dart';
import 'package:device_access/main.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraAccessScreen extends StatefulWidget {
  const CameraAccessScreen({super.key});
  @override
  State<CameraAccessScreen> createState() => _CameraAccessScreenState();
}

class _CameraAccessScreenState extends State<CameraAccessScreen> {
  CameraController? _controller;
  bool _cameraInitialized = false;

  Future<void> _accessCamera() async {
    // Request camera permission
    if (await Permission.camera.request().isGranted) {
      if (cameras.isNotEmpty) {
        _controller = CameraController(cameras[0], ResolutionPreset.medium);
        await _controller!.initialize();
        setState(() {
          _cameraInitialized = true;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No camera found on this device')),
        );
      }
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Camera permission denied')));
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera Access Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _accessCamera,
              child: Text('Access Camera'),
            ),
            SizedBox(height: 20),
            if (_cameraInitialized)
              SizedBox(
                height: 300,
                width: 400,
                child: CameraPreview(_controller!),
              ),
          ],
        ),
      ),
    );
  }
}
