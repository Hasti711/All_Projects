import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AngularFireModule } from '@angular/fire/compat';
import { AngularFireDatabaseModule } from '@angular/fire/compat/database';
import { environment } from '../environments/environment'
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { RegnlogComponent } from './regnlog/regnlog.component';
import { HomeComponent } from './home/home.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { FirebaseService } from './services/firebase.service';
import { LogoutComponent } from './logout/logout.component';
import { FormsModule } from '@angular/forms';
import { TodoistComponent } from './todoist/todoist.component';
import { MatTableExporterModule } from 'mat-table-exporter';
import { MatTableModule } from '@angular/material/table';
import { ExportlistComponent } from './exportlist/exportlist.component';
import { AboutComponent } from './about/about.component';
import { ContactComponent } from './contact/contact.component';
import { GuideComponent } from './guide/guide.component';

@NgModule({
  declarations: [
    AppComponent,
    RegnlogComponent,
    HomeComponent,
    HeaderComponent,
    FooterComponent,
    LogoutComponent,
    TodoistComponent,
    ExportlistComponent,
    AboutComponent,
    ContactComponent,
    GuideComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AngularFireModule.initializeApp(environment.firebase),
    AngularFireDatabaseModule,
    FormsModule,
    MatTableModule,
    MatTableExporterModule
  ],
  providers: [FirebaseService],
  bootstrap: [AppComponent]
})
export class AppModule { }
