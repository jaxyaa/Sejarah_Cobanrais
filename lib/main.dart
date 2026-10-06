import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1560BD),
        appBar: AppBar(
          title: Text('Coban Rais'),
          backgroundColor: Color(0xFF1560BD),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/coban_rais.png',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Coban Rais',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                    16,
                    0,
                    16,
                    20,
                  ),
                  child: Text(
                    'Coban Rais merupakan salah satu wisata air terjun '
                    'yang berada di kawasan Kota Batu, Jawa Timur. '
                    'Air terjun ini terletak di kawasan pegunungan '
                    'dengan suasana yang sejuk, dikelilingi pepohonan '
                    'dan pemandangan alam yang masih asri.\n\n'
                    'Dahulu, Coban Rais dikenal dengan nama '
                    'Coban Sabrangan. Nama tersebut berkaitan dengan '
                    'perjalanan menuju air terjun yang mengharuskan '
                    'pengunjung menyeberangi sungai. Nama Coban Rais '
                    'kemudian digunakan dan dipercaya berkaitan dengan '
                    'nama seorang tokoh atau warga setempat bernama '
                    'Mbah Rais.\n\n'
                    'Seiring berkembangnya pariwisata di Kota Batu, '
                    'kawasan Coban Rais mulai dikembangkan sebagai '
                    'tempat wisata alam. Selain menikmati keindahan '
                    'air terjun, pengunjung juga dapat menikmati '
                    'suasana hutan dan berbagai fasilitas wisata '
                    'yang tersedia di kawasan tersebut.\n\n'
                    'Keindahan alam, udara yang sejuk, serta suasana '
                    'pegunungan menjadi daya tarik utama Coban Rais '
                    'hingga saat ini.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xffffffff),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff002b60),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1560BD),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xFF1560BD),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Coban Rais\n'
                                    'Dusun Dresel,\n'
                                    'Desa Oro-Oro Ombo,\n'
                                    'Kecamatan Batu,\n'
                                    'Kota Batu, Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xFF1560BD),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xFF4F81BD),
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1560BD),
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xFF1560BD),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '085749586749',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1560BD),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 1,
                              color: Color(0xFF4F81BD),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xFF1560BD),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'jaxyaa4@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1560BD),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
