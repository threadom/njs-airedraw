const path = require("path");

module.exports = {
  // Configuration de l'entry point de votre projet
  entry: "./src/index.ts",
  // Configuration de la sortie
  output: {
    // Le nom du fichier de sortie
    filename: "app.js",
    // Le répertoire où le fichier de sortie sera généré
    path: path.resolve(__dirname, "public/scripts")
  },
  module: {
    rules: [
      // Configuration des loaders pour TypeScript
      {
        test: /\.ts$/,
        use: "ts-loader",
        exclude: /node_modules/
      },
      // Configuration des loaders pour Sass
      {
        test: /\.scss$/,
        use: [
          "style-loader",
          "css-loader",
          "sass-loader"
        ],
        include: path.resolve(__dirname, "src/sass"),
        exclude: /node_modules/
      },
      // Configuration des loaders pour EJS
      {
        test: /\.ejs$/,
        use: [
          "ejs-loader"
        ],
        include: path.resolve(__dirname, "src/ejs"),
        exclude: /node_modules/
      }
    ]
  },
  // Configuration de la résolution des modules
  resolve: {
    extensions: [".ts", ".js"]
  }
};


module.exports = {

}