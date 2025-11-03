import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  final List<Map<String, dynamic>> users = [
    {
      "name": "Marvin McKinney",
      "job": "Plombier",
      "rating": 4,
      "image": "assets/SearchPictures/man1.png",
    },
    {
      "name": "Eleanor Pena",
      "job": "Stylist",
      "rating": 3,
      "image": "assets/SearchPictures/woman1.png",
    },
    {
      "name": "Jerome Bell",
      "job": "Électricien",
      "rating": 5,
      "image": "assets/SearchPictures/man2.png",
    },
    {
      "name": "Wade Warren",
      "job": "Plombier",
      "rating": 2,
      "image": "assets/SearchPictures/man3.png",
    },
  ];

  Widget _buildUserCard(String name, String job, int rating, String imagePath) {
    return Card(
      color: const Color(0xFFFEFEFE),
      elevation: 2,
      shadowColor: const Color(0xFFDDE5E5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: AssetImage(imagePath)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF0E3735),
                    ),
                  ),
                  Text(
                    job,
                    style: const TextStyle(
                        color: Color(0xFF95A3A2), fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: List.generate(
                      5,
                      (i) => Icon(
                        i < rating ? Icons.star : Icons.star_border,
                        color: Colors.orange,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildStat("80", "reviews"),
                      const SizedBox(width: 16),
                      _buildStat("150", "clients"),
                      const SizedBox(width: 16),
                      _buildStat("5 yr", "experience"),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(Icons.bookmark_border,
                    size: 22, color: Color(0xFF007F5F)),
                const SizedBox(height: 24),
                SizedBox(
                  height: 34,
                  width: 99,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF007F5F),
                      elevation: 6,
                      shadowColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side:
                            const BorderSide(color: Color(0xFFD2DEDE), width: 0.6),
                      ),
                    ),
                    child: const Text(
                      "See Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(value,
            style: const TextStyle(fontSize: 8, color: Color(0xFF95A3A2))),
        Text(label,
            style: const TextStyle(fontSize: 8, color: Color(0xFF95A3A2))),
      ],
    );
  }

  Widget _buildChip(
      String label, String image, Color bgColor, Color textColor) {
    return SizedBox(
      height: 36,
      child: Chip(
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
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200), // increased height
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(top: 70, left: 16, right: 16, bottom: 0),
              color: Colors.transparent,
              child: Container(
                height: 45,
                width: double.infinity,
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Color(0xFF95A3A2),
                      fontFamily: "SF Pro Text",
                      fontSize: 17,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/SearchPictures/search.png",
                        width: 26.05,
                        height: 10,
                        color: const Color(0xFF082625),
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
                  "assets/SearchPictures/Vector_artisanal.png",
                  const Color(0xFF007F5F),
                  Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 16),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return _buildUserCard(
              user['name'],
              user['job'],
              user['rating'],
              user['image'],
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 81,
          color: const Color(0xFFE2E9E9), 
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFE2E9E9),
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Image.asset(
                  "assets/SearchPictures/Home-1.png",
                  width: 28,
                  height: 27,
                ),
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8, right: 22),
                child: Image.asset(
                  "assets/SearchPictures/list-search.png",
                  width: 26,
                  height: 29,
                ),
              ),
              label: "searchUsers",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Image.asset(
                  "assets/SearchPictures/Users-4.png",
                  width: 24,
                  height: 24,
                ),
              ),
              label: "Users",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Image.asset(
                  "assets/SearchPictures/Setting.png",
                  width: 24,
                  height: 24,
                ),
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
