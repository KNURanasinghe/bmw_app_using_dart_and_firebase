import 'package:flutter/material.dart';

import '../Components/Custom Buttons/custom_button1.dart';
import '../Components/Customtext/custompoppin_text.dart';
import '../Models/car_model.dart';

class ProductDetails extends StatefulWidget {
  final Car car;
  const ProductDetails({
    super.key,
    required this.car,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackButton(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: NetworkImage(widget.car.image),
                    ),
                  ),
                  CustomPoppinsText(text: widget.car.name),
                  CustomPoppinsText(
                    text: "\$ ${widget.car.price.toString()}",
                    fontsize: 16,
                    fweight: FontWeight.w600,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.car.description,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton1(
                    text: "Buy Now",
                    colors: [Colors.amber.shade500, Colors.amber.shade800],
                    ontap: () {},
                    size: size),
              )
            ],
          ),
        ),
      ),
    );
  }
}
