import { Component, OnInit } from '@angular/core';
import { UserServiceService } from '../services/user-service.service';

@Component({
  selector: 'app-show-result',
  templateUrl: './show-result.component.html',
  styleUrls: ['./show-result.component.css']
})
export class ShowResultComponent implements OnInit {

  constructor(private userService:UserServiceService ) { }
   result:any;
  ngOnInit(): void {
  }

  clickToResult()
  {
     this.result=this.userService.getCount();
     return this.result;
  }

}
