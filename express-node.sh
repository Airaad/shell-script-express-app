#Create a new directory
mkdir express-app
cd express-app

#Initialize an empty nodejs project
npm init -y

#Install the dependencies
npm install express

#Install dev dependencies
npm install -D @types/express
npm install -D typescript
npm install -D ts-node

#Initialize ts-config file
tsc --init

#Create a src directory
mkdir src

#Create index.ts file in src directory
touch src/index.ts

#Edit tsconfig file to set rootDir and outDir
sed -i '30s#.*#  	"rootDir": "./src",#' tsconfig.json
sed -i '62s#.*# 	 "outDir": "./dist",#' tsconfig.json

#Edit the script tag in package.json
sed -i '/"scripts": {/a\
  "dev": "ts-node src/index.ts",\
  "build": "tsc -b",\
  "start": "node dist/index.js",' package.json

#Create a basic express server
cd src
cat  <<EOF >> index.ts
import express from "express";

const app = express();
const port = 3000;

app.get("/", (req, res) => {
	res.send("Hello World");
});

app.listen(port, () => {
	console.log(\`listining on port \${port}\`);
});
EOF

echo "Express app created successfully!"
