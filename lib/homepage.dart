import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reflectos_control_app/main.dart';

class homepage extends StatefulWidget {
  GoogleSignInAccount user;
  homepage({Key? key, required this.user}) : super(key: key);

  get devicesList => null;

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List<BluetoothDevice> devices = <BluetoothDevice>[];

  @override
  void initState() {
    FlutterBlue flutterBlue = FlutterBlue.instance;

    // Start scanning
    flutterBlue.startScan(timeout: const Duration(seconds: 10));

    // Listen to scan results
    var subscription = flutterBlue.scanResults.listen((results) {
      // do something with scan results
      for (ScanResult r in results) {
        for(int i = 0; i < devices.length; i++){
          if(devices[i].name == r.device.name) return;
        }
        if (r.device.name != '') devices.add(r.device);

        // print('${r.device.name} found! rssi: ${r.rssi}');
      }
    });

    // Stop scanning
    flutterBlue.stopScan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(widget.user.photoUrl.toString()),
          ),

          Text(widget.user.email),
          Text(widget.user.displayName.toString()),
          const Text('\n'),
          for(var item in devices) Text(item.name),

          const SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
            GoogleSignIn googleSignIn = GoogleSignIn();
            googleSignIn.signOut().then((value) =>
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp())));
          }, child: const Text("Sign Out"))

        ],
      ),
    );
  }
}
