/** @type {import('tailwindcss').Config} */

module.exports = {
    content: ["./docs/**/*.{html,js}"],
    theme: {
        extend: {
            backgroundImage: {
                'cards-dualpets': "url('img/mr-business-blur-crop.webp')",
                'cards-snipandshear': "url('img/snip-and-shear.webp')",
                'cards-debugger': "url('img/debugger.webp')"
            },
            colors: {
                'theme-dark': '#32272F',
                'theme-light': '#D8D6D2'
              },        
        },
    },
    plugins: [],
}