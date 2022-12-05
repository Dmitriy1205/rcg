import 'package:ecg/ui/widgets/components/card_decor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/constants.dart';

class ProjectInfoCard extends StatelessWidget {
  final String name;
  final int progress;
  final String description;
  final String address;
  final String date;
  final String companyName;
  final String clientPhone;
  final String clientEmail;
  final String clientAddress;

  const ProjectInfoCard(
      {Key? key,
      required this.name,
      required this.progress,
      required this.description,
      required this.address,
      required this.date,
      required this.companyName,
      required this.clientPhone,
      required this.clientEmail,
      required this.clientAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: SvgPicture.asset(
                Constants.logoIcon,
                width: 35,
                height: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: infoCardBoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                child: Row(
                  children: [
                    Flexible(
                      child: LinearPercentIndicator(
                        lineHeight: 5,
                        percent: progress / 100,
                        progressColor: Colors.green.shade400,
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        barRadius: const Radius.circular(5),
                        backgroundColor: Colors.lightBlue.withOpacity(0.1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${progress.toString()} %',
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: infoCardBoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        date,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        'Project address',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    Text(address),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      companyName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const Text('Company name'),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Client Phone',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(clientPhone),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Client Phone 2',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(clientPhone),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Client e-mail',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(clientEmail),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Client e-mail 2',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(clientEmail),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Client address',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    Text(address),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
