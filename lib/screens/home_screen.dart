import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_app/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  final Set<Marker> _markers = <Marker>{};

  @override
  void initState() {
    super.initState();
    _addMarkers();
  }

  void _addMarkers() {
    for (var property in properties) {
      final marker = Marker(
        markerId: MarkerId(property["name"]),
        position: LatLng(property["latitude"], property["longitude"]),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      );

      setState(() {
        _markers.add(marker);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: initialLocation,
      markers: _markers,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
