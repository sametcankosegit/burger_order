import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController _messageController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  String? _selectedSubject;

  @override
  void dispose() {
    _messageController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  /*void _submitFeedback() async {
    try {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Kullanıcının girdiği bilgileri alın
      String name = _nameController.text;
      String email = _emailController.text;
      String subject = _selectedSubject!;
      String message = _messageController.text;

      // Firestore'da yeni bir döküman oluştur
      await firestore.collection('contact_us').add({
        'name': name,
        'email': email,
        'subject': subject,
        'message': message,
        'timestamp': FieldValue.serverTimestamp(),
      });

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Geri Bildirim Gönderildi'),
          content: const Text(
              'Teşekkür ederiz! Geri bildiriminiz başarıyla gönderildi.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Tamam'),
            ),
          ],
        ),
      );

      // Girdi alanlarını temizle
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
      setState(() {
        _selectedSubject = null;
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Hata'),
          content: const Text('Bir hata oluştu. Geri bildirim gönderilemedi.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Tamam'),
            ),
          ],
        ),
      );
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 245, 255),
      appBar: AppBar(
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
        title: const Text(
          'BİZİMLE İLETİŞİME GEÇİN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Adınız',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp('[a-z A-Z ıIğüşöçİĞÜŞÖÇ ]')),
                    ],
                    controller: _nameController,
                    maxLines: null,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email adresiniz',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    maxLines: null,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Konu',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  DropdownButtonFormField<String>(
                    value: _selectedSubject,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedSubject = newValue;
                      });
                    },
                    items: [
                      const DropdownMenuItem(
                        value: 'Uygulama Hakkında',
                        child: Text('Uygulama Hakkında'),
                      ),
                      const DropdownMenuItem(
                        value: 'Hata',
                        child: Text('Hata'),
                      ),
                      const DropdownMenuItem(
                        value: '',
                        child: Text('Başka Bir Konu'),
                      ),
                    ],
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mesajınızı yazınız',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp('[a-zA-ZıIğüşöçİĞÜŞÖÇ ]')),
                    ],
                    controller: _messageController,
                    maxLines: null,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 70, horizontal: 16)),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  //   _submitFeedback();
                },
                child: const Text('Gönder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
