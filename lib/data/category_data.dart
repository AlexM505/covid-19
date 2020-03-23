import 'package:coronaviruscovid19/model/Category.dart';
import 'package:coronaviruscovid19/model/Review.dart';

final categories = [
  Category(
      categoryName: "Symthoms",
      imagePath: "assets/images/symthoms.png",
      content: new Content_Category(
          title: 'Watch for symptoms',
          content: """
Reported illnesses have ranged from mild symptoms to severe illness and death for confirmed coronavirus disease 2019 (COVID-19) cases.
These symptoms may appear 2-14 days after exposure (based on the incubation period of MERS-CoV viruses).
    -Fever
    -Cough
    -Shortness of breath

If you develop emergency warning signs for COVID-19 get medical attention immediately. Emergency warning signs include*:
    -Trouble breathing
    -Persistent pain or pressure in the chest
    -New confusion or inability to arouse
    -Bluish lips or face
""",
          imgPath: 'https://www.cdc.gov/coronavirus/2019-ncov/images/symptoms-cough.png',
          imgLocal: false)
  ),

  Category(
      categoryName: "Preventions",
      imagePath: "assets/images/prevention.png",
      content: new Content_Category(
          title: 'Take steps to protect yourself',
          content: """
Clean your hands often:
  -Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.
  -If soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol. Cover all surfaces of your hands and rub them together until they feel dry.
  -Avoid touching your eyes, nose, and mouth with unwashed hands.
  
Avoid close contact:
  -Avoid close contact with people who are sick.
  -Put distance between yourself and other people if COVID-19 is spreading in your community. This is especially important for people who are at higher risk of getting very sick.       
""",
imgPath: 'https://www.cdc.gov/coronavirus/2019-ncov/images/protect-wash-hands.png',
imgLocal: false)
  ),
  Category(
      categoryName: "Origin",
      imagePath: "assets/images/bat_carrier.png",
      content: new Content_Category(
          title: 'COVID-19 coronavirus epidemic has a natural origin',
          content: """
The novel SARS-CoV-2 coronavirus that emerged in the city of Wuhan, China, last year and has since caused a large scale COVID-19 epidemic and spread to more than 70 other countries is the product of natural evolution, according to findings published today in the journal Nature Medicine.

The analysis of public genome sequence data from SARS-CoV-2 and related viruses found no evidence that the virus was made in a laboratory or otherwise engineered.

Based on their genomic sequencing analysis, Andersen and his collaborators concluded that the most likely origins for SARS-CoV-2 followed one of two possible scenarios.

In one scenario, the virus evolved to its current pathogenic state through natural selection in a non-human host and then jumped to humans. This is how previous coronavirus outbreaks have emerged, with humans contracting the virus after direct exposure to civets (SARS) and camels (MERS). The researchers proposed bats as the most likely reservoir for SARS-CoV-2 as it is very similar to a bat coronavirus. There are no documented cases of direct bat-human transmission, however, suggesting that an intermediate host was likely involved between bats and humans.

In this scenario, both of the distinctive features of SARS-CoV-2's spike protein -- the RBD portion that binds to cells and the cleavage site that opens the virus up -- would have evolved to their current state prior to entering humans. In this case, the current epidemic would probably have emerged rapidly as soon as humans were infected, as the virus would have already evolved the features that make it pathogenic and able to spread between people.

In the other proposed scenario, a non-pathogenic version of the virus jumped from an animal host into humans and then evolved to its current pathogenic state within the human population. For instance, some coronaviruses from pangolins, armadillo-like mammals found in Asia and Africa, have an RBD structure very similar to that of SARS-CoV-2. A coronavirus from a pangolin could possibly have been transmitted to a human, either directly or through an intermediary host such as civets or ferrets.

Study co-author Andrew Rambaut cautioned that it is difficult if not impossible to know at this point which of the scenarios is most likely. If the SARS-CoV-2 entered humans in its current pathogenic form from an animal source, it raises the probability of future outbreaks, as the illness-causing strain of the virus could still be circulating in the animal population and might once again jump into humans. The chances are lower of a non-pathogenic coronavirus entering the human population and then evolving properties similar to SARS-CoV-2.
""",
          imgPath: 'https://www.sciencedaily.com/images/2020/03/200317175442_1_540x360.jpg',
          imgLocal: false)
  ),
  Category(
      categoryName: "Evolution of \nthe disease",
      imagePath: "assets/images/coronavirus_evolution.png",
      content: new Content_Category(
          title: 'History and Recent Advances in Coronavirus Discovery',
          content: """
Human coronaviruses, first characterized in the 1960s, are responsible for a substantial proportion of upper respiratory tract infections in children. Since 2003, at least 5 new human coronaviruses have been identified, including the severe acute respiratory syndrome coronavirus, which caused significant morbidity and mortality. NL63, representing a group of newly identified group I coronaviruses that includes NL and the New Haven coronavirus, has been identified worldwide. These viruses are associated with both upper and lower respiratory tract disease and are likely common human pathogens. The global distribution of a newly identified group II coronavirus, HKU1, has not yet been established. Coronavirology has advanced significantly in the past few years. The SARS epidemic put the animal coronaviruses in the spotlight. The background and history relative to this important and expanding research area are reviewed here.
""",
          imgPath: 'https://images.journals.lww.com/pidj/Original.00006454-200511001-00012.F1-12.jpeg',
          imgLocal: false)
  ),
  Category(
      categoryName: "Affected \nareas",
      imagePath: "assets/images/map_afect.png",
      content: new Content_Category(
          title: 'the World Health Organization',
          content: """
Global case numbers are reported by the World Health Organization (WHO) in their coronavirus disease 2019 (COVID-19) situation report.

https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/
""",
          imgPath: 'https://www.cdc.gov/coronavirus/2019-ncov/images/outbreak-coronavirus-world.png',
          imgLocal: false)
  ),
];