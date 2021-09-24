import '@babel/polyfill';
import app from './app';

function main() {
	const port = process.env.PORT || 3001;
	app.listen(port, () => {
		console.log(`Listening on http://localhost:${port}/`);
	});
}

main();
