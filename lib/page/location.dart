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

  Container tasklists(
    String texts,
  ) {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 10),
      child: Card(
        elevation: 5,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 65,
                width: 413,
                margin: const EdgeInsets.only(top: 10),

                // padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    const Icon(
                      Icons.location_on_sharp,
                      color: Color(0xff0b82c3),
                    ),
                    Container(
                      child: Text(
                        texts,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: false,
        arrowback: true,
        title: "Location",
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: tasklists(
                "ភូមិ ថ្មី សង្កាត់ ស្វាយដង្គំ ខេត្ដ សៀមរាប ក្រុង សៀមរាប "),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120),
            child: GoogleMap(
              onMapCreated: _onMapCreate,
              markers: _marker,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              initialCameraPosition: _initialCameraPosition,
            ),
          ),
        ],
      ),
    );
  }
}
