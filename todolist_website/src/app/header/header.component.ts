import { Component, OnInit } from '@angular/core';
import { FirebaseService } from '../services/firebase.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  issignedin = false

  constructor(public firebaseservice: FirebaseService) {}

  ngOnInit(): void {
    if(localStorage.getItem('user') !== null)
    {
      this.issignedin = true
    }
    else
    {
      this.issignedin = false
    }
  }

}
