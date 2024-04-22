import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:template_flutter_but/ui/screens/maps/maps.state.dart';
import 'package:template_flutter_but/ui/screens/maps/maps.viewmodel.dart';

class MapsScreen extends ConsumerStatefulWidget {
  const MapsScreen({super.key});

  @override
  ConsumerState<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends ConsumerState<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    final MapsState state = ref.watch(mapsProvider);

    String name = "";

    return state.loading
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                child:  GoogleMap(
                    initialCameraPosition: const CameraPosition(
                  target: LatLng(50.69121426041393, 3.1740227164238406),
                  zoom: 12.4746,
                ),
                markers: {
                  for (Marker marker in state.markersList)
                    Marker(
                      markerId: marker.markerId,
                      position: marker.position,
                      infoWindow: marker.infoWindow,
                    ),
                    
                },
                ),
              ),
            ],
          );
  }
}
