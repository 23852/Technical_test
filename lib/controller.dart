import 'package:get/get.dart';
import 'package:technical_test/model.dart';

class DisplayItem extends GetxController{

  var display = <Display>[
    Display(
      fileID: "27",
      categoryID: "20",
      categoryName: "Announcement",
      categoryDesc: "",
      fileName: "Complimentary Counselling Sessions for All Employees!",
      modifiedDate: "9/29/2021 2:24:40 PM",
    ),
     Display(
      fileID: "36",
      categoryID: "21",
      categoryName: "Media",
      categoryDesc: "",
      fileName: "Tan Sri Dr. Lim Wee Chai_ Top Glove Cares, Together We Achieve More",
      modifiedDate: "10/8/2021 11:55:42 AM",
    ),
    Display(
      fileID: "29",
      categoryID: "21",
      categoryName: "Media",
      categoryDesc: "",
      fileName: "RIVER Podcast (Dr J)",
      modifiedDate: "9/29/2021 2:12:52 PM",
    ),
    Display(
      fileID: "28",
      categoryID: "21",
      categoryName: "Media",
      categoryDesc: "",
      fileName: "TG 2017_Eng Corporate Song Only_20180209__High Res.m4v",
      modifiedDate: "9/29/2021 2:12:06 PM",
    ),
    Display(
      fileID: "14",
      categoryID: "1",
      categoryName: "Memo",
      categoryDesc: "",
      fileName: "Memo ZERO TOLERANCE CULTURE FOR SEXUAL HARASSMENT AND BULLYING BEHAVIOURS IN THE WORKPLACE",
      modifiedDate: "9/29/2021 4:32:31 PM",
    ),
    Display(
      fileID: "20",
      categoryID: "1",
      categoryName: "Memo",
      categoryDesc: "",
      fileName: "Social Compliance Sustainability",
      modifiedDate: "9/27/2021 12:58:36 PM",
    ),
    Display(
      fileID: "16",
      categoryID: "1",
      categoryName: "Memo",
      categoryDesc: "",
      fileName: "MEMO 2021 Covid19 Vaccination Leave",
      modifiedDate: "9/30/2021 9:44:43 AM",
    ),
     Display(
      fileID: "15",
      categoryID: "1",
      categoryName: "Memo",
      categoryDesc: "",
      fileName: "MEMO ALL EMPLOYEES ARE COMPULSORY TO INSTALL AND SCAN MYSEJAHTERA APP WHEN ENTERING COMPANY’S PREMISE",
      modifiedDate: "9/22/2021 3:10:24 PM",
    ),
     Display(
      fileID: "22",
      categoryID: "19",
      categoryName: "Tan Sri Food For Thoughts",
      categoryDesc: "",
      fileName: "Difference between human and artificial intelligence",
      modifiedDate: "9/27/2021 1:02:19 PM",
    ),
    Display(
      fileID: "23",
      categoryID: "19",
      categoryName: "Tan Sri Food For Thoughts",
      categoryDesc: "",
      fileName: "The best motivation",
      modifiedDate: "9/27/2021 1:03:40 PM",
    ),
    Display(
      fileID: "24",
      categoryID: "19",
      categoryName: "Tan Sri Food For Thoughts",
      categoryDesc: "",
      fileName: "Rise from failures or mistakes to attain success",
      modifiedDate: "9/27/2021 1:05:20 PM",
    ),
     Display(
      fileID: "26",
      categoryID: "19",
      categoryName: "Tan Sri Food For Thoughts",
      categoryDesc: "",
      fileName: "Right strategy and direction important in business",
      modifiedDate: "9/27/2021 2:01:44 PM",
    ),
    

    


  ].obs;

  displaymemo(memo) {
    List memo = [].obs;
    for(int i = 0 ; i< display.length;i++){
      if(display[i].categoryName == memo){
        memo.add(display[i]);

      }
    }
  }
}