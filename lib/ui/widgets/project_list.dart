import 'package:ecg/data/projects.dart';
import 'package:ecg/ui/screens/project_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/constants.dart';
import 'components/card_decor.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Text(
              'Projects',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.37,
            child: ListView.builder(
                itemCount: projects.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectInfoScreen(
                                      progress: projects[index].progress,
                                      name: projects[index].name,
                                      date: projects[index].date,
                                      description: projects[index].description,
                                      address: projects[index].address,
                                      companyName: projects[index].companyName,
                                      clientPhone: projects[index].clientPhone,
                                      clientEmail: projects[index].clientEmail,
                                      clientAddress:
                                          projects[index].clientAddress,
                                    )));
                      },
                      child: Container(
                        decoration: cardBoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: statusBoxDecoration(
                                          projects[index].status == 'Done'
                                              ? Colors.green.withOpacity(0.2)
                                              : projects[index].status ==
                                                      'In Progress'
                                                  ? Colors.orange
                                                      .withOpacity(0.2)
                                                  : Colors.blue
                                                      .withOpacity(0.1)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 5),
                                      child: Text(
                                        projects[index].status,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color:
                                              projects[index].status == 'Done'
                                                  ? Colors.green[800]
                                                  : projects[index].status ==
                                                          'In Progress'
                                                      ? Colors.orange[900]
                                                      : Colors.blue[700],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      projects[index].id,
                                      style: const TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                projects[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                projects[index].description,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Project progress',
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      '${projects[index].progress}%',
                                      style: const TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              LinearPercentIndicator(
                                percent: projects[index].progress / 100,
                                progressColor: Colors.green.shade400,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                barRadius: const Radius.circular(5),
                                backgroundColor:
                                    Colors.lightBlue.withOpacity(0.1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
