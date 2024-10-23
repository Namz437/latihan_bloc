import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:latihan_bloc/pages/pulsa.dart';

class ShopeePay extends StatefulWidget {
  const ShopeePay({super.key});

  @override
  State<ShopeePay> createState() => _ShopeePayState();
}

class _ShopeePayState extends State<ShopeePay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            Icon(Icons.wallet, size: 24.0, color: Colors.white),
            SizedBox(width: 4.0),
            Text(
              "Selamat Malam",
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded,
                size: 32.0, color: Colors.white),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 252, 101, 0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 60,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shopee Pay",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Rp.0",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 110),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Spay Later",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const Text(
                                  "Aktifkan Sekarang",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _ActionIcon(
                            icon: Icons.account_balance_wallet_rounded,
                            label: "Isi Saldo"),
                        _ActionIcon(
                            icon: Icons.qr_code_sharp, label: "Kode Bayar"),
                        _ActionIcon(
                            icon: Icons.send_to_mobile_outlined,
                            label: "Transfer"),
                        _ActionIcon(
                            icon: Icons.assured_workload_outlined,
                            label: "Transfer Bank"),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    Container(
                      height: 200,
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(0, 1)),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: _MenuGrid(),
                    ),
                    const SizedBox(height: 20.0),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Upgrade Shopee Pay Mu!",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Text(
                                      "Upgrade Shopee Pay Plus dan Nikmati Transfer Gratis Unlimited",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20.0),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://png.pngtree.com/png-clipart/20221224/original/pngtree-shopefood-logo-png-image_8801636.png', // Ganti URL ini dengan URL gambar yang sesuai
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nikmati Layanan Shopee Food!",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Text(
                                      "Shopee Food Pengantaran Aman, Nyaman, dan Cepat",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Tambahkan ImageSlideshow di bawah Container
                    const SizedBox(
                        height: 20.0), // Jarak antara container dan slideshow
                    ImageSlideshow(
                      /// Width of the [ImageSlideshow].
                      width: double.infinity,

                      /// Height of the [ImageSlideshow].
                      height: 200,

                      /// The page to show when first creating the [ImageSlideshow].
                      initialPage: 0,

                      /// The color to paint the indicator.
                      indicatorColor: Colors.blue,

                      /// The color to paint behind the indicator.
                      indicatorBackgroundColor: Colors.grey,

                      /// The widgets to display in the [ImageSlideshow].
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10.0), // Mengatur radius
                          child: Image.network(
                            'https://down-id.img.susercontent.com/file/id-50009109-01c6bea8647bd099eb880f92390e96a9',
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10.0), // Mengatur radius
                          child: Image.network(
                            'https://down-id.img.susercontent.com/file/id-11134258-7rask-m16jj3820z1sa0',
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10.0), // Mengatur radius
                          child: Image.network(
                            'https://down-id.img.susercontent.com/file/id-11134258-7rasl-m17wy3q8ndc2e7',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],

                      /// Called whenever the page in the center of the viewport changes.
                      onPageChanged: (value) {
                        print('Page changed: $value');
                      },

                      /// Auto scroll interval.
                      /// Do not auto scroll with null or 0.
                      autoPlayInterval: 3000,

                      /// Loops back to first slide.
                      isLoop: true,
                    ),
                    // Paling Bawah
                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // navbar di bawah (di atas tutup scaffold)
      bottomNavigationBar: const BottomAppBar(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  Text("Beranda"),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet),
                  Text("Keuangan"),
                ],
              ),
              SizedBox(width: 40),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.history),
                  Text("Riwayat"),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text("Saya"),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 252, 101, 0),
              onPressed: null,
              shape: CircleBorder(), // Memastikan bentuk bulat
              child: Icon(
                Icons.qr_code,
                size: 35,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "QRIS",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 252, 101, 0),
              ),
            ),
          ],
        ),
      ),
      // Navbar di bawah
    );
  }
}

class _ActionIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 36.0, color: Colors.white),
        const SizedBox(height: 10.0),
        Text(
          label,
          style: const TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}

class _MenuGrid extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {
      "image":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/mobile-1514938-1285858.png?f=webp&w=256",
      "label": "Pulsa &\nTagihan"
    },
    {
      "image":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/mobile-1017-357875.png?f=webp&w=256",
      "label": "Pulsa"
    },
    {
      "image":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/mobile-wifi-1536798-1302909.png?f=webp&w=256",
      "label": "Paket Data"
    },
    {
      "image":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/bank-5256989-4408058.png?f=webp&w=256",
      "label": "Sea Bank"
    },
    {
      "image":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/shope-18-1101713.png?f=webp&w=256",
      "label": "Shopee Food"
    },
    {
      "image":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/virtual-account-9082154-7400264.png?f=webp&w=256",
      "label": "Virtual Account"
    },
    {
      "image":
          "https://cdn.iconscout.com/icon/free/png-512/free-apple-logo-icon-download-in-svg-png-gif-file-formats--fruit-technology-brands-and-logos-pack-icons-2673784.png?f=webp&w=256",
      "label": "Apple Hub"
    },
    {
      "image": "https://static.thenounproject.com/png/4927947-200.png",
      "label": "Lainnya"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];

        return GestureDetector(
          onTap: () {
            if (item["label"] == "Pulsa") {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Pulsa(), 
                ),
              );
            }
          },
          
          child: Column(
            children: [
              Image.network(item["image"]!, width: 36.0, height: 36.0),
              const SizedBox(height: 2.0),
              Text(
                item["label"]!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 10.0, color: Colors.black),
              ),
            ],
          ),
        );
      },
    );
  }
}
