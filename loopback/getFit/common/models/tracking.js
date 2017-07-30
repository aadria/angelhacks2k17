'use strict';

module.exports = function(Tracking) {
	var users = Tracking.find({"where": {"user" : Tracking.username}});
	if users.dailyTime == 0{
		users.dailyTime = Tracking.dailyTime;
		users.dailyPoints = Tracking.dailyPoints;
	}
	if Date.prototype.getDay() == "Monday"{
		users.weeklyTime = Tracking.weeklyTime;
		users.weeklyPoints = Tracking.weeklyPoints;

	}
	else {
		users.weeklyTime += Tracking.dailyTime;
		users.weeklyPoints += Tracking.dailyPoints;

	}
	if Date.prototype.getDate() != 1 {
		users.monthlyTime += Tracking.dailyTime;
		users.monthlyPoints += Tracking.dailyPoints;

	}
	else{
		users.monthlyTime = Tracking.dailyTime;
		users.monthlyPoints = Tracking.dailyPoints;

	}
};
