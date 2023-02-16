import 'package:flutter/material.dart';
import 'package:task_cis_c/screen/home_page/controle.dart';
import 'package:task_cis_c/screen/sofa_info/widget/item_continar.dart';

class SofaInfoScreen extends StatefulWidget {
  const SofaInfoScreen({Key? key}) : super(key: key);

  @override
  State<SofaInfoScreen> createState() => _SofaInfoScreenState();
}

class _SofaInfoScreenState extends State<SofaInfoScreen> {
  final HomePageControl _control = HomePageControl();

  int index = 0;

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sofa',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        foregroundColor: Colors.green.shade900,
        actions: [
          Icon(
            Icons.shopping_bag,
            color: Colors.green.shade900,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade50,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.hardEdge,
              height: 180,
              width: double.infinity,
              child: Image.asset(
                _control.image[index],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _control.item[0].title,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${_control.item[0].price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text('This is Text ' * 40,
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
                softWrap: true),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Color',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                ItemContainer(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  color: Colors.teal,
                ),
                ItemContainer(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  color: Colors.blue.shade900,
                ),
                ItemContainer(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  color: Colors.orange,
                ),
                ItemContainer(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  color: Colors.black,
                ),
                ItemContainer(
                  onTap: () {
                    setState(() {
                      index = 4;
                    });
                  },
                  color: Colors.black26,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Quantity',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 90,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.shade900,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Icon(Icons.add, color: Colors.white)),
                        ),
                      ),
                      Text(
                        counter.toString(),
                        style: const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            counter == 0 ? counter = 0 : counter--;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.shade900,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Icon(Icons.exposure_neg_1_rounded,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.green.shade100,
              ),
              child: const Center(
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.green.shade900,
              ),
              child: const Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
