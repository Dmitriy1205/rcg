import 'package:ecg/ui/widgets/project_info_card.dart';
import 'package:flutter/material.dart';

class ProjectInfoScreen extends StatelessWidget {
  final String name;
  final int progress;
  final String description;
  final String address;
  final String date;
  final String companyName;
  final String clientPhone;
  final String clientEmail;
  final String clientAddress;

  const ProjectInfoScreen(
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
    return Scaffold(
      body: SafeArea(
        child: ProjectInfoCard(
          progress: progress,
          companyName: companyName,
          date: date,
          address: address,
          clientPhone: clientPhone,
          description: description,
          clientEmail: clientEmail,
          name: name,
          clientAddress: clientAddress,
        ),
      ),
    );
  }
}
