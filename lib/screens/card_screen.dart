import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://inspirationfeed.com/wp-content/uploads/2019/10/Sandy-beach-with-sea-waves-palm-trees-and-walking-people.jpg'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://i.guim.co.uk/img/media/e257becfec477105123f06f96db4529966b4035c/0_391_6048_3628/master/6048.jpg?width=465&quality=45&auto=format&fit=max&dpr=2&s=2b99fbe2666ca5d6f7c551a064b2f069',
                texto: 'Soy Lucy'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://images.unsplash.com/photo-1559494007-9f5847c49d94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8&w=1000&q=80',
                texto: 'Esta es mi primera app'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS75pLCv2WHDivN9TX_o0nVW3a8WyT434LtWA&usqp=CAU',
                texto: 'Son imagenes'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://live.staticflickr.com/1839/43032619635_1478270742_b.jpg',
                texto: 'De playas'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://images.unsplash.com/photo-1545082461-7fc06d042f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2Vhc2NhcGUlMjBwaG90b2dyYXBoeXxlbnwwfHwwfHw%3D&w=1000&q=80',
                texto: 'Por que me gusta mucho la playa'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://i0.wp.com/oceanblueproject.org/wp-content/uploads/2021/06/corolla-beach-north-carolina.jpg?resize=1200%2C675&ssl=1',
                texto: 'Quisiera estar en una ahora'),
            SizedBox(height: 10),
            CustomCardType2(
                urlText:
                    'https://files.worldwildlife.org/wwfcmsprod/images/Sunset_Ocean_288677/story_full_width/8gsouu58bo_Sunset_Martin_Harvey_WWF_Canon_MID_288677.jpg',
                texto: 'Me despido, besitos'),
            SizedBox(height: 100),
          ],
        ));
  }
}
