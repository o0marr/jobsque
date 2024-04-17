import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:jobsque/core/design/app_image.dart';

class UploadPDFScreen extends StatelessWidget {
  Future<void> _uploadPDF() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        PlatformFile file = result.files.first;
        // Do something with the selected file, such as uploading it to a server
        print('File path: ${file.path}');
      } else {
        // User canceled the picker
        print('User canceled file picking');
      }
    } catch (e) {
      print('Error picking file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: 221,
          width: 327,
          child: Center(

            child: Column(
              children: [
                AppImage("upload.png",height: 56,width: 56,),
                SizedBox(height: 16,),
                Text("Upload your other file",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(height: 8,),
                Text("Max. file size 10 MB",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),
                SizedBox(height: 24,),

                ElevatedButton(
                  onPressed: _uploadPDF,
                  child: Row(
                    children: [
                      AppImage("export.png",height: 20,width: 20,),
                      SizedBox(width:12,),
                      Text('Add file'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
