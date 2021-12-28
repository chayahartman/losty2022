import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UserServiceService {
  constructor(private _http:HttpClient) { }
  result:any;
    getCount()
    {
      this._http.get("/api/Users").subscribe(res=>{
       debugger
        console.log(res);
        this.result= res;
      })
        return this.result;
    }
  }
  