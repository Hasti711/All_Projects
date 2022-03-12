import { Injectable } from '@angular/core';
import { AngularFireDatabase, AngularFireList } from '@angular/fire/compat/database';

@Injectable({
  providedIn: 'root'
})
export class TodoistService {

  todolist: AngularFireList<any>;
  todocat:AngularFireList<any>;
  i:number;
  j:number;

  constructor(public firebasedb:AngularFireDatabase) {
    this.todolist = this.gettodolist();
   }

   gettodolist()
   {
     this.todolist = this.firebasedb.list('todolist/'+JSON.parse(localStorage.getItem('user')!));
     return this.todolist;
   }
   
   addtitle(title: string,dttorm : string,tttorm : string,category:string)
   {
     this.todolist.push({
       title: title,
       isChecked: false,
       dttorm: dttorm,
       tttorm: tttorm,
       category:category,
       isstar:false
     });
   }

   checkOrUnCheckTitle($key: string, flag: boolean) {
    this.todolist.update($key, { isChecked: flag });
  }

  removeTitle($key: string) {
    this.todolist.remove($key);
  }

  starorunstartitle($key:string,flag: boolean)
  {
    this.todolist.update($key,{isstar:flag});
  }

  gettodolistbycat()
  {
    this.firebasedb.list('todolist').valueChanges().subscribe(item => {
      for(this.i=0;this.i<1;this.i++)
      {
        item.forEach(values => {console.log(values)
        });
      }
    });
    return this.todocat;
  }
}
