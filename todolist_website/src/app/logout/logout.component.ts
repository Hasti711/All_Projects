import { Component, OnInit,Output,EventEmitter } from '@angular/core';
import { Router } from '@angular/router';
import { FirebaseService } from '../services/firebase.service';

@Component({
  selector: 'app-logout',
  templateUrl: './logout.component.html',
  styleUrls: ['./logout.component.css']
})
export class LogoutComponent implements OnInit {

  @Output() islogout = new EventEmitter<void> ()
  constructor(public firebaseservice:FirebaseService,private router:Router) { }

  ngOnInit(): void {
  }

  logout()
  {
    this.firebaseservice.logout()
    this.islogout.emit()
    this.router.navigate(['/']);
  }
}
