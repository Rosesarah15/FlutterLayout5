import 'package:flutter/material.dart';

class MyTargetInvestment extends StatefulWidget {
  const MyTargetInvestment({super.key, required String title});

  @override
  State<MyTargetInvestment> createState() => _MyTargetInvestmentState();
}

class _MyTargetInvestmentState extends State<MyTargetInvestment> {
  final Set<int> _selectedCheckboxIndexes = {};
  RangeValues _sliderValues = const RangeValues(0, 100);
  double _sliderValue = 0.0;

  bool _showMoreRows = false;

  Widget buildDataRow(
    String amount,
    String period,
    int index,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              amount,
              style: const TextStyle(fontSize: 17, color: Colors.white),
            ),
            Text(
              period,
              style: const TextStyle(fontSize: 14, color: Colors.blue),
            ),
          ],
        ),
        const Column(
          children: [
            Text(
              'UGX',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            Text(
              '          14,207,800',
              style: TextStyle(fontSize: 17, color: Colors.white),
            )
          ],
        ),
        Checkbox(
          value: _selectedCheckboxIndexes.contains(index),
          onChanged: (isChecked) {
            setState(() {
              if (isChecked!) {
                _selectedCheckboxIndexes.add(index);
              } else {
                _selectedCheckboxIndexes.remove(index);
              }
            });
          },
          activeColor: Colors.red,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 229, 161),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Target Investment',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'images/pl-images.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularContainer(
                  icon: (Icons.check),
                  iconColor: Colors.white,
                  containerColor: Colors.black,
                  isFirstContainer: true,
                  isLastContainer: false,
                  belowText: 'Automate',
                  belowTextColor: Colors.black,
                ),
                CircularContainer(
                  text: '2',
                  containerColor: Colors.red,
                  isFirstContainer: false,
                  isLastContainer: false,
                  belowText: 'Target',
                  belowTextColor: Colors.red,
                ),
                CircularContainer(
                  text: '3',
                  borderColor: Colors.red,
                  textColor: Colors.red,
                  isFirstContainer: false,
                  isLastContainer: false,
                  belowText: 'Contact',
                  belowTextColor: Colors.red,
                ),
                CircularContainer(
                  text: '4',
                  borderColor: Colors.red,
                  textColor: Colors.red,
                  isFirstContainer: false,
                  isLastContainer: true,
                  belowText: 'Submit',
                  belowTextColor: Colors.red,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Text(
                    'Target Investment',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color.fromARGB(255, 10, 103, 13)),
                        color: const Color.fromARGB(255, 237, 229, 161)),
                    child: const Center(
                      child: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 10, 103, 13),
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Insured',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 10, 103, 13),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: 380,
              height: 230,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 0.8],
                  colors: [
                    Color.fromARGB(255, 64, 22, 7),
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 180,
                        height: 2,
                        color: Colors.white10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            const Icon(Icons.filter_alt, color: Colors.white),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Filters',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            DropdownButton<String>(
                              items: [
                                'Option 1',
                                'Option 2',
                                'Option 3'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,
                                      style:
                                          const TextStyle(color: Colors.white)),
                                );
                              }).toList(),
                              onChanged: (_) {},
                              underline: Container(),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              iconSize: 25,
                              dropdownColor: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Period',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Slider(
                              value: _sliderValue,
                              onChanged: (newValue) {
                                setState(() {
                                  _sliderValue = newValue;
                                });
                              },
                              min: 0,
                              max: 100,
                              divisions: 4,
                              label: '$_sliderValue',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildSliderText('any'),
                                buildSliderText('12 months'),
                                buildSliderText('6 months'),
                                buildSliderText('3 months')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Amount',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            RangeSlider(
                              values: _sliderValues,
                              onChanged: (newValue) {
                                setState(() {
                                  _sliderValues = newValue;
                                });
                              },
                              min: 0,
                              max: 100,
                              divisions: 100,
                              labels: RangeLabels(
                                _sliderValues.start.round().toString(),
                                _sliderValues.end.round().toString(),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildSliderText('(min) 10,000'),
                                buildSliderText('1,000,000,000,000 (max)')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 380,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 0.8],
                  colors: [
                    Color.fromARGB(255, 64, 22, 7),
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                children: [
                  HeaderRowText(
                      selectedCheckBoxIndexes: _selectedCheckboxIndexes),
                  const SizedBox(
                    height: 10,
                  ),
                  widgetDivider(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildDataRow('UGX 78,005,000', '3 months', 0),
                  widgetDivider(),
                  buildDataRow('UGX 78,005,000', '3 months', 1),
                  widgetDivider(),
                  buildDataRow('UGX 78,005,000', '3 months', 2),
                  widgetDivider(),
                  buildDataRow('UGX 78,005,000', '3 months', 3),
                  const SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: _showMoreRows,
                    child: Column(
                      children: [
                        widgetDivider(),
                        buildDataRow('UGX 78,005,000', '3 months', 4),
                        widgetDivider(),
                        buildDataRow('UGX 78,005,000', '3 months', 5),
                        widgetDivider(),
                        buildDataRow('UGX 78,005,000', '3 months', 6),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !_showMoreRows,
                    child: Container(
                      width: 130,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showMoreRows = true;
                          });
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Show more',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Divider widgetDivider() {
    return const Divider(
      thickness: 0.1,
      indent: 20,
      endIndent: 20,
    );
  }
}

class HeaderRowText extends StatelessWidget {
  final Set<int> selectedCheckBoxIndexes;
  const HeaderRowText({
    super.key,
    required this.selectedCheckBoxIndexes,
  });

  @override
  Widget build(BuildContext context) {
    int selectedCount = selectedCheckBoxIndexes.length;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Amount/Period',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const Text(
          'ROI (Profit)',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          '+$selectedCount',
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}

Widget buildSliderText(
  String text,
) {
  return Column(
    children: [
      Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.white30),
      )
    ],
  );
}

class CircularContainer extends StatelessWidget {
  final String? text;
  final String belowText;
  final IconData? icon;
  final Color? iconColor;
  final Color? containerColor;
  final Color? borderColor;
  final Color? textColor;
  final Color belowTextColor;
  final bool isFirstContainer;
  final bool isLastContainer;

  const CircularContainer({
    Key? key,
    this.text,
    required this.belowText,
    this.icon,
    this.iconColor,
    this.containerColor,
    this.textColor,
    required this.belowTextColor,
    this.borderColor,
    required this.isFirstContainer,
    required this.isLastContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    containerColor ?? const Color.fromARGB(255, 237, 229, 161),
                border: borderColor != null
                    ? Border.all(color: borderColor!)
                    : null,
              ),
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null)
                    Icon(
                      icon,
                      color: iconColor,
                    )
                  else
                    Text(
                      text!,
                      style: TextStyle(
                        color: textColor ?? Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              )),
            ),
            const SizedBox(height: 10),
            if (!isLastContainer) // Show divider if it's not the last container
              DividerContainer(
                color: isFirstContainer ? Colors.black : Colors.red,
              ),
          ],
        ),
        Text(
          belowText,
          style: TextStyle(fontSize: 15, color: belowTextColor),
        )
      ],
    );
  }
}

class DividerContainer extends StatelessWidget {
  final Color color;
  const DividerContainer({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 3,
      color: color,
    );
  }
}

class TickContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color borderColor;
  final double borderRadius;

  const TickContainer({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.borderColor,
    this.borderRadius = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: 10,
        ),
      ),
    );
  }
}
