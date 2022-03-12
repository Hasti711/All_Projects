import { Component, OnInit } from '@angular/core';
import { TodoistService } from '../todoist/shared/todoist.service';

export class todolistforexp
{
  title:string;
  category:string;
  date:string;
  time:string;
}

@Component({
  selector: 'app-exportlist',
  templateUrl: './exportlist.component.html',
  styleUrls: ['./exportlist.component.css']
})
export class ExportlistComponent implements OnInit {

  dataSource:todolistforexp[];
  displayedColumns: string[] = ['title', 'category' , 'dttorm', 'tttorm'];

  constructor(private todoservice:TodoistService){}

  ngOnInit(){
    this.todoservice.gettodolist().snapshotChanges()
    .subscribe(
      item => {
        this.dataSource = [];
        item.forEach(element => {
          var y = element.payload.toJSON();
          if(y != null)
          {
          y["$key"] = element.key;
          y["title"] = element.payload.val();
          this.dataSource.push(y["title"]);
         }
        })
    });
  }
}