import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widget/CustomBottomSheet.dart';

class ProductScreen extends StatelessWidget {
  String img;
  ProductScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                image: DecorationImage(
                  image: AssetImage("images/$img.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 22,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          img,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$300.54",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.red.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Khas Solo",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15),
// Rating Bar
                  RatingBar.builder(
                    unratedColor: Color.fromARGB(255, 223, 221, 221),
                    itemSize: 28,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    onRatingUpdate: (rating) {},
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Bahan katun halus, proses batik printing solo alusan. Bahan halus, lembut, tidak terawang, tidak menyusut setelah pencucian. Cocok buat baju kerja, kondangan, dan acara formal/semiformal lainnya.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            CupertinoIcons.cart_fill,
                            size: 22,
                            color: Color(0xFFFD725A),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return CustomBottomSheet();
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 70),
                          decoration: BoxDecoration(
                            color: Color(0xFFFD725A),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                color: Colors.white.withOpacity(0.9)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
