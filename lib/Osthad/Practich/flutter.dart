class model{
 String?name;
 int?id;
 bool isdone;
 model({required this.id,required  this.isdone,required this.name});
 Map<String,dynamic>toMap(){
   return {
     'name':name,
     'id':id,
     'isdone':isdone?1:0,
   };
 }
 factory model.formMap(Map<String,dynamic>map){
   return model(id: map['id'], isdone: map['isdone']==0, name: map['name']);
 }

}