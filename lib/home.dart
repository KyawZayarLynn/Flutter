import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:40,left: 20,right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration( 
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search Breakfast..',
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('assets/icons/search-svgrepo-com.svg',
                  height: 20,
                  width: 20,
                  ),
                ),
                suffixIcon: Container(
                  color: Colors.transparent,
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black, 
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/filter-big-1-svgrepo-com.svg'),
                        ),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Breakfast',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        // fontFamily: 'Poppins',
      ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          
        },
        child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 226, 226, 226),
          borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset('assets/icons/left-arrow-backup-2-svgrepo-com.svg',
        height: 20,
        width: 20,),
      ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 226, 226),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/dots-3-vertical-svgrepo-com.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}