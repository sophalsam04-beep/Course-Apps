import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Course Apps development",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF6F7FB),
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_sharp,
              size: 35,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
              size: 35,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3_rounded,
              size: 35,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              _header(),
              const SizedBox(height: 20),
              _promoteCard(),
              const SizedBox(height: 12),
              _MyCourse(),
              const SizedBox(height: 7),
              _allCourseTitle(),
              const SizedBox(height: 12),
              _courseCard(
                title: "Figma",
                rating: "Learning",
                colors: [Colors.red, Colors.green],
                icon: "Down",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.orange,
          child: Icon(Icons.person, size: 35, color: Colors.white),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " SOPHAL 🎓",
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.people,
            size: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _promoteCard() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 5, 69, 244),
            Color.fromARGB(0, 5, 42, 228),
          ],
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Blender 3D\nclass",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "30% OFF",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.read_more,
            size: 70,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _MyCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "App development!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "See all",
              style: TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Container(
                width: 250,
                height: 130,
                padding: EdgeInsets.only(right: 15),
                margin: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.green,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/1200x/44/51/b1/4451b16f14d94961bbc5a1a29c2d3459.jpg",
                        ),
                      ),
                      title: Text(
                        "Flutter",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Platform apps development 100%",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _allCourseTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "All course🎓",
          style: TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Text(
              "Popular",
              style: TextStyle(
                fontSize: 19,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_circle_down_outlined,
              size: 32,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ],
    );
  }

  Widget _courseGird() {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 0.9,
      children: [
        _courseCard(
          title: "Adobe\nIllustrator",
          rating: "5.0",
          colors: const [Color(0xFFFF512F), Color(0xFFF09819)],
          icon: "Ai",
        ),
        _courseCard(
          title: "Figma\nUI Design",
          rating: "4.9",
          colors: const [Color(0xFFEC008C), Color(0xFFFFC0CB)],
          icon: "F",
        ),
      ],
    );
  }

  Widget _courseCard({
    required String title,
    required String rating,
    required List<Color> colors,
    required String icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: colors),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
