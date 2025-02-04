import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final List<Map<String, String>> menuList = [
    {
      'name': 'กระเพราหมูกรอบ',
      'imagePath':
          'https://th.bing.com/th/id/OIP.zyxWJe9c0YHHg6V8CRbC5QHaHa?rs=1&pid=ImgDetMain',
      'description': 'กระเพราหมูกรอบเป็นเมนูอาหารไทยที่มีรสเผ็ดร้อนและเข้มข้น ใช้หมูกรอบที่กรอบนอกนุ่มใน ผัดกับพริกและกระเทียมจนหอม ราดบนข้าวสวยร้อน ๆ เป็นอาหารยอดนิยมที่รับประทานง่ายและอร่อย.',
      'youtubeUrl': 'https://youtu.be/16Odh9KFPK0?si=kQcGBbhebFSZVxLr',
    },
    {
      'name': 'ข้าวยำไก่แช่บ',
      'imagePath': 'https://img.kapook.com/u/2016/surauch/Mix/a9.jpg',
      'description': 'ข้าวยำไก่แช่บเป็นเมนูท้องถิ่นภาคใต้ที่มีรสชาติเปรี้ยวหวานเผ็ดจากสมุนไพรสดที่ใช้ในการปรุงรส ผสมกับข้าวและไก่ที่ปรุงอย่างพิถีพิถัน ซึ่งเหมาะกับการรับประทานในทุกช่วงเวลา.',
      'youtubeUrl': 'https://youtu.be/axhXY80ut5o',
    },
    {
      'name': 'ไข่เจียว',
      'imagePath':
          'https://th.bing.com/th/id/OIP.Bw2efiQiJVFQTDvRn9OcawHaHa?rs=1&pid=ImgDetMain',
      'description': 'ไข่เจียวอร่อยที่ใคร ๆ ก็รู้จัก เป็นอาหารเช้าเบา ๆ ที่ทำง่าย แต่เต็มไปด้วยรสชาติและโปรตีนจากไข่ สามารถรับประทานคู่กับข้าวสวยหรือเป็นของว่างได้.',
      'youtubeUrl': 'https://youtu.be/3_qmV7lveR4?si=BjM0eNFQjGQifJ-d',
    },
    {
      'name': 'ก๋วยเตียว',
      'imagePath':
          'https://th.bing.com/th/id/R.39c0d0c5b4ea3a1c1c13a050d59abf71?rik=vaAVjHIneeCpow&riu=http%3a%2f%2fsoodoarhan.ueuo.com%2fimages%2fTex6.jpg&ehk=FJn1fdG51WlixLr6OCVWLwi2BTqiLU84no4lDWG8LxY%3d&risl=&pid=ImgRaw&r=0',
      'description': 'ก๋วยเตี๋ยวเป็นเมนูอาหารไทยที่ได้รับความนิยมอย่างมาก มีหลายประเภท เช่น ก๋วยเตี๋ยวหมูหรือก๋วยเตี๋ยวเนื้อ มีรสชาติกลมกล่อมและเสิร์ฟพร้อมน้ำซุปอร่อย ๆ.',
      'youtubeUrl': 'https://youtu.be/PupEj90q4Wk?si=3Eyw4EiVG36ldxme',
    },
    {
      'name': 'บราวนี่',
      'imagePath':
          'https://th.bing.com/th/id/OIP.qz4QbSx2RC5DiXWXVujlgQAAAA?rs=1&pid=ImgDetMain',
      'description': 'บราวนี่เค้กช็อกโกแลตหอมหวานที่มีเนื้อสัมผัสที่นุ่ม บางครั้งก็สามารถเพิ่มถั่วหรือผลไม้แห้งในการทำ เพื่อเพิ่มความกรุบกรอบและรสชาติที่หลากหลาย.',
      'youtubeUrl': 'https://youtu.be/GMl0kWqouLk?si=hy4KocG_EUlnH7gc',
    },
    {
      'name': 'โกโก้',
      'imagePath':
          'https://thumbs.dreamstime.com/b/chocolate-milkshake-plastic-take-away-cup-brown-isolated-white-background-183918245.jpg?w=360',
      'description': 'โกโก้ร้อนรสเข้มข้น ดื่มแล้วรู้สึกอุ่นใจ เป็นเครื่องดื่มที่มีรสชาติเข้มข้นของโกโก้และความหวานที่พอดี เหมาะสำหรับดื่มในวันที่อากาศเย็น',
      'youtubeUrl': 'https://youtu.be/zZTZfGxKJ_c?si=B8jDbMj5UFJpiMny',
    },
    {
      'name': 'ขนมจีบ',
      'imagePath':
          'https://th.bing.com/th/id/OIP.LmJhpx-cFTTJsghqSaMdjgAAAA?rs=1&pid=ImgDetMain',
      'description': 'ขนมจีบเป็นอาหารว่างยอดนิยมของไทยและจีน ทำจากแป้งเกี๊ยวที่ห่อไส้เนื้อหมูหรือกุ้งผสมกับเครื่องปรุงรส เช่น กระเทียม ซีอิ๊ว และพริกไทย ทอดหรือนึ่งสุกจนแป้งนุ่มและไส้สุกหอมอร่อย ขนมจีบเป็นเมนูที่มักจะเสิร์ฟพร้อมซอสหรือซีอิ๊วหวานเพิ่มความอร่อย.',
      'youtubeUrl': 'https://youtu.be/qROXmR9LL50?si=KBUozs05s_-itOBX',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แนะนำอาหารและของว่าง'),
        backgroundColor: Colors.blue[500],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'แนะนำอาหาร',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    name: 'กระเพราหมูกรอบ',
                    color: Colors.green,
                    imagePath:
                        'https://th.bing.com/th/id/OIP.zyxWJe9c0YHHg6V8CRbC5QHaHa?rs=1&pid=ImgDetMain',
                    description:
                        'กระเพราหมูกรอบเป็นเมนูอาหารไทยที่มีรสเผ็ดร้อนและเข้มข้น ใช้หมูกรอบที่กรอบนอกนุ่มใน ผัดกับพริกและกระเทียมจนหอม ราดบนข้าวสวยร้อน ๆ เป็นอาหารยอดนิยมที่รับประทานง่ายและอร่อย.',
                    youtubeUrl:
                        'https://youtu.be/16Odh9KFPK0?si=kQcGBbhebFSZVxLr',
                    menuList: menuList, // Passing menuList to CustomContainer
                  ),
                  CustomContainer(
                    name: 'ข้าวยำไก่แช่บ',
                    color: Colors.blue,
                    imagePath:
                        'https://img.kapook.com/u/2016/surauch/Mix/a9.jpg',
                    description: 'ข้าวยำไก่แช่บเป็นเมนูท้องถิ่นภาคใต้ที่มีรสชาติเปรี้ยวหวานเผ็ดจากสมุนไพรสดที่ใช้ในการปรุงรส ผสมกับข้าวและไก่ที่ปรุงอย่างพิถีพิถัน ซึ่งเหมาะกับการรับประทานในทุกช่วงเวลา.',
                    youtubeUrl: 'https://youtu.be/axhXY80ut5o',
                    menuList: menuList, // Passing menuList to CustomContainer
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    name: 'ไข่เจียว',
                    color: Colors.purple,
                    imagePath:
                        'https://th.bing.com/th/id/OIP.Bw2efiQiJVFQTDvRn9OcawHaHa?rs=1&pid=ImgDetMain',
                    description:
                        'ไข่เจียวอร่อยที่ใคร ๆ ก็รู้จัก เป็นอาหารเช้าเบา ๆ ที่ทำง่าย แต่เต็มไปด้วยรสชาติและโปรตีนจากไข่ สามารถรับประทานคู่กับข้าวสวยหรือเป็นของว่างได้.',
                    youtubeUrl:
                        'https://youtu.be/3_qmV7lveR4?si=BjM0eNFQjGQifJ-d',
                    menuList: menuList,
                  ),
                  CustomContainer(
                    name: 'ก๋วยเตียว',
                    color: Colors.orange,
                    imagePath:
                        'https://th.bing.com/th/id/R.39c0d0c5b4ea3a1c1c13a050d59abf71?rik=vaAVjHIneeCpow&riu=http%3a%2f%2fsoodoarhan.ueuo.com%2fimages%2fTex6.jpg&ehk=FJn1fdG51WlixLr6OCVWLwi2BTqiLU84no4lDWG8LxY%3d&risl=&pid=ImgRaw&r=0',
                    description:
                        'ก๋วยเตี๋ยวเป็นเมนูอาหารไทยที่ได้รับความนิยมอย่างมาก มีหลายประเภท เช่น ก๋วยเตี๋ยวหมูหรือก๋วยเตี๋ยวเนื้อ มีรสชาติกลมกล่อมและเสิร์ฟพร้อมน้ำซุปอร่อย ๆ.',
                    youtubeUrl:
                        'https://youtu.be/PupEj90q4Wk?si=3Eyw4EiVG36ldxme',
                    menuList: menuList,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'แนะนำของว่าง',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    name: 'บราวนี่',
                    color: Colors.orange,
                    imagePath:
                        'https://th.bing.com/th/id/OIP.qz4QbSx2RC5DiXWXVujlgQAAAA?rs=1&pid=ImgDetMain',
                    description:
                        'บราวนี่เค้กช็อกโกแลตหอมหวานที่มีเนื้อสัมผัสที่นุ่ม บางครั้งก็สามารถเพิ่มถั่วหรือผลไม้แห้งในการทำ เพื่อเพิ่มความกรุบกรอบและรสชาติที่หลากหลาย.',
                    youtubeUrl:
                        'https://youtu.be/GMl0kWqouLk?si=hy4KocG_EUlnH7gc',
                    menuList: menuList,
                  ),
                  CustomContainer(
                    name: 'โกโก้',
                    color: Colors.red,
                    imagePath:
                        'https://thumbs.dreamstime.com/b/chocolate-milkshake-plastic-take-away-cup-brown-isolated-white-background-183918245.jpg?w=360',
                    description:
                        'โกโก้ร้อนรสเข้มข้น ดื่มแล้วรู้สึกอุ่นใจ เป็นเครื่องดื่มที่มีรสชาติเข้มข้นของโกโก้และความหวานที่พอดี เหมาะสำหรับดื่มในวันที่อากาศเย็น',
                    youtubeUrl:
                        'https://youtu.be/zZTZfGxKJ_c?si=B8jDbMj5UFJpiMny',
                    menuList: menuList,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    name: 'ขนมจีบ',
                    color: Colors.yellow,
                    imagePath:
                        'https://th.bing.com/th/id/OIP.LmJhpx-cFTTJsghqSaMdjgAAAA?rs=1&pid=ImgDetMain',
                    description:
                        'ขนมจีบเป็นอาหารว่างยอดนิยมของไทยและจีน ทำจากแป้งเกี๊ยวที่ห่อไส้เนื้อหมูหรือกุ้งผสมกับเครื่องปรุงรส เช่น กระเทียม ซีอิ๊ว และพริกไทย ทอดหรือนึ่งสุกจนแป้งนุ่มและไส้สุกหอมอร่อย ขนมจีบเป็นเมนูที่มัก  จะเสิร์ฟพร้อมซอสหรือซีอิ๊วหวานเพิ่มความอร่อย.',
                    youtubeUrl:
                        'https://youtu.be/qROXmR9LL50?si=KBUozs05s_-itOBX',
                    menuList: menuList,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CustomContainer, DetailPage and other code remain the same

// หน้า "ย้อนกลับ"
class BackPage extends StatelessWidget {
  const BackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ย้อนกลับ'),
        backgroundColor: Colors.blue[500],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // กลับไปยังหน้าก่อนหน้า
          },
          child: const Text('ย้อนกลับ'),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String name;
  final Color color;
  final String imagePath;
  final String description;
  final String youtubeUrl;
  final List<Map<String, String>> menuList; // Receiving menuList

  const CustomContainer({
    super.key,
    required this.name,
    required this.color,
    required this.imagePath,
    required this.description,
    required this.youtubeUrl,
    required this.menuList, // Receiving menuList
  });

  @override
  Widget build(BuildContext context) {
    double containerSize = (MediaQuery.of(context).size.width - 40) / 2;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              name: name,
              imagePath: imagePath,
              description: description,
              youtubeUrl: youtubeUrl,
              menuList: menuList, // Passing menuList to DetailPage
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: containerSize,
        height: containerSize,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final String name;
  final String imagePath;
  final String description;
  final String youtubeUrl;
  final List<Map<String, String>> menuList; // Receiving menuList

  const DetailPage({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
    required this.youtubeUrl,
    required this.menuList, // Receiving menuList
  });

  @override
  // ignore: library_private_types_in_public_api
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int likeCount = 0;
  int dislikeCount = 0;
  bool isLiked = false;
  bool isDisliked = false;

  _launchURL() async {
    if (await canLaunchUrl(Uri.parse(widget.youtubeUrl))) {
      await launchUrl(Uri.parse(widget.youtubeUrl));
    } else {
      throw 'Could not launch ${widget.youtubeUrl}';
    }
  }

  void goToNextFoodPage() {
    int currentIndex =
        widget.menuList.indexWhere((item) => item['name'] == widget.name);
    int nextIndex = (currentIndex + 1) %
        widget.menuList.length; // Use % to loop back to the start

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
          name: widget.menuList[nextIndex]['name']!,
          imagePath: widget.menuList[nextIndex]['imagePath']!,
          description: widget.menuList[nextIndex]['description']!,
          youtubeUrl: widget.menuList[nextIndex]['youtubeUrl']!,
          menuList: widget.menuList, // Passing menuList again
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Colors.blue[500],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.imagePath,
                  width: double.infinity, height: 250, fit: BoxFit.cover),
              const SizedBox(height: 16),
              Text(
                widget.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                widget.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up,
                      color: isLiked ? Colors.blue : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                        if (isLiked) {
                          likeCount++;
                        } else {
                          likeCount--;
                        }
                      });
                    },
                  ),
                  Text(
                    '$likeCount',
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: Icon(
                      Icons.thumb_down,
                      color: isDisliked ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isDisliked = !isDisliked;
                        if (isDisliked) {
                          dislikeCount++;
                        } else {
                          dislikeCount--;
                        }
                      });
                    },
                  ),
                  Text(
                    '$dislikeCount',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: _launchURL,
                  child: const Text('ดูวิธีทำบน YouTube'),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: goToNextFoodPage,
                  child: const Text('ไปยังอาหารถัดไป'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
