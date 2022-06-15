## scroll_to_hide_bottom_navigation_bar

A package that provides a simple wrapper to wrap your Bottom Navigation Bar widget, that lets you show a scroll to forward the Bottom Navigation Bar.

## Feature
- scroll to hide bottom navigation bar.
- change hide animation.

## Getting started

To use this package, add scroll_to_hide_bottom_navigation_bar as a dependency in your pubspec.yaml file.

## Usage
Minmal example:

```dart
    ScrollToHideBottomNavigationBar()

```
Custom settings:

```dart
   void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Text("${index + 1}. Hello");
        },
      ),
      bottomNavigationBar: ScrollToHideBottomNavigationBar(
        scrollController: _scrollController,
        duration: const Duration(milliseconds: 1000),
        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.pink,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}


```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
