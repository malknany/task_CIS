import 'package:flutter/material.dart';
import 'package:task_cis_c/screen/home_page/controle.dart';
import 'package:task_cis_c/screen/home_page/widget/item_button.dart';
import 'package:task_cis_c/screen/sofa_info/view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageControl _control = HomePageControl();
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.menu, color: Colors.white),
                        const Spacer(),
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset('assets/image/myphoto.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
                  child: Text('Explore',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          _control.image.length,
                          (index) => Container(
                            clipBehavior: Clip.hardEdge,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              color: Colors.transparent,
                              height: 150,
                              width: 150,
                              child: Image.asset(_control.image[index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                3,
                (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: ItemButton(
                      text: _control.category[index],
                      index: index,
                      isSelected: selected,
                    ))),
          ),
          SizedBox(
              height: 230,
              child: Row(
                children: List.generate(
                    _control.item.length,
                    (index) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SofaInfoScreen())),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      height: 150,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent.shade100,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _control.item[index].title,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "\$${_control.item[index].price}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.green,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Spacer(),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                _control.item[index].reat,
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.green,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      clipBehavior: Clip.hardEdge,
                                      margin: const EdgeInsets.only(right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        _control.item[index].image,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          right: 20, top: 10),
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green.shade900,
                                      ),
                                      child: const Text(
                                        'New',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
              )),
          const SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
