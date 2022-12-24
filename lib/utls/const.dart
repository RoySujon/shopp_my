import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadText extends StatelessWidget {
  const HeadText(this.text, {super.key, this.fs, this.clr, this.fw});
  final String text;
  final double? fs;
  final Color? clr;
  final FontWeight? fw;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontSize: fs, color: clr, fontWeight: fw),
    );
  }
}

const Color kMainColor = Color(0xfffE38800);

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: kMainColor,
        ),
        SizedBox(
          width: 250,
          height: 30,
          child: Stack(
            children: [
              TextFormField(
                style: TextStyle(fontSize: 10),
                // initialValue: 'search your keywords',
                textAlignVertical: TextAlignVertical.center,
                // textAlign: TextAlign.center,
                decoration: InputDecoration(
                    label: HeadText('Search your keywords', fs: 10),
                    // prefixText: 'search your keywords',
                    // counterText: 'search your keywords',

                    // labelText: 'Goutom',
                    // hintText: 'search your keywords',

                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50))),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: kMainColor,
                      onPressed: () {},
                      child: Icon(Icons.search)),
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          radius: 15,
          backgroundColor: kMainColor,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
