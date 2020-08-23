import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQs',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        elevation: 0,
      ),
      body:
      ListView(
        shrinkWrap: true,
        scrollDirection:Axis.vertical ,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.0),
            child:Padding(
              padding: EdgeInsets.all(10.0),
              child:Column(
                children: <Widget>[
                  Text(
                    'What is a novel coronavirus?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.indigo,
                    ),
                  ),

                  SizedBox(height: 4.0),

                  Text(

                    'A novel coronavirus is a new coronavirus that has not been previously identified. The virus causing coronavirus disease 2019 (COVID-19), is not the same as the coronaviruses that commonly circulate among humans and cause mild illness, like the common cold.',

                  ),



                ],

              ),

            ),
          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'Why is the disease being called coronavirus disease 2019, COVID-19 ?',

                    style: TextStyle(
                      fontSize: 20.0,

                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('On February 11, 2020 the World Health Organization announced an official name for the disease that is causing the 2019 novel coronavirus outbreak, '
                      'first identified in Wuhan China. The new name of this disease is coronavirus disease 2019, abbreviated as COVID-19. In COVID-19, ‘CO’ stands for ‘corona,’ ‘VI’ for ‘virus,’ and ‘D’ for disease.'
                      'Formerly, this disease was referred to as “2019 novel coronavirus” or “2019-nCoV”,'
                      'There are many types of human coronaviruses including some that commonly cause mild upper-respiratory tract illnesses. COVID-19 is a new disease, caused by a novel (or new) coronavirus that has not previously been seen in Humans.',

                  ),

                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'How does COVID-19 spread?',

                    style: TextStyle(
                      fontSize: 20.0,

                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales.'
                      ' These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. '
                      'People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick.',

                  ),

                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(
                    'How do I know if it is COVID-19 or just the common flu?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('A COVID-19 infection has the same signs and symptoms as the common cold and you can only differentiate them through laboratory testing to determine the virus type. If you have fever, cough and difficulty breathing,'
                      ' you should seek medical attention and immediately isolate yourself from others. Call your local UN clinic/medical facility to inform them of your condition and relevant travel/exposure history. If you had been identified as a close contact of a case by the local Ministry of Health , please also indicate this. '
                      'From here you will be advised if a medical assessment is necessary and how to get tested.',
                  ),

                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' How likely am I to catch COVID-19?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('The risk depends on where you are - and more specifically, whether there is a COVID-19 outbreak unfolding there.'
                      ' For most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. '
                      'For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. '
                      'Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.'
                      'COVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. '
                      'Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide.',

                  ),

                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Are pregnant women more susceptible to the COVID-19 virus and will it harm the fetus?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('Pregnant women experience immunologic and physiologic changes, which might make them more susceptible to viral respiratory infections, including COVID-19.'
                      'The virus that causes COVID-19 is thought to spread mainly by close contact with an infected person through respiratory droplets.'
                      'Whether a pregnant woman with COVID-19 can transmit the virus that causes COVID-19 to her fetus or neonate by other routes of vertical transmission (before, during, or after delivery) is still unknown.',

                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'What is the risk of my child becoming sick with COVID-19?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('Based on available evidence, children do not appear to be at higher risk for COVID-19 than adults.'
                      ' While some children and infants have been sick with COVID-19, adults make up most of the known cases to date.',
                  ),
                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'Are the symptoms of COVID-19 different in children than in adults?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('No. The symptoms of COVID-19 are similar in children and adults. However, children with confirmed COVID-19 have generally presented with mild symptoms. '
                      'Reported symptoms in children include cold-like symptoms, such as fever, runny nose, and cough. Vomiting and diarrhea have also been reported. '
                      'It’s not known yet whether some children may be at higher risk for severe illness, for example, children with underlying medical conditions and special healthcare needs. There is much more to be learned about how the disease impacts children.',

                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Should I worry about COVID-19?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('Illness due to COVID-19 infection is generally mild, especially for children and young adults. However, it can cause serious illness: about 1 in every 5 people who catch it need hospital care. '
                      'It is therefore quite normal for people to worry about how the COVID-19 outbreak will affect them and their loved ones. ',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Who is at risk of developing severe illness?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure,'
                      ' heart disease, lung disease, cancer or diabetes) appear to develop serious illness more often than others.',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Is there a vaccine, drug or treatment for COVID-19?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('Not yet. To date, there is no vaccine and no specific antiviral medicine to prevent or treat COVID-2019. However, those affected should receive care to relieve symptoms. '
                      'People with serious illness should be hospitalized. Most patients recover thanks to supportive care.'
                      'Possible vaccines and some specific drug treatments are under investigation. They are being tested through clinical trials.'
                      'WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19.'
                      'The most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue, and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' How long is the incubation and transmission period for COVID-19?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('The “incubation period” means the time between catching the virus and beginning to have symptoms of the disease.'
                      ' Most estimates of the incubation period for COVID-19 range from 1- 14 days, most commonly around five days. ',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    '  Can humans become infected with the COVID-19 from an animal source?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('Possible animal sources of COVID-19 have not yet been confirmed. To protect yourself, such as when visiting live animal markets, avoid direct contact with animals and surfaces in contact with animals.'
                      ' Ensure good food safety practices at all times. Handle raw meat, milk or animal organs with care to avoid contamination of uncooked foods and avoid consuming raw or undercooked animal products.',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'How long does the virus survive on surfaces ?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('It is not certain how long the virus that causes COVID-19 survives on surfaces, but it seems to behave like other coronaviruses.'
                      ' Studies suggest that coronaviruses (including preliminary information on the COVID-19 virus) may persist on surfaces for a few hours or up to several days.'
                      ' This may vary under different conditions (e.g. type of surface, temperature or humidity of the environment.'
                      'If you think a surface may be infected, clean it with simple disinfectant to kill the virus and protect yourself and others. Clean your hands with an alcohol-based hand rub or wash them with soap and water.'
                      ' Avoid touching your eyes, mouth, or nose.',
                  ),
                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' How can I get tested for COVID-19?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('If you are well, no testing is recommended.'
                      'If you are experiencing symptoms of COVID-19, you should immediately isolate yourself from others. Call your local clinic/medical facility to inform them of your condition and relevant travel/exposure history.'
                      ' If you had been identified as a close contact of a case by the local Ministry of Health , please also indicate this. From here you will be advised if a medical assessment is necessary and how to get tested.',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'Can people who recover from COVID-19 be infected again ?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('We know that for similar coronaviruses, infected people are unlikely to be re-infected shortly after they recover. '
                      'However, because the immune response to COVID-19 is not yet understood, it is not yet known whether similar immune protection will be observed for patients who have recovered from COVID-19.',
                  ),

                ],

              ),

            ),

          ),

          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Is there a connection between COVID -19 and environment temperature?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('It is not known yet if weather and temperature changes impact or has any connection with COVID-19.'
                      ' At this time, it is not clear or known if the spread of COVID-19 will decrease when the weather becomes warmer.',
                  ),

                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Is hand sanitizer effective against COVID-19 ?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('The best way to prevent the spread of infections and decrease the risk of getting sick is by washing your hands with plain soap and water.'
                      'Washing hands often with soap and water for at least 20 seconds is essential, especially after going to the bathroom; before eating; and'
                      ' after coughing, sneezing, or blowing one’s nose.',
                  ),

                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    'What is convalescent plasma and why is it being investigated to treat COVID-19 ?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('Convalescent plasma is the liquid part of blood that is collected from patients who have recovered from the novel coronavirus disease, COVID-19, caused by the virus'
                      'SARS-CoV-2. COVID-19 patients develop antibodies in the blood against the virus.Antibodies are proteins that might help fight the infection. Convalescent plasma is being'
                      'investigated for the treatment of COVID-19 because there is no approved treatment for this disease and there is some information that suggests it might help some patients recover'
                      'from COVID-19. Further investigation is still necessary to determine if convalescent plasma might shorten the duration of illness, reduce morbidity, or prevent deathassociated with COVID-19',
                  ),


                ],

              ),

            ),

          ),
          Card(

            margin: EdgeInsets.all(10.0),

            child:Padding(

              padding: EdgeInsets.all(10.0),

              child:Column(

                children: <Widget>[

                  Text(

                    ' Can I get COVID-19 from my pet or other animals?',

                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                      color: Colors.indigo,

                    ),

                  ),

                  SizedBox(height: 4.0),

                  Text('There is a very small number of pets around the world reported to be infected with the virus that causes COVID-19 after having contact with a person with COVID-19.'
                      'There is currently no evidence that animals are a source of COVID-19 infection.Do not let pets interact with people outside the household.'
                      'Keep cats indoors when possible to prevent them from interacting with other people.Avoid dog parks or public places where a large number of people gather.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}