import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://www.dgvaishnavcollege.edu.in/dgvaishnav-c/uploads/2020/01/dgslider.jpg',
  'https://www.dgvaishnavcollege.edu.in/dgvaishnav-c/uploads/2023/05/with-new-qr-1-1600x540.png',
  'https://www.dgvaishnavcollege.edu.in/dgvaishnav-c/uploads/2023/03/MBS-Admission.jpg',
  'https://www.dgvaishnavcollege.edu.in/dgvaishnav-c/uploads/2023/05/Web-Banner-Admissions.jpg'
  /*'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'*/
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  final List<Widget> imageSliders = imgList.map((item) {   //converting all images , filling them in to container and giving basic styling
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image.network(item, fit: BoxFit.fill),
      ),
  );
  }).toList();

  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<Widget> HomeContentList=[

    InkWell(
      onTap: (){},
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(Icons.menu_book),
          title: Text('Department Syllabus'),
        ),
      ),
    ),
    InkWell(
      onTap: (){},
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(Icons.payment),
          title: Text('Fee Portal'),
        ),

      ),
    ),
    InkWell(
      onTap: (){},
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(Icons.book),
          title: Text('Previous Year Question Papers'),
        ),
      ),
    ),
    InkWell(
      onTap: (){},
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(Icons.calculate),
          title: Text('CGPA Calculator'),
        ),
      ),
    ),
    InkWell(
      onTap: (){},
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(Icons.announcement),
          title: Text('Create Announcement'),
        ),
      ),
    ),
    InkWell(
      onTap: (){},
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Feedback'),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children: [

          Expanded(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: HomeContentList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [HomeContentList[index]],
                );
              },
            ),
          ),
        ],
      ),
    );

  }
}
