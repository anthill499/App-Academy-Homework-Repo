const path = require('path');           // current path: module that allows u to work w/ file path

module.exports = {                      // exports
    context: __dirname,                 // context: ???
    entry: "./app.jsx",               // jsx file => react file
    output: {                           // target for webpack, webpack => transforms js into another js.
        path: path.resolve(__dirname),  // webpack => any js => vanilla js
        filename: "bundle.js"           
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['@babel/env', '@babel/react']
                    }
                },
            }
        ]
    },
    devtool: 'source-map',
    resolve: {
        extensions: [".js", ".jsx", "*"]
    }
};
