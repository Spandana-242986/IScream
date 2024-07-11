import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

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
      backgroundColor: Color.fromARGB(213, 245, 233, 237),
      body: Center(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Vanilla'),
                  child: iceCreamContainer(
                      'https://cdn.loveandlemons.com/wp-content/uploads/2023/06/homemade-ice-cream-recipe.jpg',
                      'Vanilla',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Chocolate'),
                  child: iceCreamContainer(
                      'https://carveyourcraving.com/wp-content/uploads/2021/06/chocolate-icecream-in-an-icecream-maker.jpg',
                      'Chocolate',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Strawberry'),
                  child: iceCreamContainer(
                      'https://www.lifeloveandsugar.com/wp-content/uploads/2023/07/No-Churn-Strawberry-Ice-Cream4.jpg',
                      'Strawberry',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Blackcurrent'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7xomkEOstnSVZze7sp7GDL9HUBqWXaF5pjw&s',
                      'Blackcurrent',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'pista'),
                  child: iceCreamContainer(
                      'https://img2.exportersindia.com/product_images/bc-full/2018/8/5228814/pista-ice-cream-1533737800-4177600.jpeg',
                      'pista',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Coffee'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcvReZIJYX1tkdHqs1aDsD_ODUy3w1iNg7Q&s',
                      'Coffee',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Cookies'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1NlIvnVyEyb_z64hMpRhW_gUWpH-cFhSMGA&s',
                      'Cookies',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Sitaphal'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp4AjSlleIuiQcDA4iNdbohooeamqvIpAt1g&s',
                      'Sitaphal',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Mint choco'),
                  child: iceCreamContainer(
                      'https://tiimg.tistatic.com/fp/2/005/981/mint-choco-chips-ice-cream-025.jpg',
                      'Mint choco',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Cottoncandy'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpL156lSZgTzkGOlJFSKTJP8YOuLwDxk1MH90ScyRWiEgeF6ngsbf2nXHvUROa-dtOt74&usqp=CAU',
                      'Cottoncandy',
                      context),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Hokeypokey'),
                  child: iceCreamContainer(
                      'https://www.tastingtable.com/img/gallery/the-first-ice-cream-flavor-was-a-sweet-combination-of-honey-and-nectar/l-intro-1690484967.jpg',
                      'Hokeypokey',
                      context),
                ),
                GestureDetector(
                  onTap: () => _handleIceCreamTap(context, 'Raspberry'),
                  child: iceCreamContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhk9nuKLG2F159a2SWydPa731unF8K_Sn0Cw&s',
                      'Raspberry',
                      context),
                ),
              ],
            ),
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
        return '\$4.00';
      case 'Chocolate':
        return '\$5.00';
      case 'Strawberry':
        return '\$4.50';
      case 'Blackcurrent':
        return '\$5.50';
      case 'pista':
        return '\$4.00';
      case 'Coffee':
        return '\$5.50';
      case 'Cookies':
        return '\$5.00';
      case 'Sitaphal':
        return '\$4.50';
      case 'Mint choco':
        return '\$5.50';
      case 'Cottoncandy':
        return '\$4.00';
      case 'Hokeypokey':
        return '\$5.90';
      case 'Raspberry':
        return '\$4.50';
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
              '$_numberOfItems Scoop(s) ${widget.flavor} Ice Cream',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Price: \$${_numberOfItems * double.parse(getPrice(widget.flavor).substring(1))}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (_numberOfItems > 1) {
                      setState(() {
                        _numberOfItems--;
                      });
                    }
                  },
                ),
                Text(
                  '$_numberOfItems',
                  style: TextStyle(fontSize: 24),
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
      home: Screen1(),
    ),
  );
}
