import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/home_controller.dart';
import 'package:grocery/models/products.dart';
import 'package:grocery/utils/layout.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xFFEAEAEA),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              return LayoutBuilder(
                  builder: (context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    AnimatedPositioned(
                      duration: panelTransition,
                      top: controller.homestate == HomeState.normal ? headerHeight : -(constraints.maxHeight- cartBarHeight*2-headerHeight),
                      left: 0,
                      right: 0,
                      height: constraints.maxHeight -
                              headerHeight -
                              cartBarHeight,
                              child: Container(  
                                padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding,
                                ),
                                decoration: BoxDecoration(  
                                  color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                bottomLeft:
                                    Radius.circular(defaultPadding * 1.5),
                                bottomRight:
                                    Radius.circular(defaultPadding * 1.5),
                              ),
                                ),
                                child: GridView.builder(
                                  itemCount: demo_products.length,
                                  gridDelegate: 
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.75,
                                      mainAxisSpacing: defaultPadding,
                                crossAxisSpacing: defaultPadding,
                                  ),
                                  itemBuilder: (context,index)=>,
                                ),
                              ),
                    ),
                  ],
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
