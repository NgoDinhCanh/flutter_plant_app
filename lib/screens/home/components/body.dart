import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plant_app/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: size.height * 0.2,
            child: Stack(children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: 36 + kDefaultPadding),
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Hi Dinh Canh',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    Image.asset('assets/images/logo.png')
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.3))
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.5)),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                        SvgPicture.asset('assets/icons/search.svg'),
                      ],
                    ),
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
