import 'package:airbnb_clone/models/property_type_list_model.dart';
import 'package:airbnb_clone/utils/color_pallet.dart';
import 'package:flutter/material.dart';

class PropertyTypeList extends StatefulWidget {
  const PropertyTypeList({super.key});

  @override
  State<PropertyTypeList> createState() => _PropertyTypeListState();
}

class _PropertyTypeListState extends State<PropertyTypeList> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final List<PropertyTypeListModel> propertiesModel =
        properties.map((e) => PropertyTypeListModel.fromMap(e)).toList();
    final size = MediaQuery.of(context).size;
    final textTheam = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(left: 4, right: 4, bottom: 0),
      height: 56,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: propertiesModel.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: SizedBox(
            width: size.width * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(propertiesModel[index].icon),
                Text(
                  propertiesModel[index].type,
                  style: textTheam.bodySmall!.copyWith(
                    fontWeight:
                        selected == index ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  height: 2,
                  width: 64,
                  color: (index == selected) ? appBlack : Colors.transparent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
