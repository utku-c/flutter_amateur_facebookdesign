import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => bildirimMesaj(),
              barrierDismissible: false,
            );
          },
          icon: Icon(
            Icons.person_add_outlined,
            size: 28,
            color: Colors.grey.shade900,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.filter_center_focus_rounded,
                    size: 28,
                    color: Colors.grey.shade900,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_ic_call_sharp,
                    size: 28,
                    color: Colors.grey.shade900,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 28,
                    color: Colors.grey.shade900,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8),
          child: Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey.shade800,
                    size: 30,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  width: 43,
                  height: 43,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/message.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 8, bottom: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Stories',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          'See Archive',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeStory(
                            stroyImage: 'assets/images/azamat-zhanisov-.jpg',
                            userImage: 'assets/images/aatik-tasneem.jpg',
                            userName: 'Utku',
                          ),
                          makeStory(
                            stroyImage: 'assets/images/azamat-zhanisov-.jpg',
                            userImage: 'assets/images/aiony-haust.jpg',
                            userName: 'Tutku',
                          ),
                          makeStory(
                            stroyImage: 'assets/images/azamat-zhanisov-.jpg',
                            userImage: 'assets/images/averie-woodard.jpg',
                            userName: 'Galatasaray',
                          ),
                          makeStory(
                            stroyImage: 'assets/images/azamat-zhanisov-.jpg',
                            userImage: 'assets/images/azamat-zhanisov.jpg',
                            userName: 'HataySpor',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    makeFeed(
                      userName: 'Utku',
                      userImage: 'assets/images/azamat-zhanisov-.jpg',
                      feedTime: '1 hour ago',
                      feedImage: 'assets/images/u.jpg',
                      feedText:
                          'All the lorem makıdadawdadawdmwn hatayspor... beşiktaş',
                    ),
                    makeFeed(
                      userName: 'Utku',
                      userImage: 'assets/images/azamat-zhanisov-.jpg',
                      feedTime: '1 hour ago',
                      feedImage: 'assets/images/u.jpg',
                      feedText:
                          'All the lorem makıdadawdadawdmwn hatayspor... beşiktaş',
                    ),
                    makeFeed(
                      userName: 'Utku',
                      userImage: 'assets/images/azamat-zhanisov-.jpg',
                      feedTime: '1 hour ago',
                      feedImage: 'assets/images/u.jpg',
                      feedText:
                          'All the lorem makıdadawdadawdmwn hatayspor... beşiktaş',
                    ),
                    makeFeed(
                      userName: 'Utku',
                      userImage: 'assets/images/azamat-zhanisov-.jpg',
                      feedTime: '1 hour ago',
                      feedImage: 'assets/images/u.jpg',
                      feedText:
                          'All the lorem makıdadawdadawdmwn hatayspor... beşiktaş',
                    ),
                    makeFeed(
                      userName: 'ttttUtku',
                      userImage: 'assets/images/azamat-zhanisov-.jpg',
                      feedTime: '1 hour ago',
                      feedImage: 'assets/images/u.jpg',
                      feedText:
                          'All the lorem makıdadawdadawdmwn hatayspor... beşiktaş',
                    ),
                    makeFeed(
                      userName: 'Utku',
                      userImage: 'assets/images/azamat-zhanisov-.jpg',
                      feedTime: '1 hour ago',
                      feedImage: 'assets/images/u.jpg',
                      feedText:
                          'All the lorem makıdadawdadawdmwn All the lorem makıdadawdadawdmwn hathatAll the lorem makıdadawdadawdmwn hatayspor... beşiktaş',
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeStory({stroyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(stroyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                userName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          userImage,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        feedTime,
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => ucNokta(name: userName),
                    barrierDismissible: true,
                  );
                },
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            feedText,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade800,
              height: 1.5,
              letterSpacing: .8,
            ),
          ),
          SizedBox(height: 10),
          feedImage == null
              ? Container()
              : Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(feedImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeLike(),
                  Transform.translate(
                    offset: Offset(-4, 0),
                    child: makeLove(),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '2.5k',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
              Text(
                '400 Comments',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade800,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          size: 14,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 14,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              'Like',
              style: TextStyle(
                color: isActive ? Colors.blue : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              'Comment',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              'Share',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bildirimMesaj() {
    return AlertDialog(
      title: Text(
        'Arkadaş Eklemek İstiyor Musun?',
        style: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 18,
        ),
      ),
      content: Text(
        'Tanımadığın kişileri ekleme!',
        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Evet',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/positive-vote.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Hayır',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/negative-vote.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
      elevation: 4,
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget ucNokta({name}) {
    return AlertDialog(
      elevation: 80,
      backgroundColor: Colors.grey.shade300,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$name adlı kullanıcıyı neden şikayet etmek istiyorsun?',
            style: TextStyle(
              color: Colors.red.shade900,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Hey...\nGereksiz İhbarlardan Kaçın...\nYalan ihbarlar senide etkiler',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 14,
            ),
          )
        ],
      ),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey.shade600,
        ),
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            bildirimDurum(bildirimNedeni: 'Yalan Haber'),
            bildirimDurum(bildirimNedeni: 'Şikayet Et'),
            bildirimDurum(bildirimNedeni: 'Rapor Et'),
            bildirimDurum(bildirimNedeni: 'Hassas İçerik'),
            bildirimDurum(bildirimNedeni: 'Kötüye kullanım Bildir'),
            bildirimDurum(bildirimNedeni: '13 Yaş Altı')
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  'Bizden Memnun Kaldınız mı ?',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Teşekkür ederiz');
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          'Memnun Kaldım',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      print('Teşekkür ederiz');
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          'Memnun Kalmadım',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget bildirimDurum({bildirimNedeni}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print(bildirimNedeni + '\'e tıklandı.');
        },
        child: Center(
          child: Container(
            child: Text(
              bildirimNedeni,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
