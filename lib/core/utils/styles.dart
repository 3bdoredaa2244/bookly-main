import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

abstract class Styles {
  static TextStyle textStyle14 =
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal);
  static TextStyle textStyle16 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle textStyle18 =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
  static TextStyle textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle textStyle30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.normal,
    fontFamily: gTSectraFine,
  );
}
/*
{
            "kind": "books#volume",
            "id": "culPGJf4MGcC",
            "etag": "j0vLYdZh4E4",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/culPGJf4MGcC",
            "volumeInfo": {
                "title": "Advances in Computer Science, Environment, Ecoinformatics, and Education, Part IV",
                "subtitle": "International Conference, CSEE 2011, Wuhan, China, August 21-22, 2011. Proceedings",
                "authors": [
                    "Sally Lin",
                    "Xiong Huang"
                ],
                "publisher": "Springer Science & Business Media",
                "publishedDate": "2011-08-09",
                "description": "This 5-volume set (CCIS 214-CCIS 218) constitutes the refereed proceedings of the International Conference on Computer Science, Environment, Ecoinformatics, and Education, CSEE 2011, held in Wuhan, China, in July 2011. The 525 revised full papers presented in the five volumes were carefully reviewed and selected from numerous submissions. The papers are organized in topical sections on information security, intelligent information, neural networks, digital library, algorithms, automation, artificial intelligence, bioinformatics, computer networks, computational system, computer vision, computer modelling and simulation, control, databases, data mining, e-learning, e-commerce, e-business, image processing, information systems, knowledge management and knowledge discovering, mulitimedia and its apllication, management and information system, moblie computing, natural computing and computational intelligence, open and innovative education, pattern recognition, parallel and computing, robotics, wireless network, web application, other topics connecting with computer, environment and ecoinformatics, modeling and simulation, environment restoration, environment and energy, information and its influence on environment, computer and ecoinformatics, biotechnology and biofuel, as well as biosensors and bioreactor.",
                "industryIdentifiers": [
                    {
                        "type": "ISBN_13",
                        "identifier": "9783642233388"
                    },
                    {
                        "type": "ISBN_10",
                        "identifier": "3642233384"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 635,
                "printType": "BOOK",
                "categories": [
                    "Computers"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "preview-1.0.0",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=culPGJf4MGcC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=culPGJf4MGcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=culPGJf4MGcC&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api",
                "infoLink": "http://books.google.com.eg/books?id=culPGJf4MGcC&dq=computer+science&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Advances_in_Computer_Science_Environment.html?hl=&id=culPGJf4MGcC"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "PARTIAL",
                "embeddable": true,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false
                },
                "pdf": {
                    "isAvailable": true,
                    "acsTokenLink": "http://books.google.com.eg/books/download/Advances_in_Computer_Science_Environment-sample-pdf.acsm?id=culPGJf4MGcC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
                },
                "webReaderLink": "http://play.google.com/books/reader?id=culPGJf4MGcC&hl=&source=gbs_api",
                "accessViewStatus": "SAMPLE",
                "quoteSharingAllowed": false
            },
            "searchInfo": {
                "textSnippet": "This 5-volume set (CCIS 214-CCIS 218) constitutes the refereed proceedings of the International Conference on Computer Science, Environment, Ecoinformatics, and Education, CSEE 2011, held in Wuhan, China, in July 2011."
            }
        },
 */
