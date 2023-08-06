import 'package:flutter/material.dart';

class Flipkartclone extends StatelessWidget {
  const Flipkartclone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Container(
          child: Text("Flipkart",
              style: TextStyle(
                  height: 1.9, fontWeight: FontWeight.bold, fontSize: 25)),
          height: 50.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/flipkart'),
            fit: BoxFit.contain,
          )),
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10.0),
          Icon(Icons.shopping_cart, color: Colors.white),
          SizedBox(width: 10.0),
        ],
      ),
      bottomSheet: BottomSheetContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Searchbar(),
            SizedBox(height: 10.0),
            Menustripe(),
            // SizedBox(height: 10.0),
            offerslider(),
            //SizedBox(height: 10.0),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Itemcard(
                    imageUrl: 'assets/tv.png',
                    offer: 'Min.10%off',
                  ),
                  Itemcard(
                    imageUrl: 'assets/airpods.png',
                    offer: 'Min.25%off',
                  ),
                  Itemcard(
                    imageUrl: 'assets/Vivo.png',
                    offer: 'Min.45%off',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount for You",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: Colors.white),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
                color: Colors.white,
                height: 400.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/camera.png',
                          offer: "Min.30% Off",
                        )),
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/toys.png',
                          offer: "Min.30% Off",
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/psp.png',
                          offer: "Min.35% Off",
                        )),
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/bat.png',
                          offer: "Min.65% Off",
                        )),
                      ],
                    )
                  ],
                )),

            // SizedBox(height: 10.0),
            offerslider(),

            Container(
                color: Colors.white,
                height: 400.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/bag.png',
                          offer: "Min.15% Off",
                        )),
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/ring.png',
                          offer: "Min.85% Off",
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/tank.png',
                          offer: "Min.75% Off",
                        )),
                        Expanded(
                            child: Itemcard(
                          imageUrl: 'assets/glass.png',
                          offer: "Min.65% Off",
                        )),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Search for Products and Brands',
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                ),
                child: Center(
                  child: Icon(Icons.mic, color: Colors.blueAccent),
                ),
              )),
        )));
  }
}

class Menustripe extends StatelessWidget {
  const Menustripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),
                )
              ],
            ),
          ),
          Menustripeiteam(),
          Menustripeiteam(imageUrl: 'applicance', iteamLabel: 'Appliences'),
          Menustripeiteam(imageUrl: 'headphone', iteamLabel: 'Headphones'),
          Menustripeiteam(imageUrl: 'mobile', iteamLabel: 'Mobile'),
          Menustripeiteam(imageUrl: 'laptop', iteamLabel: 'Laptops'),
          Menustripeiteam(imageUrl: 'watch', iteamLabel: 'Watches'),
        ],
      ),
    );
  }
}

class Menustripeiteam extends StatelessWidget {
  final String? imageUrl;
  final String? iteamLabel;

  const Menustripeiteam({super.key, this.imageUrl, this.iteamLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/${imageUrl ?? 'offers'}.png'))),
        ),
        Text(
          iteamLabel ?? 'Top Offers',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),
        )
      ],
    );
  }
}

class offerslider extends StatelessWidget {
  const offerslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      // width: 300,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          offerslideritem(
            imageUrl: 'assets/Rog.jpg',
            offerlabel: 'Prize drop for GamingLaptops',
          ),
          offerslideritem(
            imageUrl: 'assets/spe.png',
            offerlabel: 'Discount on:',
            offerPercentage: "10-45% OFF",
          ),
          offerslideritem(
            imageUrl: 'assets/re.png',
            offerlabel: 'Price Down on:',
            offerPercentage: "5-15% OFF",
          ),
          offerslideritem(
            imageUrl: 'assets/sw.png',
            offerlabel: 'Sales on:',
            offerPercentage: "20-55% OFF",
          ),
        ],
      ),
    );
  }
}

class offerslideritem extends StatelessWidget {
  final String? imageUrl;
  final String? offerlabel;
  final String? offerPercentage;
  const offerslideritem(
      {Key? key,
      required this.imageUrl,
      required this.offerlabel,
      this.offerPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl ?? 'assets/mobile.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offerlabel ?? "Best Gaming Laptops",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 20.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Center(
                    child: Text(
                  offerPercentage ?? "30-75% OFF",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "No Cost EMi Durability Certified",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Itemcard extends StatelessWidget {
  final String? imageUrl;
  final String? offer;
  const Itemcard({Key? key, this.imageUrl, this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130.0,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage(imageUrl ?? 'assets/airpods.png'),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    //   height: 130.0,
                    //  width: 150,

                    )),
            Container(
              //  height: 50.0,
              //  width: 100.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                //borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  offer ?? "Min.50% off",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home_filled,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.phone,
            color: Colors.blueAccent,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
              )),
          Icon(
            Icons.dashboard_customize_outlined,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.support,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
