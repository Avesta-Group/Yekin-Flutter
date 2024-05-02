import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownWidget extends StatefulWidget { 
  String value;
  final List<String> items; 
  DropdownWidget({super.key, required this.value, required this.items}); 
  
  @override 
  DropdownWidgetState createState() => DropdownWidgetState(); 
} 
  
class DropdownWidgetState extends State<DropdownWidget> { 
     
  

  @override 
  Widget build(BuildContext context) { 
    return Container(
      width: Get.width,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.4,
        color: Theme.of(context).colorScheme.tertiary,
        ),
       ),
       padding:const EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButton(  
                value: widget.value, 
                style: Theme.of(context).textTheme.bodyMedium,
                icon: const Icon(Icons.keyboard_arrow_down),
                iconEnabledColor: Theme.of(context).colorScheme.tertiary,
                isExpanded: true,
                underline: const SizedBox(),
                borderRadius: BorderRadius.circular(10),
                items: widget.items.map((String item) { 
                  return DropdownMenuItem( 
                    value: item, 
                    child: Text(item,style: Theme.of(context).textTheme.bodyMedium,), 
                  ); 
                }).toList(), 
                onChanged: (String? newValue) {  
                  setState(() { 
                    widget.value = newValue!; 
                  }); 
                }, 
              ),
    ); 
  } 
} 