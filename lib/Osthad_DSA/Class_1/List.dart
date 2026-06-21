import 'package:new_flutter_project/Osthad_DSA/Class_1/employe.dart';

void main(){
  List<int>list=[1,2,3,4,5];
  print(list);
  list.add(6);
  print(list);
  list.remove(1);
  print(list);
  list.removeAt(2);
  print(list);
  print(list.contains(3));
  print(list.indexOf(4));
  print(list.isEmpty);
  print(list.isNotEmpty);
  print(list.length);
  list[2]=10;
  print(list);
  list.map((e)=>e*2);
  print(list);
  list.clear();
  print(list);
  List<Employe>empoyes=[
    Developer('jone', 25, 5000),
    QA('jane',30,4500),    Developer('nihad', 55, 50783600),
    QA('nagifg',20,4504250),
  ];
}
void calculateheightIncome(List<Employe>empoyes){
  Employe heightpaid=empoyes[0];
  double heightTotal=heightpaid.salary! + heightpaid.calculatoreBonus();
  for(var empoloyee in empoyes){
    double total=empoloyee.salary!+empoloyee.calculatoreBonus();
    if(total>heightTotal){
      heightpaid=empoloyee;
      heightTotal=total;

    }
  }
  print('Heighest paid empoloyee:${heightpaid.name}');
  print('total income:${heightTotal}');

}