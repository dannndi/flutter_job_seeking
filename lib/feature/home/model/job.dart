class Job {
  final String companyName;
  final String companyImage;
  final String jobTitle;
  final String location;
  final String locationShort;
  final String salary;
  final String jobType;
  final List<String> requirements;
  final String about;
  final String timeStamp;

  Job({
    required this.companyName,
    required this.companyImage,
    required this.jobTitle,
    required this.location,
    required this.locationShort,
    required this.salary,
    required this.jobType,
    required this.requirements,
    required this.about,
    required this.timeStamp,
  });
}

final recentJobs = [
  Job(
    companyName: "Twitter",
    companyImage: "assets/ic_twitter.png",
    jobTitle: "Software Developer",
    location: "United States",
    locationShort: "USA",
    salary: "5K",
    jobType: "Full Time | WFH",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Facebook",
    companyImage: "assets/ic_facebook.png",
    jobTitle: "iOS Developer",
    location: "United States",
    locationShort: "USA",
    salary: "5K",
    jobType: "Full Time | WFO",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Google",
    companyImage: "assets/ic_google.png",
    jobTitle: "Product Desainer",
    location: "United States",
    locationShort: "USA",
    salary: "5K",
    jobType: "Full Time | WFA",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Amazon",
    companyImage: "assets/ic_amazon.png",
    jobTitle: "Senior Marketing",
    location: "United States",
    locationShort: "USA",
    salary: "5K",
    jobType: "Full Time | WFA",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "2h",
  ),
];
