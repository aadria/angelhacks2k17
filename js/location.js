var https = require('https'); 
var optionsget = {
    host : 'dev.virtualearth.net',
    port :443,
//    path : '/REST/v1/Locations/47.64054,-122.12934?includeEntityTypes=address,Neighborhood,PopulatedPlace,Postcode1,AdminDivision1,AdminDivision2,countryRegion&o=json&key=AoE7IhlYkN6dWpYSXwaQEB9d4NGgAgcFYdMsNWM9dm2CGQ7Xrz6Z1DopvagkaVIa',
//   path :'/REST/v1/Locations/US/WA/92037/La%20Jolla/3927%20Miramar%20St?o=json&key=AoE7IhlYkN6dWpYSXwaQEB9d4NGgAgcFYdMsNWM9dm2CGQ7Xrz6Z1DopvagkaVIa',
   path : '/REST/v1/Locations/US/WA/94402/San%20Mateo/500%20S%20El%20Camino%20Real?o=json&key=AoE7IhlYkN6dWpYSXwaQEB9d4NGgAgcFYdMsNWM9dm2CGQ7Xrz6Z1DopvagkaVIa',
   method : 'GET',
};

console.info('Options prepared:');
console.info(optionsget);
console.info('Do the GET call');

// do the GET request
var reqGet = https.request(optionsget, function(res) {
    console.log("statusCode: ", res.statusCode);

    res.on('data', function(d) {
        console.info('GET result:\n');
        process.stdout.write(d);
        console.info('\n\nCall completed');
    });

});

reqGet.end();
reqGet.on('error', function(e) {
    console.error(e);
});

