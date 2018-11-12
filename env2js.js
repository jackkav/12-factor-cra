#!/usr/bin/env node
const fs = require("fs");
require("dotenv").config();
let config=Object.entries(process.env).filter(x => x[0].includes("REACT_APP_")).map(x => `window.${x[0]}="${x[1]}";`).join("\n")
console.log(config)
fs.writeFileSync('./build/config.js', config)