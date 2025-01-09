import 'package:flutter/cupertino.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset('assets/images/user_profile.png'),
      const SizedBox(width: 8),
      const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),

            Text("Hey Pangrum", style: TextStyle(fontSize: 14)),
            Text("Ready to order?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
          ])
    ]);
  }
}
