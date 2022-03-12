import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import { FirebaseService } from '../services/firebase.service';

@Component({
  selector: 'app-regnlog',
  templateUrl: './regnlog.component.html',
  styleUrls: ['./regnlog.component.css']
})

export class RegnlogComponent implements OnInit {

  public issignedin = false

  constructor(public firebaseservice: FirebaseService,private router:Router){}

  ngOnInit()
  {
    if(localStorage.getItem('user') !== null)
    {
      this.issignedin = true
    }
    else
    {
      this.issignedin = false
    }
  }
  
  async onsignup(email:string,password:string)
  {
    await this.firebaseservice.signup(email,password)
    if(this.firebaseservice.isloggedin)
    {
      this.issignedin = true
      this.router.navigate(['/'])
    }
  }

  async onsignin(email:string,password:string)
  {
    await this.firebaseservice.signin(email,password)
    if(this.firebaseservice.isloggedin)
    {
      this.issignedin = true
      this.router.navigate(['/'])
    }
  }

  handlelogout()
  {
    this.issignedin = false
    this.router.navigate(['/'])
  }
}