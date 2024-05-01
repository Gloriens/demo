import 'package:demo_flutter/MainMenu.dart';
import 'package:demo_flutter/records/record_card_list.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordsDisplayScreen extends ConsumerStatefulWidget {
  const RecordsDisplayScreen({super.key});

  @override
  ConsumerState<RecordsDisplayScreen> createState() =>
      _RecordDisplayScreenState();
}

class _RecordDisplayScreenState extends ConsumerState<RecordsDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    final listOfRecords = ref.watch(listOfRecordsProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF212A3E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), // Geri tuşunun ikonu
          onPressed: () {
            //Navigator.push(context,
            //MaterialPageRoute(builder: (context) => SecondPage()),
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu()));
          },
        ),
        title: Text(
          'Records',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                  onPressed: () {
                    ref.refresh(listOfRecordsProvider);
                  },
                  child: const Text("Refresh"))),
        ),
        listOfRecords.when(
            data: (data) {
              print(data.length);
              return RecordCardList(records: data);
            },
            error: ((error, stackTrace) => Text(error.toString())),
            loading: () => const Center(child: CircularProgressIndicator()))
      ]),
    );
  }
}
