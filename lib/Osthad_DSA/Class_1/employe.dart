abstract class Employe {
  String? name;
  int? age;
  double? salary;

  Employe (this.name,this.age,this.salary);
  double calculatoreBonus();
}
class Developer extends Employe{
  Developer(super.name,super.age,super.salary);
  @override
double  calculatoreBonus(){
    return salary! * 0.2;
  }
}
class QA extends Employe{
  QA(super.name, super.age, super.salary);


  @override
 double calculatoreBonus(){
    return salary!  * 0.15;
  }
}