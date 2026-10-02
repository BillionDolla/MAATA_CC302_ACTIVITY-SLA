// import 'package:flutter/material.dart';

// void main() => runApp(const App());

// class Event {
//   String title, date, venue, organizer, image, description;
//   Event(this.title, this.date, this.venue, this.organizer, this.image, this.description);
// }

// final events = [
//   Event('Leadership Seminar','Sept 25, 2026','Auditorium','Student Affairs','assets/images/event1.jpg','Leadership and teamwork seminar.'),
//   Event('Basketball Event','Sept 28, 2026','Gym','Sports Department','assets/images/event2.jpg','Inter-school basketball competition.'),
//   Event('Health Workshop','Oct 2, 2026','Room 204','Nursing Department','assets/images/event1.jpg','Health awareness workshop.'),
//   Event('Science Fair','Oct 6, 2026','Science Building','Science Club','assets/images/event2.jpg','Science and technology projects.'),
//   Event('Skills Workshop','Oct 10, 2026','Function Hall','Academic Department','assets/images/event1.jpg','Student skills development workshop.'),
//   Event('Student Day','Oct 15, 2026','School Grounds','Student Council','assets/images/event2.jpg','Student appreciation activity.'),
// ];

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
//       fontFamily: 'Arial',
//     ),
//     home: const Home(),
//   );
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: AppBar(
//       title: const Text('School Event Planner'),
//       backgroundColor: Colors.indigo,
//       foregroundColor: Colors.white,
//     ),
//     body: Column(
//       children: [
//         const EventHeader(),
//         Container(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             children: [
//               const Icon(Icons.favorite, color: Colors.red),
//               const SizedBox(width: 😎,
//               Expanded(child: Text('$count interested')),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('View Schedule'),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: events.length,
//             itemBuilder: (context, i) => EventCard(
//               event: events[i],
//               onLike: () => setState(() => count++),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// class EventHeader extends StatelessWidget {
//   const EventHeader({super.key});

//   @override
//   Widget build(BuildContext context) => Container(
//     margin: const EdgeInsets.all(15),
//     padding: const EdgeInsets.all(20),
//     width: double.infinity,
//     color: Colors.indigo,
//     child: const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Upcoming School Events',
//             style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
//         Text('Seminars, sports, workshops and programs.',
//             style: TextStyle(color: Colors.white70)),
//       ],
//     ),
//   );
// }

// class EventCard extends StatefulWidget {
//   final Event event;
//   final VoidCallback onLike;

//   const EventCard({super.key, required this.event, required this.onLike});

//   @override
//   State<EventCard> createState() => _EventCardState();
// }

// class _EventCardState extends State<EventCard> {
//   bool liked = false;

//   @override
//   Widget build(BuildContext context) => Card(
//     margin: const EdgeInsets.all(10),
//     child: Padding(
//       padding: const EdgeInsets.all(12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(widget.event.image, height: 130, width: double.infinity, fit: BoxFit.cover),
//           Row(
//             children: [
//               Expanded(
//                 child: Text(widget.event.title,
//                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               ),
//               IconButton(
//                 onPressed: () {
//                   setState(() => liked = !liked);
//                   if (liked) widget.onLike();
//                 },
//                 icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
//                     color: liked ? Colors.red : Colors.grey),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               EventDateBox(widget.event.date),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('📍 ${widget.event.venue}'),
//                     Text('👤 ${widget.event.organizer}'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 😎,
//           Text(widget.event.description),
//         ],
//       ),
//     ),
//   );
// }

// class EventDateBox extends StatelessWidget {
//   final String date;

//   const EventDateBox(this.date, {super.key});

//   @override
//   Widget build(BuildContext context) => Container(
//     padding: const EdgeInsets.all(10),
//     color: Colors.indigo.shade50,
//     child: Column(
//       children: [
//         const Icon(Icons.event, color: Colors.indigo),
//         Text(date, textAlign: TextAlign.center),
//       ],
//     ),
//   );
// }

import 'package:flutter/material.dart';

class Fruit {
  String name;

  Fruit({required this.name});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Fruit> fruits = [
    Fruit(name: 'Apple'),
    Fruit(name: 'Grape'),
    Fruit(name: 'Orange'),
    Fruit(name: 'Kiwi'),
    Fruit(name: 'Pineapple'),
    Fruit(name: 'Raspberry'),
    Fruit(name: 'Maata'),
  ];

  void deleteFruit(Fruit fruit) {
    setState(() {
      fruits.remove(fruit);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Fruit List'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),

        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final currentFruit = fruits[index];

            return FruitCard(
              fruit: currentFruit,
              index: index,
              delete: () {
                deleteFruit(currentFruit);
              },
            );
          },
        ),
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  final Fruit fruit;
  final int index;
  final VoidCallback delete;

  const FruitCard({
    super.key,
    required this.fruit,
    required this.index,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(
            '${index + 1}',
            style: const TextStyle(color: Colors.white),
          ),
        ),

        title: Text(
          fruit.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.teal),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${fruit.name} has been added to your cart!'),
                  ),
                );
              },
            ),

            TextButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete, color: Colors.red),
              label: const Text('Remove', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
