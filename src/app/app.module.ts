import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ShowResultComponent } from './show-result/show-result.component';
import {HttpClientModule} from '@angular/common/http';
import { TryComponent } from './try/try.component';
import { GetCountUsersComponent } from './get-count-users/get-count-users.component';


@NgModule({
  declarations: [
    AppComponent,
    ShowResultComponent,
    TryComponent,
    GetCountUsersComponent,
   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
