import 'package:day_second/pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [PageOne(), PageTwo(), PageThree(), PageFour(), PageFive(), PageSix()];
  final List<bool> _visitedIcons = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60),
                color: Colors.indigo,
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _visitedIcons[0] ? Colors.green : (_currentIndex >= 0 ? Colors.green : Colors.grey),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: _currentIndex == 0 ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.battery_charging_full_outlined),
                            onPressed: () {
                              setState(() {
                                _currentIndex = 0;
                                //_visitedIcons[0] = true;
                              });
                            },
                            color: _currentIndex == 0 ? Colors.white : Colors.black,
                            iconSize: _currentIndex == 0 ? 50 : 28,
                          ),
                        ),
                        if (_visitedIcons[0])
                          const Icon(Icons.check_circle, color: Colors.white, size: 20),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _visitedIcons[1] ? Colors.green : (_currentIndex == 1 || !_visitedIcons[0] ? Colors.grey : Colors.green),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: _currentIndex == 1 ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.directions_walk_outlined),
                            onPressed: () {
                              if (_visitedIcons[1]) {
                              setState(() {
                                _currentIndex = 1;
                              });
                            }
                            },
                            color: _currentIndex == 1 ? Colors.white : Colors.black,
                            iconSize: _currentIndex == 1 ? 50 : 28,
                          ),
                        ),
                        if (_visitedIcons[1] && _currentIndex != 1)
                          const Icon(Icons.check_circle, color: Colors.white, size: 20),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _visitedIcons[2] ? Colors.green : (_currentIndex == 2 || !_visitedIcons[0] ? Colors.grey : Colors.green),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: _currentIndex == 2 ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.library_books),
                            onPressed: () {
                              if (_visitedIcons[2]) {
                              setState(() {
                                _currentIndex = 2;
                              });
                            }
                            },
                            color: _currentIndex == 2 ? Colors.white : Colors.black,
                            iconSize: _currentIndex == 2 ? 50 : 28,
                          ),
                        ),
                        if (_visitedIcons[2] && _currentIndex != 2)
                          const Icon(Icons.check_circle, color: Colors.white, size: 20),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _visitedIcons[3] ? Colors.green : (_currentIndex == 3 || !_visitedIcons[0] ? Colors.grey : Colors.green),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: _currentIndex == 3 ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.my_location_rounded),
                            onPressed: () {
                              if (_visitedIcons[3]) {
                              setState(() {
                                _currentIndex = 3;
                              });
                              }
                            },
                            color: _currentIndex == 3 ? Colors.white : Colors.black,
                            iconSize: _currentIndex == 3 ? 50 : 28,
                          ),
                        ),
                        if (_visitedIcons[3] && _currentIndex != 3)
                          const Icon(Icons.check_circle, color: Colors.white, size: 20),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _visitedIcons[4] ? Colors.green : (_currentIndex == 4 || !_visitedIcons[0] ? Colors.grey : Colors.green),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: _currentIndex == 4 ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.mail_outline),
                            onPressed: () {
                              if (_visitedIcons[4]) {
                              setState(() {
                                _currentIndex = 4;
                              });
                              }
                            },
                            color: _currentIndex == 4 ? Colors.white : Colors.black,
                            iconSize: _currentIndex == 4 ? 50 : 28,
                          ),
                        ),
                        if (_visitedIcons[4] && _currentIndex != 4)
                          const Icon(Icons.check_circle, color: Colors.white, size: 20),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _visitedIcons[5] ? Colors.green : (_currentIndex == 5 || !_visitedIcons[0] ? Colors.grey : Colors.green),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: _currentIndex == 5 ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.route_outlined),
                            onPressed: () {
                              if (_visitedIcons[5]) {
                              setState(() {
                                _currentIndex = 5;
                              });
                              }
                            },
                            color: _currentIndex == 5 ? Colors.white : Colors.black,
                            iconSize: _currentIndex == 5 ? 50 : 28,
                          ),
                        ),
                        if (_visitedIcons[5] && _currentIndex != 5)
                          const Icon(Icons.check_circle, color: Colors.white, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: _pages[_currentIndex],
              ),
            ],
          ),
        ),
        Positioned(
          top: 60.0, right: 20.0, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  setState(() {
                    _currentIndex = (_currentIndex - 1) % _pages.length;
                    _visitedIcons[_currentIndex] = true;
                  });
                },
                child: const Icon(Icons.arrow_back, color: Colors.indigo, size: 35,),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                backgroundColor: Colors.indigo,
                onPressed: () {
                  setState(() {
                    _currentIndex = (_currentIndex + 1) % _pages.length;
                    _visitedIcons[_currentIndex] = true;
                  });
                },
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
        ),
  ],
);
  }
}