import 'package:demobb/modules/ProductChoice/Blocs/ProductChoice/product_choice_bloc.dart';
import 'package:demobb/modules/ProductChoice/Widgets/Graphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class GraphicModelWidget extends StatelessWidget {
  const GraphicModelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductChoiceBloc, ProductChoiceState>(
        builder: (context, state) {
      final isLoading = state is ProductChoiceInitial;
      print('re render: ');
      print(isLoading);
      return Skeletonizer(
          enabled: isLoading,
          child: Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                shadows: [
                  BoxShadow(
                      color: Color(0x4C000000),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                      spreadRadius: 0)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 0,
              children: [
                Text(
                  'Mis finanzas',
                  style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                ),
                Text(
                  '1 ene. 2025 - 30 jun. 2025',
                  style: TextStyle(
                      color: Color(0xFF6C757D),
                      fontSize: 12,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                ),
                isLoading
                    ? Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 8),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  height: 128,
                                  width: double.infinity,
                                  color: Colors.grey,
                                )),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: double.infinity,
                                height: 18,
                                color: Colors.grey,
                              ))
                        ],
                      )
                    : GraphicWidget(),
              ],
            ),
          ));
    });
  }
}
