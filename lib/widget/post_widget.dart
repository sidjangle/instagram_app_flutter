import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/codetodo.png'))),
              ),
              title: Text('Codetodo'),
              subtitle: Text('Mumbai,Maharashtra'),
              trailing: Icon(Icons.more_vert),
            ),
          
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/flutter.jpg',
                      ))),
            ),
            ListTile(
              leading:
               Wrap(
                spacing: 10,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 35),
                  SvgPicture.asset(
                    'assets/images/comment.svg',
                    width: 30,
                  ),
                  SvgPicture.asset(
                    'assets/images/message_icon.svg',
                    width: 30,
                  ),
                ],
              ),
             
              trailing: Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('1000 likes',
                    style: TextStyle(fontWeight: FontWeight.w700)),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('hey Guys Subscribe My Channel',
                    style: TextStyle(fontWeight: FontWeight.w700)),
              ),
            ]),
             Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('View all 15 comments',
                    style: TextStyle()),
              ),
            ]),
              ListTile(

              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/codetodo.png'))),
              ),
              title: Text('Add a comment...'),

              trailing: Wrap(
                spacing: 10,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 20),
                   Icon(Icons.add_circle_outline_outlined, color: Colors.grey, size: 20),
                  
                ],
              ),
              
            ),
          
          ],
        );
      },
    );
  }
}
