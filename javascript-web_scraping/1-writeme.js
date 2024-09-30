#!/usr/bin/node

const fs = require('fs');

// Get file path and data from command line arguments
const filePath = process.argv[2];
const data = process.argv[3];

// Write the data to the file in UTF-8 encoding
fs.writeFile(filePath, data, 'utf8', (err) => {
  if (err) {
    console.log(err); // Print the error if it occurs
  } else {
    // Read the content of the file and print it
    fs.readFile(filePath, 'utf8', (err, content) => {
      if (err) {
        console.log(err); // Print any error that occurs while reading
      } else {
        console.log(`Correct output - text: "${content}"`); // Print the content
      }
    });
  }
});
