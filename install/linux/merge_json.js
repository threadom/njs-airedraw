#!/usr/bin/env node

const fs = require('fs');

// Récupération des noms de fichier en argument
const file1 = process.argv[2];
const file2 = process.argv[3];

// Lecture des fichiers JSON
const data1 = JSON.parse(fs.readFileSync(file1, 'utf8'));
const data2 = JSON.parse(fs.readFileSync(file2, 'utf8'));

// Fusion des objets JSON
const mergedData = { ...data1, ...data2 };

// Écriture du fichier fusionné
fs.writeFileSync(file1, JSON.stringify(mergedData, null, 2));
