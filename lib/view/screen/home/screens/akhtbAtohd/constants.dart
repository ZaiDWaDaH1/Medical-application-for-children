import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Question.dart';

Color welcomeMainBackground = const Color.fromARGB(255, 60, 196, 208),
    mainButtonBackground = const Color.fromARGB(255, 60, 196, 208);

List<Question>? getQuestionList() {
  var q1 = Question();
  q1.questionTitle =
      'هل يتجنب دوام التقاء الأعين (أي أنه يشيح وجهه بعيدا عندما يحاول أحدا أن ينظر إاليه)؟';
  q1.imageNameNumber = '1';
  q1.correctAnswer = 1;
  q1.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  var q2 = Question();
  q2.questionTitle =
      'هل يحدق (يمعن النظر)في الأيدي ,الأشياء والمواد الموجودة في البيئة لفترة لا تقل عن خمس ثوان ؟';
  q2.imageNameNumber = '2';
  q2.correctAnswer = 1;
  q2.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  var q3 = Question();
  q3.questionTitle =
      'هل ينقر بسرعة بأصابعه أو بيده أمام عينيه لفترات مدتها خمس ثوان أو أكثر؟';
  q3.imageNameNumber = '3';
  q3.correctAnswer = 1;
  q3.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  var q4 = Question();
  q4.questionTitle =
      'هل يأكل طعام معين ويرفض أن يأكل ما يأكله أغلب الناس_عادة_يحب نمط معين من الطعام ؟';
  q4.imageNameNumber = '4';
  q4.correctAnswer = 1;
  q4.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  var q5 = Question();
  q5.questionTitle = 'هل يلعق أشياء لا تأكل (مثل:أصابعه,ألعاب,كتب) ؟';
  q5.imageNameNumber = '5';
  q5.correctAnswer = 1;
  q5.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q6 = Question();
  q6.questionTitle = 'هل يشم أو يتشمم أشياء(مثل:ألعاب,شعر,.....الخ) ؟';
  q6.imageNameNumber = '6';
  q6.correctAnswer = 1;
  q6.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q7 = Question();
  q7.questionTitle = 'هل يدور أو يتحرك في دوائر (يدور حول شيء) ؟';
  q7.imageNameNumber = '7';
  q7.correctAnswer = 1;
  q7.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q8 = Question();
  q8.questionTitle = 'هل يهتز للأمام و للخلف أثناء الجلوس أو الوقوف ؟';
  q8.imageNameNumber = '8';
  q8.correctAnswer = 1;
  q8.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q9 = Question();
  q9.questionTitle =
      'هل يقوم بحركات خاطفة ,مندفعة ,وسريعة عندما ينتقل من مكان لأخر ؟';
  q9.imageNameNumber = '9';
  q9.correctAnswer = 1;
  q9.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q10 = Question();
  q10.questionTitle =
      'هل يتبختر في مشيته (يمشي على أطراف أصابعه)عند الحركة أو عند الوقوف في مكان ؟';
  q10.imageNameNumber = '10';
  q10.correctAnswer = 1;
  q10.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q11 = Question();
  q11.questionTitle =
      'هل يخبط أو يخفق بيديه أو أصابعه أمام وجهه أو على جنبيه(الرفرفة أمام عينيه) ؟';
  q11.imageNameNumber = '6';
  q11.correctAnswer = 1;
  q11.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q12 = Question();
  q12.questionTitle =
      'هل يصدر أصوات حادة (مثل: أي أي أي _نا نا نا)أو أصوات أخرى شبيهة كدافع أو حافز نفسي له ؟';
  q12.imageNameNumber = '6';
  q12.correctAnswer = 1;
  q12.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q13 = Question();
  q13.questionTitle =
      'هل يصفع ,يضرب,أو يعض نفسه ,أو يحاول إيذاء نفسه بأي طريقة أخرى ؟';
  q13.imageNameNumber = '6';
  q13.correctAnswer = 1;
  q13.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q14 = Question();
  q14.questionTitle =
      'هل يعيد كلمات خارج سياق الحديث(أي يعيد كلمات سمعها في وقت سابق) ؟';
  q14.imageNameNumber = '6';
  q14.correctAnswer = 1;
  q14.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q15 = Question();
  q15.questionTitle = 'هل يعيد الكلمات والعبارات مرات ومرات ؟';
  q15.imageNameNumber = '6';
  q15.correctAnswer = 1;
  q15.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q16 = Question();
  q16.questionTitle = 'هل يتكلم بدون مشاعر وكأنه آلة( لايوجد رد فعل) ؟';
  q16.imageNameNumber = '6';
  q16.correctAnswer = 1;
  q16.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q17 = Question();
  q17.questionTitle =
      'هل يستجيب بطريقة غير ملائمة للأوامرالبسيطة(مثل: اجلس,قف)لاينفذ الأمر المطلوب وينفذ أمر آخر ؟';
  q17.imageNameNumber = '6';
  q17.correctAnswer = 1;
  q17.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q18 = Question();
  q18.questionTitle = 'هل يشيح وجهه ويتجنب النظر للمتكلم إذا نادى عليه باسمه ؟';
  q18.imageNameNumber = '6';
  q18.correctAnswer = 1;
  q18.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q19 = Question();
  q19.questionTitle =
      'هل يتجنب طلب الأشياء التي يريدها(لا يطلبها)بالاسم إنما يشير إليها ؟';
  q19.imageNameNumber = '6';
  q19.correctAnswer = 1;
  q19.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q20 = Question();
  q20.questionTitle = 'هل يفشل في بدء محادثات مع أقرانه أو راشدين ؟';
  q20.imageNameNumber = '6';
  q20.correctAnswer = 1;
  q20.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q21 = Question();
  q21.questionTitle =
      'هل يستخدم نعم أو لا بطريقة غير ملائمة. ("نعم" للشيء الذي يكرهه "لا" للشيء الذي يحبه ) ؟';
  q21.imageNameNumber = '6';
  q21.correctAnswer = 1;
  q21.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q22 = Question();
  q22.questionTitle =
      'هل يستخدم الضمائر بصورة غير ملائمة(يشير إلى نفسه بالضمير هو,انت,هي,....الخ) ؟';
  q22.imageNameNumber = '6';
  q22.correctAnswer = 1;
  q22.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q23 = Question();
  q23.questionTitle =
      'هل يردد أصوات غير واضحة مثل (بقبقلة,بابابابا) مرات ومرات ؟';
  q23.imageNameNumber = '6';
  q23.correctAnswer = 1;
  q23.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q24 = Question();
  q24.questionTitle =
      'هل يستخدم الإيماءات والإشارات بدلا من الحديث لكي يحصل على الأشياء ؟';
  q24.imageNameNumber = '6';
  q24.correctAnswer = 1;
  q24.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q25 = Question();
  q25.questionTitle =
      'هل يجيب بصورة غير ملائمة على أسئلة محددة (مثل:من كسر الباب؟؟ فيجيب : أنا أكلت التفاحة) ؟';
  q25.imageNameNumber = '6';
  q25.correctAnswer = 1;
  q25.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q26 = Question();
  q26.questionTitle =
      'هل يتجنب دوام التقاء الأعين(أي أنه يشيح وجهه بعيدا عندما يحاول أحدا أن ينظر إاليه). ؟';
  q26.imageNameNumber = '6';
  q26.correctAnswer = 1;
  q26.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q27 = Question();
  q27.questionTitle =
      'هل يحدق (يمعن النظر)أو يبدو غير سعيد أو مضجر عندما يحاول أحد أن ينظر إليه ؟';
  q27.imageNameNumber = '6';
  q27.correctAnswer = 1;
  q27.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q28 = Question();
  q28.questionTitle =
      'هل يقاوم الاتصال الجسدي مع الآخرين (يبدو أنه لايحب العناق أو أن يحمله أحد أو أن يقترب منه أحد) ؟';
  q28.imageNameNumber = '6';
  q28.correctAnswer = 1;
  q28.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q29 = Question();
  q29.questionTitle = 'هل يقلد الآحرين حينما يلعب ؟';
  q29.imageNameNumber = '6';
  q29.correctAnswer = 0;
  q29.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q30 = Question();
  q30.questionTitle =
      'هل ينسحب من المواقف الجماعيةأو يبقى غير مهتم بها أو يبدو متحفظ عليها ؟';
  q30.imageNameNumber = '6';
  q30.correctAnswer = 1;
  q30.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q31 = Question();
  q31.questionTitle =
      'هل يتصرف بخوف غير مفهوم السبب أو يبعبر بطريقة يبدو عليه منها الفزع ؟';
  q31.imageNameNumber = '6';
  q31.correctAnswer = 1;
  q31.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q32 = Question();
  q32.questionTitle =
      'هل طفلك غير عاطفي أو ودود أي أنه لا يعطي استجابات ودودة (مثل:الأحضان والقبلات) ؟';
  q32.imageNameNumber = '6';
  q32.correctAnswer = 1;
  q32.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q33 = Question();
  q33.questionTitle =
      'هل ينظر بين الأشخاص (أي يبدي عدم إدراكه بوجود الأشخاص من حوله) ؟';
  q33.imageNameNumber = '6';
  q33.correctAnswer = 1;
  q33.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q34 = Question();
  q34.questionTitle = 'هل يضحك ويبكي بطريقة غير ملائمة ؟';
  q34.imageNameNumber = '6';
  q34.correctAnswer = 1;
  q34.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q35 = Question();
  q35.questionTitle =
      'هل يستخدم الألعاب والأشياء بصورة غير ملائمة (مثل : يدير السيارة في دوائر, يفكك الألعاب إلى أجزاء) ؟';
  q35.imageNameNumber = '6';
  q35.correctAnswer = 1;
  q35.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q36 = Question();
  q36.questionTitle = 'هل يفعل أشياء معينة بشكل تكراري أو كما لو كانت طقوس ؟';
  q36.imageNameNumber = '6';
  q36.correctAnswer = 1;
  q36.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  var q37 = Question();
  q37.questionTitle =
      'هل يتكدر(يشعر بالحزن)عندما يتغير النظام(الروتين)الذي اعتاد عليه ؟';
  q37.imageNameNumber = '6';
  q37.correctAnswer = 1;
  q37.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q38 = Question();
  q38.questionTitle =
      'هل يستجيب سلبيا أو بمزاج عكر عندما تعطى له الأوامر أو الارشادات أو يطلب منه شيء ؟';
  q38.imageNameNumber = '6';
  q38.correctAnswer = 1;
  q38.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q39 = Question();
  q39.questionTitle =
      'هل يرتب الأشياء بدقة وعناية ونظام ويشعر بالضيق إذا اختل هذا الترتيب ؟';
  q39.imageNameNumber = '6';
  q39.correctAnswer = 1;
  q39.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q40 = Question();
  q40.questionTitle = 'هل مشى الطفل خلال الخمسة عشر شهرا الأولى من حياته؟';
  q40.imageNameNumber = '6';
  q40.correctAnswer = 0;
  q40.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q41 = Question();
  q41.questionTitle =
      'هل نمت لدى الطفل مهارة كالمشي ثم حدث له ارتداد أو نكوس فيها (أي يتوقف عن المشي ويعود إلى الحبو مرة أخرى) ؟';
  q41.imageNameNumber = '6';
  q41.correctAnswer = 1;
  q41.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q42 = Question();
  q42.questionTitle = 'هل يهتز الطفل في نومه عدة مرات لفترة تزيد عن خمس دقائق؟';
  q42.imageNameNumber = '6';
  q42.correctAnswer = 1;
  q42.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q43 = Question();
  q43.questionTitle =
      'هل أظهر الطفل أو تم تشخيصه على أن لديه تأخر في النمو قبل الستة وثلاثون شهراالأولى من عمره ؟';
  q43.imageNameNumber = '6';
  q43.correctAnswer = 1;
  q43.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q44 = Question();
  q44.questionTitle =
      'هل يظهر الطفل أي رغبة أو يجهز نفسه لرفعه أو التقاطه عندما يحاول أحد الآباء حمله ؟';
  q44.imageNameNumber = '6';
  q44.correctAnswer = 0;
  q44.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q45 = Question();
  q45.questionTitle = 'هل يبتسم الطفل لأبويه أو الأقران اثناء اللعب ؟';
  q45.imageNameNumber = '6';
  q45.correctAnswer = 0;
  q45.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q46 = Question();
  q46.questionTitle =
      'هل يبكي الطفل عندما يحاول أحد غير مألوف بالنسبة له القتراب منه ؟';
  q46.imageNameNumber = '6';
  q46.correctAnswer = 1;
  q46.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q47 = Question();
  q47.questionTitle =
      'هل قلد الطفل شخص آخر قبل سن الثالثة (مثل تقليد الأصوات أة اللعب بالعرائس) ؟';
  q47.imageNameNumber = '6';
  q47.correctAnswer = 1;
  q47.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q48 = Question();
  q48.questionTitle =
      'هل أظهر الطفل سعادته خلال الستة وثلاثون شهرا الأولى من عمره عندما كان يعانق , يحمل , يداعب ؟';
  q48.imageNameNumber = '6';
  q48.correctAnswer = 0;
  q48.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  var q49 = Question();
  q49.questionTitle =
      'هل استخدم الطفل التخاطب للتواصل مع الآخرين خلال الستة وثلاثون شهرا الأولى من عمره؟';
  q49.imageNameNumber = '6';
  q49.correctAnswer = 0;
  q49.answerList = [
    '70'.tr,
    '71'.tr,
  ];
  var q50 = Question();
  q50.questionTitle =
      'هل يبدو الطفل وكأنه أصم تجاه بعض الأصوات في حين أنه يستجيب إلى أصوات أخرى (يظهر أنه سمعها)؟';
  q50.imageNameNumber = '6';
  q50.correctAnswer = 1;
  q50.answerList = [
    '70'.tr,
    '71'.tr,
  ];

  return [
    q1,
    q2,
    q3,
    q4,
    q5,
    q6,
    q7,
    q8,
    q9,
    q10,
    q11,
    q12,
    q13,
    q14,
    q15,
    q16,
    q17,
    q18,
    q19,
    q20,
    q21,
    q22,
    q23,
    q24,
    q25,
    q26,
    q27,
    q28,
    q29,
    q30,
    q31,
    q32,
    q33,
    q34,
    q35,
    q36,
    q37,
    q38,
    q39,
    q40,
    q41,
    q42,
    q43,
    q44,
    q45,
    q46,
    q47,
    q48,
    q49,
    q50,
  ];
}
