import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/toolbar.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

class NearBy extends StatelessWidget {
  const NearBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToolBar(title: 'Near by'),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: latLng.LatLng(51.509364, -0.128928),
          initialZoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  width: 100,
                  height: 100,
                  point: const latLng.LatLng(51.509364, -0.128928),
                  child: Builder(
                      builder: (context) => Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14)),
                                    color: Colors.white),
                                child: const Text(
                                  'Bernice',
                                  style: TextStyle(color: AppColors.black),
                                ),
                              ),
                              const Icon(Icons.location_on_outlined,
                                  color: AppColors.background, size: 30)
                            ],
                          )))
            ],
          )
        ],
      ),
    );
  }
}
