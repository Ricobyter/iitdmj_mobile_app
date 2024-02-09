import 'package:flutter/material.dart';
import 'package:untitled/about.dart';
import 'package:untitled/contacts.dart';
import 'package:untitled/dashboard.dart';
import 'package:untitled/facilities.dart';
import 'package:untitled/links.dart';
import 'package:untitled/my_drawer_header.dart';
import 'package:untitled/people.dart';
import 'package:untitled/placement.dart';
import 'package:untitled/programs.dart';
import 'package:untitled/research.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

import 'mongodb.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage == DrawerSections.dashboard){
      container = DashboardPage();
    } else if(currentPage == DrawerSections.about) {
      container = AboutUsPage();
    } else  if(currentPage == DrawerSections.programs) {
      container = ProgramsPage();
    } else  if(currentPage == DrawerSections.people) {
      container = PeopleProgram();
    } else  if(currentPage == DrawerSections.research) {
      container = ResearchProgram();
    } else  if(currentPage == DrawerSections.placement) {
      container = PlacementProgram();
    } else  if(currentPage == DrawerSections.facilities) {
      container = FacilitiesProgram();
    } else  if(currentPage == DrawerSections.contacts) {
      container = ContactPage();
    } else  if(currentPage == DrawerSections.links) {
      container = LinkPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF116466),
        title: Text("IIITDM Jabalpur\nCSE Discipline", style: TextStyle(color: Colors.white, fontSize: 20)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),

              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15,),
      child: Column(
        children: [
          menuItem(1, "Home", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "About", Icons.query_stats,
              currentPage == DrawerSections.about ? true : false),
          menuItem(3, "Programs", Icons.favorite,
              currentPage == DrawerSections.programs ? true : false),
          menuItem(4, "People", Icons.people,
              currentPage == DrawerSections.people ? true : false),
          Divider(),
          menuItem(5, "Research", Icons.science,
              currentPage == DrawerSections.research ? true : false),
          menuItem(6, "Placement", Icons.work,
              currentPage == DrawerSections.placement ? true : false),
          Divider(),
          menuItem(7, "Facilities", Icons.event,
              currentPage == DrawerSections.facilities ? true : false),
          menuItem(8, "Contacts", Icons.contact_mail,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(9, "QuickLinks", Icons.link,
              currentPage == DrawerSections.links ? true : false),

        ],

        //shows the list of menu drawer and options


      ),

    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey[300]: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id == 1) {
              currentPage = DrawerSections.dashboard;
            }
            else if(id == 2){
              currentPage = DrawerSections.about;
            }
            else if(id == 3){
              currentPage = DrawerSections.programs;
            }
            else if(id == 4){
              currentPage = DrawerSections.people;
            }
            else if(id == 5){
              currentPage = DrawerSections.research;
            }
            else if(id == 6){
              currentPage = DrawerSections.placement;
            }
            else if(id == 7){
              currentPage = DrawerSections.facilities;
            }
            else if(id == 8){
              currentPage = DrawerSections.contacts;
            }
            else if(id == 9){
              currentPage = DrawerSections.links;
            }


          });


        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(icon, size: 20, color: Colors.black,),),
              Expanded(
                flex: 1,
                child: Text(title, style: TextStyle(color: Colors.black, fontSize: 16),),),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections{
  dashboard,
  about,
  programs,
  people,
  research,
  placement,
  facilities,
  contacts,
  links,
}




