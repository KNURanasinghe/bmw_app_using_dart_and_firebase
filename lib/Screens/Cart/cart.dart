

import 'package:flutter/material.dart';

import '../../Components/Custom Buttons/custom_button1.dart';
import '../../Components/Customtext/custompoppin_text.dart';
import '../../Models/car_model.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<String> offers = [
    "https://th.bing.com/th/id/OIP.sHIALdrch_q8tkIsRlc8bAHaEK?pid=ImgDet&rs=1",
    "https://www.wallpaperbetter.com/wallpaper/595/897/91/landscapes-streets-cars-bmw-1-series-m-coupe-bmw-1-series-2K-wallpaper-middle-size.jpg",
    "https://wallup.net/wp-content/uploads/2016/07/21/373743-road-BMW-car-vehicle.jpg",
    "https://th.bing.com/th/id/OIP.LRiJgvsC4kxVCBmbwpMGIQHaEK?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.1n1YEq0WyCySDdjgjabK-AHaEu?pid=ImgDet&rs=1"
  ];
  List<Car> car = [
    Car(
      id: 1,
      description: "Powerful and luxurious sedan",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/BMW_i7_xDrive60_1X7A6822.jpg/300px-BMW_i7_xDrive60_1X7A6822.jpg",
      name: "BMW 7 Series",
      price: 85000.0,
      type: "Sedan",
    ),
    Car(
      id: 2,
      description: "Compact and sporty coupe",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/2020_BMW_420i_Sport_Automatic_2.0.jpg/1024px-2020_BMW_420i_Sport_Automatic_2.0.jpg",
      name: "BMW 4 Series",
      price: 50000.0,
      type: "Coupe",
    ),
    Car(
      id: 3,
      description: "Sleek and stylish SUV",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2019_BMW_X5_M50d_Automatic_3.0.jpg/300px-2019_BMW_X5_M50d_Automatic_3.0.jpg",
      name: "BMW X5",
      price: 70000.0,
      type: "SUV",
    ),
    Car(
      id: 4,
      description: "Sleek and stylish SUV",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/BMW_F40_IMG_0432.jpg/300px-BMW_F40_IMG_0432.jpg",
      name: "1 Series (F40)",
      price: 70000.0,
      type: "Coupe",
    ),
    Car(
      id: 5,
      description: "Sleek and stylish SUV",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/2020_BMW_M235i_xDrive_Gran_Coupe_Front.jpg/300px-2020_BMW_M235i_xDrive_Gran_Coupe_Front.jpg",
      name: "2 Series Gran Coupé",
      price: 70000.0,
      type: "Sedan",
    ),
    Car(
      id: 6,
      description: "Sleek and stylish SUV",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/2019_BMW_318d_SE_Automatic_2.0_Front.jpg/300px-2019_BMW_318d_SE_Automatic_2.0_Front.jpg",
      name: "3 Series",
      price: 70000.0,
      type: "Coupe",
    ),
    Car(
      id: 7,
      description: "Sleek and stylish SUV",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/BMW_XM_1X7A6874.jpg/300px-BMW_XM_1X7A6874.jpg",
      name: "XM",
      price: 70000.0,
      type: "SUV",
    ),
    // Add more BMWCar objects as needed
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const CustomPoppinsText(
            text: "My Cart",
            fweight: FontWeight.w500,
            fontsize: 20,
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: car.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          car[index].image,
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomPoppinsText(
                                text: car[index].name,
                                color: Colors.black,
                                fontsize: 14,
                                textoverflow: TextOverflow.ellipsis,
                              ),
                              CustomPoppinsText(
                                text: "\$ ${car[index].price}",
                                color: Colors.black,
                                fontsize: 16,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.remove,
                                    size: 15,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomPoppinsText(
                            text: "Total", fontsize: 18, color: Colors.black),
                        CustomPoppinsText(
                          text: "\$ 45000",
                          fontsize: 18,
                          fweight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    CustomButton1(
                        text: "Buy Now",
                        colors: [Colors.amber.shade500, Colors.amber.shade800],
                        ontap: () {},
                        size: size)
                  ]),
                ),
              ),
            )
          ],
        ));
  }
}
