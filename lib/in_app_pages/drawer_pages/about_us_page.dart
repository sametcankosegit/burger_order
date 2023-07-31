import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HAKKINDA',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 189, 217, 253),
                Color.fromARGB(255, 77, 117, 248),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 225, 245, 255),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(2, 2),
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Uygulamamıza Hoşgeldiniz',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Bu uygulama Samet Can Köse tarafından Türk Halkı için geliştirilmiştir.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Amacımız',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Banka işlemlerinizi kolay ve pratik bir şekilde gerçekleştirebildiğiniz uygulamamızı denediğiniz için teşekkür ederiz.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ekibimiz',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        const url =
                            'https://www.linkedin.com/in/samet-can-k%C3%B6se-772701156/';
                        launchUrl(url as Uri);
                      },
                      child: _buildTeamMember(
                        context,
                        'https://media.licdn.com/dms/image/D4D03AQFhm0-yXHgEEA/profile-displayphoto-shrink_200_200/0/1684691341777?e=1691020800&v=beta&t=yGhVhIoKYSC8coz4AxndAcdmfno_ebluZCQGsNUC3OM',
                        'Samet Can Köse',
                        'CEO',
                      ),
                    ),
                    GestureDetector(
                      onSecondaryTap: () {
                        const url =
                            'https://www.linkedin.com/in/williamhgates/';
                        launchUrl(url as Uri);
                      },
                      child: _buildTeamMember(
                          context,
                          'https://media.licdn.com/dms/image/D5603AQE7J5B5EB7opQ/profile-displayphoto-shrink_400_400/0/1688661795662?e=1695254400&v=beta&t=Q_X0mcUN_72YUCjMlpV3zO0QNf78VXuJ_VR1DzeutCw',
                          'Bill Gates',
                          'Team Leader'),
                    ),
                    _buildTeamMember(
                        context,
                        'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-10-avatar-2754575_120521.png',
                        'Ahmet Köse',
                        'Idea Maker'),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onLongPress: () {
                        const url =
                            'https://www.linkedin.com/in/tayyipkarakoyun/';
                        launchUrl(url as Uri);
                      },
                      child: _buildTeamMember(
                          context,
                          'https://media.licdn.com/dms/image/D4E35AQGD_WTLaWkHoA/profile-framedphoto-shrink_400_400/0/1629826273183?e=1690225200&v=beta&t=EC8wnT3KBnxG3sik0Medvpxl-Ffj-QLBwetr7Sx4S2A',
                          'Tayyip Karakoyun',
                          'UI Tester'),
                    ),
                    GestureDetector(
                      onLongPress: () {
                        const url =
                            'https://www.linkedin.com/in/batuhan-%C3%B6ztoprak-75879b20a/';
                        launchUrl(url as Uri);
                      },
                      child: _buildTeamMember(
                          context,
                          'https://media.licdn.com/dms/image/D4D03AQGwuzSClmZ9HA/profile-displayphoto-shrink_200_200/0/1684567599559?e=1691020800&v=beta&t=0_b3Tp5rMjXETOCVR00k3FWj0o0PyCx17q6vYw907-U',
                          'Batuhan Öztoprak',
                          'UI Tester'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTeamMember(
      BuildContext context, String imageUrl, String name, String role) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 40,
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          role,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
