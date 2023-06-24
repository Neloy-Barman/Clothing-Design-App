import 'package:flutter/material.dart';

class BasketItem extends StatefulWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String color;
  final String size;
  const BasketItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.color,
    required this.size,
  });

  @override
  State<BasketItem> createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key(
        "Delete",
      ),
      child: Card(
        margin: const EdgeInsets.all(
          12,
        ),
        elevation: 3,
        color: const Color.fromARGB(
          255,
          248,
          243,
          243,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.12,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 110,
                  child: Padding(
                    padding: const EdgeInsets.all(
                      6,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      child: Image(
                        image: NetworkImage(
                          widget.imageUrl,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // flex: 1,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FittedBox(
                                  child: Text(
                                    widget.title,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                                IconButton(
                                  padding: const EdgeInsets.all(
                                    0,
                                  ),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Color(
                                      0xff868696,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.amberAccent,
                          child: FittedBox(
                            child: Text(
                              "\$${widget.price.toStringAsFixed(
                                2,
                              )}",
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(
                                  0xff868696,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      widget.color,
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                      softWrap: true,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        size: 10,
                                      ),
                                    ),
                                    Text(
                                      widget.size,
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        50,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FittedBox(
                                          child: IconButton(
                                            padding: const EdgeInsets.all(
                                              0,
                                            ),
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Color(
                                                0xff868696,
                                              ),
                                            ),
                                            // alignment: Alignment.center,
                                          ),
                                        ),
                                        const FittedBox(
                                          child: Text(
                                            "2",
                                          ),
                                        ),
                                        FittedBox(
                                          child: IconButton(
                                            padding: const EdgeInsets.all(
                                              0,
                                            ),
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
