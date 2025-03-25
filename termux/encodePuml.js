const fs = require('node:fs');
const plantumlEncoder = require('plantuml-encoder');
const FILENAME = process.argv[2];

fs.readFile(FILENAME, 'utf8', (err, data) => {
	if(err) {
		console.error(err);
	} else {
		let encoded = plantumlEncoder.encode(data);
		let url = 'http://www.plantuml.com/plantuml/png/' + encoded;
		console.log(url);
	}
});
