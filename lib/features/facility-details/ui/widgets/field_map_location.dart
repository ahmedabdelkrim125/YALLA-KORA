import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class FieldMapLocation extends StatefulWidget {
  const FieldMapLocation({super.key, required this.lat, required this.lng});
  final double lat, lng;
  @override
  State<FieldMapLocation> createState() => _FieldMapLocationState();
}

class _FieldMapLocationState extends State<FieldMapLocation> {
  late final MapController _mapController;
  late final MapOptions _mapOptions;
  @override
  void initState() {
    _mapController = MapController();
    _mapOptions = MapOptions(
      initialCenter: LatLng(widget.lat, widget.lng),
      initialZoom: 17,
      interactionOptions: const InteractionOptions(
        flags: InteractiveFlag.none,
      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h(context),
      width: double.infinity,
      child: FlutterMap(
        mapController: _mapController,
        options: _mapOptions,
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.yalla_kora',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(widget.lat, widget.lng),
                child: const Icon(Icons.location_on, color: Colors.red, size: 30)
              ),
            ],
          ),
        ]
      ),
    );
  }
}

