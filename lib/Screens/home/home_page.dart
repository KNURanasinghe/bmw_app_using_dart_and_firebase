import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Components/Customtext/custompoppin_text.dart';
import '../../Models/car_model.dart';
import '../product_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> offers = [
    "https://innovation-village.com/wp-content/uploads/2019/06/BMW-Vision-Efficient-Dynamics-1140x533.jpg",
    "https://wallup.net/wp-content/uploads/2016/07/21/373743-road-BMW-car-vehicle.jpg",
    "https://th.bing.com/th/id/OIP.iEA7fI8Nq0zRm1lHL27ITQHaEX?pid=ImgDet&rs=1",
    "https://cdn.motor1.com/images/mgl/P40q2/s1/bmw-8-series-coupe.jpg",
    "https://i2.wp.com/suvmodels.org/wp-content/uploads/2021/06/2023-bmw-3-series-price-2.jpg?fit=1024%2C527&ssl=1"
  ];
  List<Car> car = [
    Car(
      id: 1,
      description:
          "The BMW 7 Series is the epitome of luxury and sophistication. As the flagship sedan in BMW's lineup, it boasts a lk.nidarshana.bmwmanding presence and a refined, elegant design. With its cutting-edge technology and opulent interior, the 7 Series provides an unparalleled level of lk.nidarshana.bmwfort and convenience. Under the hood, powerful engines deliver thrilling performance, making every drive an unforgettable experience.",
      image:
          "https://th.bing.com/th/id/OIP.GWBtHcT64SKZo42mzzlVxwHaEo?pid=ImgDet&rs=1",
      name: "BMW 7 Series",
      price: 85000.0,
      type: "Sedan",
    ),
    Car(
      id: 2,
      description:
          "The BMW 4 Series is a sporty and stylish coupe that exudes athleticism from every angle. With its sleek profile and dynamic lines, the 4 Series stands out on the road. Embracing the BMW legacy of performance, this coupe delivers agile handling and precise control. The driver-centric cockpit and advanced infotainment system ensure that every journey is not only thrilling but also connected and enjoyable.",
      image:
          "https://th.bing.com/th/id/OIP.eIFaQrG2WDA_RckTJAnolQHaEK?pid=ImgDet&rs=1",
      name: "BMW 4 Series",
      price: 50000.0,
      type: "Coupe",
    ),
    Car(
      id: 3,
      description:
          "The BMW X5 is a luxury SUV that blends versatility with refinement. lk.nidarshana.bmwbining a spacious and lk.nidarshana.bmwfortable interior with advanced off-road capabilities, the X5 is ready to conquer any terrain. As a family-friendly SUV, it offers cutting-edge safety features and modern technology, making it an ideal choice for both urban lk.nidarshana.bmwmuting and adventurous getaways.",
      image:
          "https://th.bing.com/th/id/OIP._YvqU3SHKixcMWElMSaBiAHaE7?pid=ImgDet&rs=1",
      name: "BMW X5",
      price: 70000.0,
      type: "SUV",
    ),
    Car(
      id: 4,
      description:
          "The BMW 1 Series (F40) is a lk.nidarshana.bmwpact and dynamic hatchback designed for urban living. Despite its lk.nidarshana.bmwpact size, the 1 Series doesn't lk.nidarshana.bmwpromise on performance or style. Its modern design and premium features provide an elevated driving experience, while its lk.nidarshana.bmwpact footprint makes it easy to maneuver through city streets and tight parking spaces",
      image:
          "https://th.bing.com/th/id/OIP.d8_OJK3KE2KOabRuKh54KAHaE8?pid=ImgDet&rs=1",
      name: "1 Series (F40)",
      price: 70000.0,
      type: "Coupe",
    ),
    Car(
      id: 5,
      description:
          "The BMW 2 Series Gran Coupé is a sporty and versatile lk.nidarshana.bmwpact sedan that redefines the notion of driving pleasure. With its four-door design and spacious cabin, it lk.nidarshana.bmwbines the practicality of a sedan with the sportiness of a coupe. Whether navigating through city traffic or tackling winding roads, the 2 Series Gran Coupé delivers agile handling and engaging performance.",
      image:
          "https://th.bing.com/th/id/OIP.gtvYOK4YnTaX8BqeniZK1AHaE6?pid=ImgDet&rs=1",
      name: "2 Series Gran Coupé",
      price: 70000.0,
      type: "Sedan",
    ),
    Car(
      id: 6,
      description:
          "The BMW 3 Series is an iconic sports sedan that continues to set the benchmark for performance and luxury. With its timeless design, the 3 Series blends elegance with athleticism, capturing attention wherever it goes. Engineered with precision and equipped with cutting-edge technology, this sedan offers a driving experience that is both dynamic and refined.",
      image:
          "https://th.bing.com/th/id/OIP.3yj6Ucwq9VFaDDy9LET-VgHaEc?pid=ImgDet&rs=1",
      name: "3 Series",
      price: 70000.0,
      type: "Coupe",
    ),
    Car(
      id: 7,
      description:
          "The BMW XM is an exciting addition to the BMW lineup, pushing the boundaries of performance and versatility. As a high-performance SUV, the XM lk.nidarshana.bmwbines the power of a sports car with the practicality of an SUV. Its athletic styling and powerful engines make it an adrenaline-pumping choice for those seeking the ultimate driving experience",
      image:
          "https://th.bing.com/th/id/OIP.MUKGCpOS_ougxQqiTuic2QHaEK?pid=ImgDet&rs=1",
      name: "XM",
      price: 70000.0,
      type: "SUV",
    ),
    // Add more BMWCar objects as needed
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Icon(Icons.menu), Icon(Icons.search)],
                ),
                const CustomPoppinsText(
                  text: "Hello Kamal",
                  fontsize: 22,
                  color: Colors.black,
                ),
                CustomPoppinsText(
                  text: "Lets strat Shopping..!",
                  fontsize: 16,
                  color: Colors.grey.shade700,
                ),
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 150.0, autoPlay: true),
                  items: offers.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(i), fit: BoxFit.cover),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: car.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 0.9),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetails(car: car[index]),
                            ));
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            Image.network(
                              car[index].image,
                              fit: BoxFit.fill,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomPoppinsText(
                                    text: car[index].name,
                                    color: Colors.black,
                                    fontsize: 12,
                                  ),
                                  CustomPoppinsText(
                                    text: "\$ ${car[index].price}",
                                    color: Colors.black,
                                    fontsize: 12,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
