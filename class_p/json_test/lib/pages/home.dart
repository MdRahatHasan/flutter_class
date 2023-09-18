import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue = 'Location 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.teal.shade100),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 20),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.teal,
                        ),
                        iconSize: 30,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 16),
                        underline: const SizedBox(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        isExpanded: true,
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Location 1',
                            child: Text('Location 1'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Location 2',
                            child: Text('Location 2'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Location 3',
                            child: Text('Location 3'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Yahya',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'What do you want to eat?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Favorite
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'icons/heart.svg',
                          width: 55,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Favorite')
                  ],
                ),
                //Cheap
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'icons/Tag.svg',
                        width: 45,
                        color: Colors.teal,
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Cheap')
                  ],
                ),
                //Trend
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'icons/trend.svg',
                          width: 45,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Trend')
                  ],
                ),
                //More
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'icons/more.svg',
                          width: 45,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('More')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Today\'s promo',
                  style: TextStyle(fontSize: 28),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  stackBox(
                    foodImage: 'images/food1.png',
                    foodTitle: 'Fruit salad mix',
                    foodSubTitle: 'Delices Fruit salad, Ngasem',
                    foodPrice: '18.500',
                    foodRegularPrice: '22.500',
                    left: '5',
                  ),
                  const SizedBox(width: 16),
                  stackBox(
                    foodImage: 'images/food2.png',
                    foodTitle: 'Bakso jumbo',
                    foodSubTitle: 'Bakso pak ndut, Dlopo',
                    foodPrice: '18.500',
                    foodRegularPrice: '22.500',
                    left: '10',
                  ),
                  const SizedBox(width: 16),
                  stackBox(
                    foodImage: 'images/food1.png',
                    foodTitle: 'Fruit salad mix',
                    foodSubTitle: 'Delices Fruit salad, Ngasem',
                    foodPrice: '18.500',
                    foodRegularPrice: '22.500',
                    left: '5',
                  ),
                  const SizedBox(width: 16),
                  stackBox(
                    foodImage: 'images/food2.png',
                    foodTitle: 'Bakso jumbo',
                    foodSubTitle: 'Bakso pak ndut, Dlopo',
                    foodPrice: '18.500',
                    foodRegularPrice: '22.500',
                    left: '10',
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget stackBox(
    {foodImage, foodTitle, foodSubTitle, foodPrice, foodRegularPrice, left}) {
  return Container(
    height: 323,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.teal,
      image: DecorationImage(
        image: AssetImage('$foodImage'),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        const Positioned(
          top: 16,
          right: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            child: Icon(
              Icons.favorite_border,
              color: Colors.teal,
              size: 20,
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          child: Container(
            height: 101,
            width: 268,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            foodTitle,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            foodSubTitle,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                foodPrice,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Text(
                                foodRegularPrice,
                                style: const TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('$left Left'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
