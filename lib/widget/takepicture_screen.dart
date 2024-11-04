import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TakepictureWidget extends StatefulWidget {
  const TakepictureWidget({Key? key, required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  TakepictureWidgetScreenState createState() => TakepictureWidgetScreenState();
}

class TakepictureWidgetScreenState extends State<TakepictureWidget> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool _isTakingPicture = false; // Variabel untuk melacak status pengambilan gambar

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _isTakingPicture ? null : () async {
          try {
            setState(() {
              _isTakingPicture = true; // Menandai bahwa pengambilan gambar sedang berlangsung
            });

            await _initializeControllerFuture;
            final image = await _controller.takePicture();

            // Lakukan sesuatu dengan gambar yang diambil di sini (navigasi, tampilkan, dll.)

          } catch (e) {
            print(e);
          } finally {
            setState(() {
              _isTakingPicture = false; // Reset status setelah pengambilan gambar selesai
            });
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
