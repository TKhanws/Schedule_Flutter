import 'package:flutter/material.dart';
import 'package:second_week/objects/contact_info.dart';
import 'package:second_week/widgets/common_textfield.dart';

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContactInfo> listContacts = getListContacts();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF6F6F6),
        leading: const SizedBox(
            width: 24, height: 24, child: Icon(Icons.arrow_back)),
        title: const Text(
          "My Contact",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              width: 24,
              height: 24,
              child: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const CommonTextfield(),
          Expanded(child: _buildListViewContact(listContacts, screenWidth))
        ],
      ),
    );
  }

  Widget _buildListViewContact(
      List<ContactInfo> listContacts, double screenWidth) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: _buldListContacts(listContacts, screenWidth),
    );
  }

  List<Widget> _buldListContacts(
      List<ContactInfo> listContacts, double screenWidth) {
    List<Widget> list = [];
    for (var i = 0; i < listContacts.length; i++) {
      list.add(_buildContact(listContacts[i], screenWidth));
    }
    return list;
  }

  Widget _buildContact(ContactInfo contactInfo, double screenWidth) {
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                image:
                    DecorationImage(image: NetworkImage(contactInfo.urlImage))),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    contactInfo.infoName,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    contactInfo.phone,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF8A8A8D)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
