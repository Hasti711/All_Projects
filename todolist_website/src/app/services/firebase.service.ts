import { Injectable } from '@angular/core';
import { AngularFireAuth } from '@angular/fire/compat/auth';

@Injectable({
  providedIn: 'root'
})
export class FirebaseService {

  isloggedin = false;

  constructor(public firebaseauth:AngularFireAuth) { }

  async signin(email:string,password:string)
  {
    await this.firebaseauth.signInWithEmailAndPassword(email,password).then(
      res => {
        this.isloggedin = true
        localStorage.setItem('user',JSON.stringify(res.user?.uid))
      })
  }

  async signup(email:string,password:string)
  {
    await this.firebaseauth.createUserWithEmailAndPassword(email,password).then(
      res => {
        this.isloggedin = true
        localStorage.setItem('user',JSON.stringify(res.user?.uid))
      })
  }

  logout()
  {
    this.firebaseauth.signOut()
    localStorage.removeItem('user')
  }
}
