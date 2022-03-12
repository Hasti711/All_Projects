import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from '../app/home/home.component';
import { RegnlogComponent } from '../app/regnlog/regnlog.component';
import { AboutComponent } from './about/about.component';
import { ContactComponent } from './contact/contact.component';
import { ExportlistComponent } from './exportlist/exportlist.component';
import { GuideComponent } from './guide/guide.component';
import { TodoistComponent } from './todoist/todoist.component';

const routes: Routes = [
  {path: 'regnlog',component:RegnlogComponent },
  {path: '',component:HomeComponent },
  {path:'todoist',component:TodoistComponent },
  {path:'exportlist',component:ExportlistComponent},
  {path:'about',component:AboutComponent},
  {path:'contact',component:ContactComponent},
  {path:'guide',component:GuideComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
