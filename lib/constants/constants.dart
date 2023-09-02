import 'package:google_maps_flutter/google_maps_flutter.dart';

const CameraPosition initialLocation = CameraPosition(
  target: LatLng(37.7749, -122.4194), // Default map location (San Francisco)
  zoom: 10,
);

final List<Map<String, dynamic>> properties = [
  {
    "name": "Property 1",
    "latitude": 37.7749,
    "longitude": -122.4194,
  },
  {
    "name": "Property 2",
    "latitude": 37.7890,
    "longitude": -122.4089,
  },
  {
    "name": "Property 3",
    "latitude": 37.7757,
    "longitude": -122.4301,
  },
];
