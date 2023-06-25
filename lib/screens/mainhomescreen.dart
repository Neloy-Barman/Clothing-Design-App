import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../models/Product.dart';

import '../screens/drawer.dart';

import '../itemWidgets/horizontallistitems.dart';

import '../itemWidgets/discounted_item_widgets.dart';

class MainHomeScreen extends StatefulWidget {
  static const routeScreen = "./main-home";
  const MainHomeScreen({
    super.key,
  });

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  bool man = true;
  bool woman = false;
  bool kids = false;
  bool family = false;

  List<Product> products = [
    Product(
      title: "Men Brown Jacket",
      subtitle: "Makenzy",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScGxCyHsUDa2QDndS2XeBjodoNfMwdBWeqjJm-DBdi68b5HVkVTN51tKG9wzR6tSZjoNk&usqp=CAU",
      price: 40.00,
    ),
    Product(
      title: "Men Black Jacket",
      subtitle: "Levi's",
      imageUrl:
          "https://rukminim1.flixcart.com/image/550/650/xif0q/jacket/a/h/i/xl-mnt-7025-montrez-original-imag5hb93udpfs4q-bb.jpeg?q=90&crop=false",
      price: 55.35,
    ),
    Product(
      title: "Men Black Shirt",
      subtitle: "Eastacsy",
      imageUrl:
          "https://www.jiomart.com/images/product/original/rv7y75ij0k/design-up-black-shirt-men-black-slim-fit-tuxedo-shirt-xl-shirts-shirt-casual-shirt-slim-fit-party-wear-product-images-rv7y75ij0k-0-202210141655.jpg?im=Resize=(500,630)",
      price: 30.00,
    ),
    Product(
      title: "Men White Tshirt",
      subtitle: "Tedbaker",
      imageUrl:
          "https://cdn.shopify.com/s/files/1/0434/2487/4658/products/HV020D0899Z_BC01_1_1831539f-7207-43c0-b326-98be14614b42_800x.jpg?v=1667324606",
      price: 23.5,
    ),
    Product(
      title: "Men Mass Tshirt",
      subtitle: "Makenzy",
      imageUrl: "https://m.media-amazon.com/images/I/41QrF3sVmTL._SY550_.jpg",
      price: 30.75,
    ),
  ];

  // For NavigationBar index
  int page = 2;

  // AppBar Titles according to screens
  var screenNames = [
    "SHOPPING CART",
    "FAVOURITES",
    "HOME",
    "SETTINGS",
    "PROFILE",
  ];

  // Navigation Bar Icon builder
  Widget iconBuilder(IconData icon) {
    return Icon(
      icon,
      size: 30,
      color: const Color.fromARGB(
        255,
        211,
        211,
        223,
      ),
    );
  }

  Widget customTabBarItem(
    String heading,
    String imaegUrl,
    bool selected,
    Function handler,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 2,
      ),
      child: InkWell(
        onTap: () => handler,
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                imaegUrl,
              ),
              radius: 35,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              heading,
              style: TextStyle(
                color: selected
                    ? Colors.black
                    : Color(
                        0xff868696,
                      ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            if (selected == true)
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black,
              ),
          ],
        ),
      ),
    );
  }

  Widget typewithbutton(
    String title,
    Function handler,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.0265,
        // color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            TextButton(
              style: ButtonStyle(
                alignment: Alignment.center,
              ),
              onPressed: () {
                handler;
              },
              child: Text(
                "View all",
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_add_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(
          255,
          248,
          243,
          243,
        ),
        height: MediaQuery.of(context).size.height * 0.07,
        animationDuration: const Duration(
          milliseconds: 10,
        ),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color(
          0xff4B46B8,
        ),
        index: page,
        items: [
          iconBuilder(
            Icons.shopping_cart_outlined,
          ),
          iconBuilder(
            Icons.favorite_border_outlined,
          ),
          iconBuilder(
            Icons.home_outlined,
          ),
          iconBuilder(
            Icons.settings_outlined,
          ),
          iconBuilder(
            Icons.perm_identity_outlined,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Container(
              // color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(
                  4.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: const Color(
                                0xffFCFCFC,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              hintText: "Search",
                              hintStyle: const TextStyle(
                                height: 2.7,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        color: const Color(
                          0xffFCFCFC,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                          7.0,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.filter_alt_outlined,
                            color: Color(
                              0xff4B46B8,
                            ),
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.redAccent,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    customTabBarItem(
                      "Man",
                      "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwZmFjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      man,
                      () {
                        setState(() {
                          man = true;
                          woman = false;
                          kids = false;
                          family = false;
                          print("$man $kids $woman $family");
                        });
                      },
                    ),
                    customTabBarItem(
                      "Woman",
                      "https://img.freepik.com/free-photo/happiness-wellbeing-confidence-concept-cheerful-attractive-african-american-woman-curly-haircut-cross-arms-chest-self-assured-powerful-pose-smiling-determined-wear-yellow-sweater_176420-35063.jpg?w=2000",
                      woman,
                      () {
                        setState(() {
                          woman = true;
                          man = false;
                          kids = false;
                          family = false;
                        });
                      },
                    ),
                    customTabBarItem(
                      "Kids",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6nh1u1oqECl72gM-UJxix5HCvbvaNFoNsMIA9aJ2RBKvkM-gb7rkE1p_RHvsfh35274A&usqp=CAU",
                      kids,
                      () {
                        setState(() {
                          kids = true;
                          man = false;
                          woman = false;
                          family = false;
                        });
                      },
                    ),
                    customTabBarItem(
                      "Family",
                      "https://media.istockphoto.com/id/1398069511/photo/affectionate-and-loving-mixed-race-family-sitting-together-happy-family-with-two-daughters.webp?b=1&s=170667a&w=0&k=20&c=-LaoBRGsOW_iBFY0uMQCms0aI8sLNdN8dx1yBmC-00o=",
                      family,
                      () {
                        setState(() {
                          family = true;
                          man = false;
                          woman = false;
                          kids = true;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            typewithbutton(
              "Limited Edition",
              () {},
            ),
            Container(
              // color: Colors.cyan,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var index = 0; index < products.length; index++)
                      HorizontalListItem(
                        title: products[index].title,
                        imageUrl: products[index].imageUrl,
                        subtitle: products[index].subtitle,
                        price: products[index].price,
                      ),
                  ],
                ),
              ),
            ),
            typewithbutton(
              "Most Popular",
              () {},
            ),
            Container(
              // color: Colors.blueGrey,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < products.length; i++)
                      DiscountedItem(
                        title: products[i].title,
                        subtitle: products[i].subtitle,
                        imageUrl: products[i].imageUrl,
                        price: products[i].price,
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
