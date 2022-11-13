import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int? price, size, id;
  final Color? color;

  Product({
    this.id,
    required this.image,
    required this.title,
    this.price,
    this.size,
    this.color,
    required this.description,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Nike AirJordan 1",
      price: 5900,
      size: 12,
      description: dummyText,
      image: "assets/images/j1.png",
      color: Color(0xFFe0cb65)),
  Product(
      id: 2,
      title: "Nike AirForce 1",
      price: 2900,
      size: 8,
      description: dummyText2,
      image: "assets/images/f1.png",
      color: Color(0xFF8b65c6)),
  Product(
      id: 3,
      title: "Nike AirMax 90",
      price: 3500,
      size: 10,
      description: dummyText3,
      image: "assets/images/amax1.png",
      color: Color(0xFFd9e1a7)),
  Product(
      id: 4,
      title: "Adidas Yeezy",
      price: 7900,
      size: 11,
      description: dummyText4,
      image: "assets/images/adi1.png",
      color: Color(0xFF262a34)),
  Product(
      id: 5,
      title: "Adidas original superstar",
      price: 2200,
      size: 12,
      description: dummyText5,
      image: "assets/images/adi2.png",
      color: Color(0xFF26342d)),
  Product(
    id: 6,
    title: "Vans OldSkool",
    price: 2400,
    size: 12,
    description: dummyText6,
    image: "assets/images/vans1.png",
    color: Color(0xFF7d3b3b),
  ),
];
String dummyText =
    "Air Jordan 1 อันเป็นเอกลักษณ์ปรับโฉมมาให้เข้ากับวัฒนธรรมสนีกเกอร์เฮดในปัจจุบัน\n ทำให้แม้จะดูคุ้นเคยแต่ก็ยังสดใหม่อยู่เสมอ และในรุ่น Retro High OG นี้ก็ได้จัดเต็มด้วยหนังระดับพรีเมียม\n ระบบลดแรงกระแทกที่ใส่สบาย และรายละเอียดดีไซน์สุดคลาสสิก";
String dummyText2 =
    "สวมรองเท้า Nike Force 1 สำหรับลุคและสัมผัสแบบคลาสสิกของ AF1 ในตำนาน\n ระบบลดแรงกระแทกนุ่มช่วยให้รู้สึกนุ่มเมื่อก้าว ขณะที่วัสดุหนังช่วยให้ทำความสะอาดง่าย";
String dummyText3 =
    "เติมความดุดันเล็กๆ น้อยๆ ในมรดกแห่งสไตล์ Nike Air Max 90 SE เจริญรอยตามต้นแบบรุ่น OG\n ด้วยพื้นรองเท้าชั้นนอกลายวาฟเฟิลอันเป็นเอกลักษณ์ ส่วนหุ้มชั้นนอกแบบเย็บติด และส่วนเน้นจาก TPU สุดคลาสสิก\n ส่วนบนเป็นงานแพทช์เวิร์คที่นำผ้าเท็กซ์เจอร์หนักๆ มาต่อกันเพื่อให้เข้ากับลุคกราฟิกลายพิมพ์สัตว์ที่สื่อถึงการไม่ยอมเชื่อง";
String dummyText4 =
    "The YEEZY BOOST 350 V2features an upper composed of re-engineered\n Primeknit. The post-dyed monofilament side stripe is woven into the upper.\n Reflective threads are woven into the laces. The midsole utilizes adidas’\n innovative BOOST™ technology.";
String dummyText5 =
    "ออกแบบมาเพื่อกีฬาบาสเกตบอลในยุค 70 เชิดชูโดยเหล่าสาวกฮิปฮอปในยุค 80 รองเท้าอาดิดาส Superstar กลายมาเป็นไอเท็มที่ชาวสตรีทยุคปัจจุบันขาดไม่ได้\n ดีไซน์หัวรองเท้ารูปเปลือกหอยที่โด่งดังไปทั่วโลกยังคงมาพร้อมกับสไตล์ดั้งเดิมและให้การปกป้องแบบเดียวกับในสนามบาส\nหมดกังวลเรื่องโดนเหยียบเท้าตามงานเทศกาลหรือบนท้องถนน คงลุคตามแบบต้นฉบับเอาไว้ด้วยแถบ 3-Stripes\n ขอบหยักและโลโก้อาดิดาส Superstar ในกรอบสี่เหลี่ยม";
String dummyText6 =
    "นานกว่า 50 ปีมาแล้วที่ Vans ได้สร้างสรรค์สไตล์ที่โดดเด่นแบบเฉพาะตัวตามแบบฉบับ Off The Wall\n อันเป็นมาตรฐานของทั้งสนีกเกอร์และสไตล์ของผู้คนฝั่งwest coast ไม่ว่าคุณกำลังมองหาไอเทมสุดคูลที่จะให้คุณ\nโดดเด่นบนท้องถนนหรือรองเท้า skateboard ดีๆสักคู่ เราก็มีให้คุณทั้งหมด จะน่ารักแบบคลาสสิกไปกับ Old Skool";