import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:pagination/Model.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

Future<ItemsData> fetchData() async {
  final headers = {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.acceptHeader: 'application/json',
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5N2UxY2E3Yy1lZTI0LTQxOTctYmZiYS1iNjE2YzNjZmQ4MjciLCJqdGkiOiI2NjJiNzg4NWJlNDc3ZWEyYmMyYWI5YzJmMzcxZjE0ZDViMjk1NmZmNDJjNWQ1ZTg3ZjU1NzUwODg4MTFiZWI5NmJjNzZlNTM2MmE1ZWU1MiIsImlhdCI6MTY3NTQxNTYwNi41MjMxLCJuYmYiOjE2NzU0MTU2MDYuNTIzMTAzLCJleHAiOjE3MDY5NTE2MDYuNTIwMTU4LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.WC02odkTC7U-mb2Nre7RA221qfgCtthorbRhBrvwuttIi6zjtoSwl9uVdKiItxGem2ujEu4SXdK-kb9HUnNOsXW9exSlsNIEvhBQzbxLRMeuaXlRFGjocm7SHk0LuQorbMmZ-cU42GVZ3DGo9rbvezSXKHucG2kJ3mAMJlWYuiUBCopnNhO4J6qYUGKZVm-9t6gS5SVNskV30k0VrSayexHgGZV2UazPW8j5EE1GowySBtQ8aibToJ0gGZOrvgux_ddwsgA4H1v90KJkQ9aM7vfgoVzZsulFKeYXGigbBV29hI8T-oFHoee9nz0iuu7B3ugxsKKDzLQO8rqlqSC9PcVGGQrNcYP5LMf0LdLEMvlFASHWCfuMoT_r54dvsODmRyk8_gKIirqtD_WMrkhanSQ8-ZTCbTQCuqb3o21eCfle2ZZ-t6QMtCQZoQveLiaOt12EnBsdwz8IfdGEbJdLvOH9rgXWUmmSKSNTjZMskgjmjRSBPkvz6AGcYs1O-EbwpYvkN2pmqz4T77mLmC02Yhfj8IqUpZSbn3qKK925x1D_qHeeBQGvjV2az9bf853J_aiSGEkzeGkSDVovIVl7pOGx_l3C9zTIU3UdWSxkg3o92dZLW9kue11ZNRIBqEOhELT1g-bwigjOrkcuRY1Ox6HqZQbgqEMMfmAWZTw-OzU',
  };
  try {
    final response = await http.get(
        Uri.parse("https://fresh2arrive.eoxyslive.com/api/near-stores"),
        headers: headers);

    if (response.statusCode == 200) {
      print("Store data...${response.body}");
      return ItemsData.fromJson(jsonDecode(response.body));
    } else {
      print("Store data...${response.body}");
      return ItemsData.fromJson(jsonDecode(response.body));
    }
  } catch (e) {
    throw Exception(e.toString());
  }
}
