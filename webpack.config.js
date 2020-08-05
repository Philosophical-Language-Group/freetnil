const path = require('path');

module.exports = {
    mode: "development",
    output: {
        path: path.resolve(__dirname, "dist"),
        filename: "bundle.js",
        publicPath: "/assets/"
    },
    module: {
        rules: [
            {
                test: /\.css$/i,
                use: [
                    'style-loader',
                    'css-loader'
                ]
            },
            {
                test: /\.svg$/,
                loader: 'svg-inline-loader?removingSVGTagAttrs=true',
            },
            {
                test: /\.(png|jpg|gif)$/,
                use: [
                    'file-loader',
                ]
            }
        ]
    }
};
