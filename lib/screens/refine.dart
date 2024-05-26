import 'package:chips_choice/chips_choice.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:netclan_test/screens/explore.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:flexi_chip/flexi_chip.dart';

class RefineScreen extends StatefulWidget {
  RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  final List<String> availabilityItems = [
    'Available | Hey Let\'s connect',
    'AWAY | Stay Discreet And Watch',
    'Busy | Do Not Disturb | Will Catch Up Later',
    'SOS | Emergency! Need Assistance! HELP',
  ];
  List<String> tags = [];
  List<String> _selectedPurpose = [
    'Coffee',
    'Friendship',
    'Business',
    'Hobbies',
    'Movies',
    'Dining',
    'Dating',
    'Matrimony'
  ];
  String? selectedValue;

  final TextEditingController _textController = TextEditingController(
      text: 'Hi Community! I am open to new connections 😊');

  final _formKey = GlobalKey<FormState>();

  double _rangeValue = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ExploreScreen(),
              ));
            },
            icon: const Icon(
              Iconsax.arrow_left_2,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: const Text(
            'Refine',
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: const Color.fromARGB(255, 22, 45, 65),
          toolbarHeight: 80,
          titleSpacing: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 20),
              const Text(
                'Select your Availablity',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 22, 45, 65),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                hint: const Text(
                  'Select',
                  style: TextStyle(fontSize: 14),
                ),
                items: availabilityItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select gender.';
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Add Your Status',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 22, 45, 65),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _textController,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 22, 45, 65),
                      ),
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Select HyperLocal Distance',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 22, 45, 65),
                          fontWeight: FontWeight.w500),
                    ),
                    SfSlider(
                      tooltipShape: const SfRectangularTooltipShape(),
                      activeColor: const Color.fromARGB(255, 22, 45, 65),
                      min: 0,
                      max: 100,
                      value: _rangeValue,
                      showTicks: true,
                      showLabels: true,
                      enableTooltip: true,
                      onChanged: (dynamic value) {
                        setState(() {
                          _rangeValue = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ChipsChoice<String>.multiple(
                      value: tags,
                      onChanged: (val) => setState(() => tags = val),
                      choiceItems: C2Choice.listFrom<String, String>(
                        source: _selectedPurpose,
                        value: (i, v) => v,
                        label: (i, v) => v,
                      ),
                      choiceStyle: FlexiChipStyle.outlined(
                        foregroundSpacing: 15,
                        borderWidth: 2,
                        height: 40,
                        borderRadius: BorderRadius.circular(30),
                        selectedStyle: FlexiChipStyle.filled(
                          color: const Color.fromARGB(255, 22, 45, 65),
                        ),
                      ),
                      wrapped: true,
                      runSpacing: 20.0,
                      spacing: 10.0,
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: SizedBox(
                        width: 500,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 22, 45, 65),
                              foregroundColor: Colors.white),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ExploreScreen(),
                              ));
                            }
                          },
                          child: const Text('Save & Explore'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
