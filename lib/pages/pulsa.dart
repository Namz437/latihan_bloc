import 'package:flutter/material.dart';

class Pulsa extends StatefulWidget {
  const Pulsa({super.key});

  @override
  State<Pulsa> createState() => _PulsaState();
}

class _PulsaState extends State<Pulsa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Center(
          child: Text(
            'Pulsa',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(Icons.phone, size: 32.0),
                  const SizedBox(width: 10.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0895331538636',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Kontak: Namz😊',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.network(
                    'https://img.ws.mms.shopee.co.id/e0b784709fb546c921eacebeb7f37b92',
                    width: 42.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: const [
                  PulsaOptionWidget(nominal: "1rb", price: "Rp1.900"),
                  PulsaOptionWidget(nominal: "2rb", price: "Rp2.800"),
                  PulsaOptionWidget(nominal: "3rb", price: "Rp3.800"),
                  PulsaOptionWidget(nominal: "5rb", price: "Rp6.800"),
                  PulsaOptionWidget(nominal: "8rb", price: "Rp8.800"),
                  PulsaOptionWidget(nominal: "10rb", price: "Rp10.500"),
                  PulsaOptionWidget(
                      nominal: "15rb", price: "Rp9.500", discount: "-41%"),
                  PulsaOptionWidget(nominal: "20rb", price: "Rp21.095"),
                  PulsaOptionWidget(
                      nominal: "25rb", price: "Rp19.500", discount: "-25%"),
                  PulsaOptionWidget(nominal: "30rb", price: "Rp31.000"),
                  PulsaOptionWidget(nominal: "40rb", price: "Rp40.500"),
                  PulsaOptionWidget(nominal: "50rb", price: "Rp49.500"),
                  PulsaOptionWidget(nominal: "60rb", price: "Rp60.800"),
                  PulsaOptionWidget(nominal: "70rb", price: "Rp70.000"),
                  PulsaOptionWidget(nominal: "75rb", price: "Rp75.500"),
                  PulsaOptionWidget(nominal: "80rb", price: "Rp80.900"),
                  PulsaOptionWidget(nominal: "90rb", price: "Rp90.500"),
                  PulsaOptionWidget(nominal: "100rb", price: "Rp100.000"),
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Checkout',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PulsaOptionWidget extends StatelessWidget {
  final String nominal;
  final String price;
  final String? discount;

  const PulsaOptionWidget({
    Key? key,
    required this.nominal,
    required this.price,
    this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (discount != null)
            Text(
              discount!,
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
            ),
          Text(
            nominal,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          const SizedBox(height: 4.0),
          Text(
            price,
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
