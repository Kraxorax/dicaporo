// Map Page goes here
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import '../widgets/bars/bottom_bar.dart';
import '../widgets/bars/top_bar.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final String title = 'Map Page';

  @override
  Widget build(BuildContext context) {
    final MapController controller = MapController(
      initMapWithUserPosition: true,
      // initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
      // areaLimit: BoundingBox(
      //   east: 10.4922941,
      //   north: 47.8084648,
      //   south: 45.817995,
      //   west: 5.9559113,
      // ),
    );
    final map = OSMFlutter(
      controller: controller,
      trackMyPosition: true,
      staticPoints: [
        StaticPositionGeoPoint(
            'id SPGP 0',
            const MarkerIcon(
                icon: Icon(
              Icons.location_history_rounded,
              color: Colors.red,
              size: 96,
            )),
            [GeoPoint(latitude: 44.769, longitude: 20.5)])
      ],
      initZoom: 12,
      minZoomLevel: 2,
      maxZoomLevel: 18,
      stepZoom: 1.0,
      userLocationMarker: UserLocationMaker(
        personMarker: const MarkerIcon(
          icon: Icon(
            Icons.location_history_rounded,
            color: Colors.red,
            size: 48,
          ),
        ),
        directionArrowMarker: const MarkerIcon(
          icon: Icon(
            Icons.double_arrow,
            size: 48,
          ),
        ),
      ),
      roadConfiguration: const RoadOption(
        roadColor: Colors.yellowAccent,
      ),
      markerOption: MarkerOption(
          defaultMarker: const MarkerIcon(
        icon: Icon(
          Icons.person_pin_circle,
          color: Colors.blue,
          size: 56,
        ),
      )),
    );

    return Scaffold(
      appBar: buildTopBar(context, title),
      body: map,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
