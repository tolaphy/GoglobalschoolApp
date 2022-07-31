import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LocationPageState();
}

class LocationPageState extends State<LocationPage> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(13.348016544868559, 103.8441849038731),
    zoom: 18,
  );

  final Set<Marker> _marker = {};
  void _onMapCreate(GoogleMapController controller) {
    setState(() {
      _marker.add(const Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(13.348016544868559, 103.8441849038731),
          infoWindow: InfoWindow(
            title: 'Go Global School',
          )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(
          notificationenabled: false,
          arrowback: true,
          title: "Location",
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreate,
          markers: _marker,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
        ));
  }
}
