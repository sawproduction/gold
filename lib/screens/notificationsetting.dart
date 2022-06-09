import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        title: Text(
          'Notifications',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .merge(TextStyle(color: filedColor)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Choose what notifcations you want to recieve below and we will update the settings.',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .merge(TextStyle(color: filedColor)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SwitchListTile(
                activeColor: filedColor,
                title: Text(
                  'Push Notification',
                  style: TextStyle(color: filedColor),
                ),
                subtitle: Text(
                  'Receive Push notifications from our application on a semi regular basis.',
                  style: TextStyle(color: filedColor),
                ),
                value: true,
                onChanged: (value) {}),
            ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: width * 0.1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(width * 0.08))),
                    backgroundColor: MaterialStateProperty.all(filedColor)),
                onPressed: () {},
                child: Text('Save Changes'))
          ],
        ),
      ),
    );
  }
}
