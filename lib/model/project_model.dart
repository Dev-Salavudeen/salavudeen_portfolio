class Project {
  final String name;
  final String description;
  // final String image;
  final String link;
  Project(this.name, this.description, this.link);
}

List<Project> projectList = [
  Project(
      'TutorLPT',
      "TutorLPT mobile App (Learning, Practice and Test) with a perfect blend of learning contents for Physics, Chemistry and Biology.It has been designed particularly to help NEET candidates with Competitive mode, practice questions, learn and understand concepts in easy to grasp manners", // 'assets/images/coffee.png',
      'https://play.google.com/store/apps/details?id=com.tc.lpt&hl=en'),
  Project(
    'Tyme Application',
    'Experience the worlds first calendar application that runs on phone numbers. With Tyme, you can easily add participants for events directly from your phone book. No need for email IDs anymore. Stay organized and schedule with ease. Download now and revolutionize the way you plan and connect.',
    'https://play.google.com/store/apps/details?id=com.tyme.tymeapp&hl=en',
  ),
  Project(
      'Simple Resource Planning',
      'Introducing our comprehensive mobile app designed to revolutionize your workplace management experience. This all-encompassing solution caters to the diverse needs of modern professionals, offering a range of features that seamlessly integrate into your daily routine.',
      'https://play.google.com/store/apps/details?id=com.tc.srp&hl=en'),
  Project(
    'Vehi Deals',
    'Vehi Deals is a vehicle marketplace application that lets you buy and sell vehicles through this application.',
    'https://github.com/Dev-Salavudeen/vehi_deals',
  ),
  Project(
      'Doctrxs',
      'Experience the power of Medical Records (Rxs, Lab reports..) storing and sharing by individuals to clinics and doctors for easy viewing and saving time for the follow up treatments. First kind of app in this segment to give individuals the freedom to store their Personal Medical Records viewing and Sharing to anyone. And we also have the option for Clinical Labs to share the report results to the Individuals and Doctors. No more missed prescriptions for Doctor visits and easy online consulting and appointment is possible. No more visits to Clinical Lab to collect the Reports.',
      'https://play.google.com/store/apps/details?id=com.tc.doctrxs&hl=en-IN'),
  Project(
      'Flutter Chat Application',
      'Welcome to our innovative Flutter chat application! This feature-rich messaging platform allows users to connect and communicate seamlessly through text and images. The app is built using Flutter for the frontend.',
      'https://github.com/Dev-Salavudeen/reply_me'),
  Project(
      'Chat Hub',
      'A Flutter Chat application, for android, ios and web platform, using Firebase for Google Sign In/Sign Up and exchange text, emoji and images, include user online feature.',
      'https://github.com/Dev-Salavudeen/chat_hub'),
];
