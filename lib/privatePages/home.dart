import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/contants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../globals/providers/AuthProvider.dart';

@RoutePage(name: 'HomepageRouter')
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setLoc();
    Provider.of<AuthProvider>(context, listen: false).getuserDetails();
  }

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final List<Marker> _markers = <Marker>[
    const Marker(
        markerId: MarkerId('1'),
        position: LatLng(20.42796133580664, 75.885749655962),
        infoWindow: InfoWindow(
          title: 'My Position',
        )),
  ];
  // created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR$error");
    });
    return await Geolocator.getCurrentPosition();
  }

  Future _setLoc() async {
    getUserCurrentLocation().then((value) async {
      print("${value.latitude} ${value.longitude}");

      // marker added for current users location
      _markers.add(Marker(
        markerId: const MarkerId("2"),
        position: LatLng(value.latitude, value.longitude),
        infoWindow: const InfoWindow(
          title: 'My Current Location',
        ),
      ));

      // specified current users location
      CameraPosition cameraPosition = CameraPosition(
        target: LatLng(value.latitude, value.longitude),
        zoom: 15,
      );

      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<AuthProvider>(builder: (context, provider, child) {
      return SizedBox(
        height: size.height,
        child: Stack(alignment: Alignment.center, children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            mapToolbarEnabled: false,
            markers: Set<Marker>.of(_markers),
            mapType: MapType.normal,
            zoomControlsEnabled: false,
            tiltGesturesEnabled: false,
            zoomGesturesEnabled: false,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                context.router.pushNamed('test');
              },
              child: Text(
                'GO TO TEST PAGE',
                style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: textblack),
              ),
            ),
          )
        ]),
      );
    });
  }
}
