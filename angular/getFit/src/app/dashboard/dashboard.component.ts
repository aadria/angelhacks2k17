import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  activites = [{ "username": "jonah", "time": "20 hours", "points": "3000", "id": 1 }, { "username": "tj", "time": "30 hours", "points": "3300", "id": 2 }, { "username": "amy", "time": "10 hours", "points": "300", "id": 3 }]
  constructor() { }

  ngOnInit() {
  }

}
