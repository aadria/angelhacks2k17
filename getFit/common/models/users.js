'use strict';
/*
module.exports = function(User) {
	User.listUsers = function(filter, cb){
		console.log("In here");
		User.find(filter, function(err, userList){
			console.log(userList);
			cb(err, userList.username);
		});
	};
	User.remoteMethod(
		"listUsers",
		{
			http : {path: "/listusers", verb:"get"},
			accepts: {arg : "username", type: "string", http:{source : "query"}},
			returns: {arg:"users", type: "Array"}

		}

	);	
};
*/
module.exports = function(Users) {

};
