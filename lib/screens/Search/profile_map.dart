import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapAndProfilesScreen extends StatefulWidget {
  const MapAndProfilesScreen({super.key});

  @override
  State<MapAndProfilesScreen> createState() => _MapAndProfilesScreenState();
}

class _MapAndProfilesScreenState extends State<MapAndProfilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 16, right: 16, bottom: 0),
              color: Colors.transparent,
              child: Container(
                height: 45,
                width: 406,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(color: const Color(0xFFCFDDDD), width: 0.7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Color(0xFF95A3A2),
                      fontFamily: "SF Pro Text",
                      fontSize: 17,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFF082625),
                        size: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 4,
              children: [
                _buildChip(
                  "artisanal",
                  "assets/SearchPictures/Vector_artisanal_green.png",
                  const Color(0xFFDCE5E5),
                  const Color(0xFF124442),
                ),
                _buildChip(
                  "local service",
                  "assets/SearchPictures/map_search_local_service.png",
                  const Color(0xFFDCE5E5),
                  const Color(0xFF124442),
                ),
                _buildChip(
                  "small businesses",
                  "assets/SearchPictures/Vector_small_businesses.png",
                  const Color(0xFFDCE5E5),
                  const Color(0xFF124442),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(36.7538, 3.0588), // Algiers
              zoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.flutter_application_3awni',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: const LatLng(36.7535, 3.0580),
                    width: 49,
                    height: 64,
                    builder: (context) => Image.asset(
                      "assets/SearchPictures/profile1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Marker(
                    point: const LatLng(36.7749, 3.0590),
                    width: 49,
                    height: 64,
                    builder: (context) => Image.asset(
                      "assets/SearchPictures/profile2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Marker(
                    point: const LatLng(36.7228, 3.0595),
                    width: 49,
                    height: 64,
                    builder: (context) => Image.asset(
                      "assets/SearchPictures/profile3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Marker(
                    point: const LatLng(36.7228, 3.0795),
                    width: 49,
                    height: 64,
                    builder: (context) => Image.asset(
                      "assets/SearchPictures/profile3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  margin: const EdgeInsets.only(bottom: 90, left: 300),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.my_location_outlined,
                      color: Colors.grey[800],
                      size: 28,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(360, 53),
                      backgroundColor: const Color(0xFFC4D6D6),
                      elevation: 0,
                      shadowColor: Colors.black.withValues(alpha: 0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Color(0xFFC1C6C668), // Fixed: 8-digit hex
                          width: 0.8,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Search Provider",
                      style: TextStyle(
                        color: Color(0xFF1C6B68),
                        fontFamily: "Roboto",
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(
      String label, String image, Color bgColor, Color textColor) {
    return Chip(
      avatar: CircleAvatar(
        backgroundImage: AssetImage(image),
        backgroundColor: bgColor,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 11,
          fontFamily: 'Roboto',
        ),
      ),
      backgroundColor: bgColor,
      side: const BorderSide(color: Color(0XFF377C79), width: 0.9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}