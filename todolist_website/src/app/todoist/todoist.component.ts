import { Component, OnInit } from '@angular/core';
import { FirebaseService } from '../services/firebase.service';
import {TodoistService} from '../todoist/shared/todoist.service';

@Component({
  selector: 'app-todoist',
  templateUrl: './todoist.component.html',
  styleUrls: ['./todoist.component.css'],
  providers:[TodoistService]
})
export class TodoistComponent implements OnInit {

  issignedin = false
  todolistarr: any[];
  txt:string;
  dttodo:string;
  tttodo:string;
  todocat:string;

  constructor(public firebaseservice: FirebaseService,private todoservice:TodoistService) {
    this.todolistarr = [];
    this.txt = "";
    this.dttodo = "";
    this.tttodo = "";
    this.todocat = "";
   }

  ngOnInit(): void {
    if(localStorage.getItem('user') !== null)
    {
      this.issignedin = true
    }
    else
    {
      this.issignedin = false
    }
    this.todoservice.gettodolist().snapshotChanges()
    .subscribe(
      item => {
        this.todolistarr = [];
        item.forEach(element => {
          var x = element.payload.toJSON();
          if(x != null)
          {
          x["$key"] = element.key;
          this.todolistarr.push(x);
         }
        })

        this.todolistarr.sort((a,b) => {
          return a.isChecked - b.isChecked;
        })

        this.todolistarr.sort((c,d) => {
          return d.isstar - c.isstar;
        })
      });
  }

  onAdd(itemtitles:any,dttorm:any,tttorm:any,cate:any) {
    this.todoservice.addtitle(itemtitles.value,dttorm.value,tttorm.value,cate.value);
    itemtitles.value = null;
    dttorm.value = null;
    tttorm.value = null;
    cate.value = null;
  }

  alterCheck($key: string,isChecked: boolean) {
    this.todoservice.checkOrUnCheckTitle($key,!isChecked);
  }

  starcheck($key:string,isstar:boolean)
  {
    this.todoservice.starorunstartitle($key,!isstar);
  }

  onDelete($key : string){
    this.todoservice.removeTitle($key);
  }

  onedit(itemtitle : string,dttodo1 : string,tttodo1 : string,cate:string,$key:string)
  {
    this.txt = itemtitle;
    this.dttodo = dttodo1;
    this.tttodo = tttodo1;
    this.todocat = cate;
    this.onDelete($key);
  }
}