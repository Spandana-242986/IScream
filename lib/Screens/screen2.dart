import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key});

  void _handleIceCreamTap(BuildContext context, String flavor) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => IceCreamDetailScreen(flavor: flavor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:  Color.fromARGB(213, 245, 233, 237),
      body: Center(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Vanilla'),
                  child: iceCreamContainer(
                      'https://www.allrecipes.com/thmb/uzxCGTc-5WCUZnZ7BUcYcmWKxjo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-48974-vanilla-milkshake-hero-4x3-c815295c714f41f6b17b104e7403a53b.jpg',
                      'Vanilla',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Chocolate'),
                  child: iceCreamContainer(
                      'https://i2.wp.com/bakingmischief.com/wp-content/uploads/2019/07/chocolate-milkshake-image-683x1024.jpg',
                      'Chocolate',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Strawberry'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlcuhqVhq17OSrrcvTeX48CXzpi49SSq6a4Q&s%27',
                      'Strawberry',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Blackcurrent'),
                  child: iceCreamContainer(
                      'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA5L2thdGV2NjQ0N19jbGVhcl81MzAyNzFjMi1hNDViLTQwYTYtODdmYy1hYmE4NGJkYTQyZTcuanBn.jpg',
                      'Blackcurrent',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'pista'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSncD1BGJ4JicOU0PqBpF8cVwmUMUiGvcbkh107F3IrXYmM4Q3aUYjZcAJNmmeQxzL55dg&usqp=CAU',
                      'pista',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Coffee'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-4eoMrWoUUiaN9QRZlMkGGQ7v-0EjYSgCsA&s%27',
                      'Coffee',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Cookies'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_BoKzSDJ7GAmzW2LE2qNz59w9H99C8COIXyFYH1OJKosdo9owMZOBQW6EgtcSlB4S9o&usqp=CAU%27',
                      'Cookies',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Sitaphal'),
                  child: iceCreamContainer(
                      'https://cdn.tarladalal.com/members/9306/big/big_sitaphal_milkshake-14699.jpg',
                      'Sitaphal',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Mint choco'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1xsRwn9FxCMp-b-tCt6AkCRkBPEjLbzanpg&s%27',
                      'Mint choco',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Cottoncandy'),
                  child: iceCreamContainer(
                      'https://marisabakes.com/wp-content/uploads/2023/08/Cotton-Candy-Milkshakes2587-3179791373-e1691275655664.jpg',
                      'Cottoncandy',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Hokeypokey'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPO6v7-ZlFr5RnMoHMSFXYr1IZwW64PRdOmg&s%27',
                      'Hokeypokey',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Raspberry'),
                  child: iceCreamContainer(
                      'https://assets.magimix.com/files/rec_46397/photo_milkshake-fruits-rouges-photo.jpg',
                      'Raspberry',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows
          ],
        ),
      ),
    );
  }

  Widget iceCreamContainer(String imageUrl, String flavor, BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(251, 243, 94, 143),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                imageUrl,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            flavor,
            style: TextStyle(fontSize: 21),
          ),
        ],
      ),
    );
  }
}

class IceCreamDetailScreen extends StatefulWidget {
  final String flavor;

  const IceCreamDetailScreen({Key? key, required this.flavor}) : super(key: key);

  @override
  _IceCreamDetailScreenState createState() => _IceCreamDetailScreenState();
}

class _IceCreamDetailScreenState extends State<IceCreamDetailScreen> {
  int _numberOfItems = 1;

  String getPrice(String flavor) {
    switch (flavor) {
      case 'Vanilla':
        return '\$6.00';
      case 'Chocolate':
        return '\$8.00';
      case 'Strawberry':
        return '\$4.50';
      case 'Blackcurrent':
        return '\$6.90';
      case 'pista':
        return '\$6.00';
      case 'Coffee':
        return '\$7.50';
      case 'Cookies':
        return '\$8.20';
      case 'Sitaphal':
        return '\$5.59';
      case 'Mint choco':
        return '\$6.50';
      case 'Cottoncandy':
        return '\$4.50';
      case 'Hokeypokey':
        return '\$6.78';
      case 'Raspberry':
        return '\$6.89';
      default:
        return '\$0.00';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.flavor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.flavor} Milk Shake',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Price per item: ${getPrice(widget.flavor)}', // Displaying the price per item
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_numberOfItems > 1) {
                        _numberOfItems--;
                      }
                    });
                  },
                ),
                Text(
                  '$_numberOfItems', // Displaying the number of items selected
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _numberOfItems++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Total Price: ${_numberOfItems * double.parse(getPrice(widget.flavor).substring(1))}', // Displaying the total price
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement your desired functionality here
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen2(),
    ),
  );
}
