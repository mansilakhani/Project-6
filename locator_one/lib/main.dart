import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:locator_one/splashscreen.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashscreen',
    routes: {
      '/': (context) => HomePage(),
      'splashscreen': (context) => SplashScreen(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Permission App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                permissionlist(
                  color: Colors.black.withOpacity(0.8),
                  name: "Camera",
                  Icon2: InkWell(
                      onTap: () async {
                        await openAppSettings();
                      },
                      child: const Icon(Icons.settings)),
                  Icon1: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 50,
                  ),
                  onTap: () async {
                    PermissionStatus res = await Permission.camera.request();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$res"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                permissionlist(
                  color: Colors.black.withOpacity(0.8),
                  name: "Location",
                  Icon2: InkWell(
                      onTap: () async {
                        await openAppSettings();
                      },
                      child: Icon(Icons.settings)),
                  Icon1: const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 50,
                  ),
                  onTap: () async {
                    PermissionStatus res = await Permission.location.request();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$res"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ElevatedButton(
                //   onPressed: () async {
                //     PermissionStatus res = await Permission.camera.request();
                //     // PermissionStatus res = await Permission.calendar.request();
                //   },
                //   child: const Text("Camera"),
                // ),
                // ElevatedButton(
                //   onPressed: () async {
                //     Map<Permission, PermissionStatus> statuses = await [
                //       Permission.bluetooth,
                //       Permission.camera,
                //     ].request();
                //
                //     if (statuses[Permission.location]!.isDenied) {
                //       print("Location Permission is denied");
                //     }
                //     if (statuses[Permission.camera]!.isDenied) {
                //       print("Camera Permission is denied");
                //     }
                //   },
                //   child: Text("Requested Multiple Permission"),
                // ),
                const SizedBox(width: 20),
                permissionlist(
                  color: Colors.black.withOpacity(0.8),
                  name: "Phone",
                  Icon2: InkWell(
                      onTap: () async {
                        await openAppSettings();
                      },
                      child: Icon(Icons.settings)),
                  Icon1: const Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 50,
                  ),
                  onTap: () async {
                    PermissionStatus res = await Permission.phone.request();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$res"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                permissionlist(
                  color: Colors.black.withOpacity(0.8),
                  name: "Contacts",
                  Icon2: InkWell(
                      onTap: () async {
                        await openAppSettings();
                      },
                      child: Icon(Icons.settings)),
                  Icon1: const Icon(
                    Icons.contacts,
                    color: Colors.white,
                    size: 50,
                  ),
                  onTap: () async {
                    PermissionStatus res = await Permission.contacts.request();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$res"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ElevatedButton(
                //   onPressed: () async {
                //     PermissionStatus res = await Permission.camera.request();
                //     // PermissionStatus res = await Permission.calendar.request();
                //   },
                //   child: const Text("Camera"),
                // ),
                // ElevatedButton(
                //   onPressed: () async {
                //     Map<Permission, PermissionStatus> statuses = await [
                //       Permission.bluetooth,
                //       Permission.camera,
                //     ].request();
                //
                //     if (statuses[Permission.location]!.isDenied) {
                //       print("Location Permission is denied");
                //     }
                //     if (statuses[Permission.camera]!.isDenied) {
                //       print("Camera Permission is denied");
                //     }
                //   },
                //   child: Text("Requested Multiple Permission"),
                // ),
                const SizedBox(width: 20),
                permissionlist(
                  color: Colors.black.withOpacity(0.8),
                  name: "Bluetooth",
                  Icon2: InkWell(
                      onTap: () async {
                        await openAppSettings();
                      },
                      child: Icon(Icons.settings)),
                  Icon1: const Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                    size: 50,
                  ),
                  onTap: () async {
                    PermissionStatus res =
                        await Permission.bluetoothConnect.request();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$res"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                permissionlist(
                  color: Colors.black.withOpacity(0.8),
                  name: "SMS",
                  Icon2: InkWell(
                      onTap: () async {
                        await openAppSettings();
                      },
                      child: const Icon(Icons.settings)),
                  Icon1: const Icon(
                    Icons.sms,
                    color: Colors.white,
                    size: 50,
                  ),
                  onTap: () async {
                    PermissionStatus res = await Permission.sms.request();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$res"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget permissionlist(
    {required String name,
    required onTap,
    required Icon1,
    required color,
    required Icon2}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        height: 172,
        width: 172,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: ClipRRect(
          child: GestureDetector(
            onTap: onTap,
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.white.withOpacity(0.2),
                trailing: Icon2,
                title: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              child: Center(
                child: Icon1,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
