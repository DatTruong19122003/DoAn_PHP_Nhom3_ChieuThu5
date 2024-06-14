/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./**/*.{html,js,php}"],
  theme: {
    extend: {
      colors: {
        primary: {
          light: '#fffaed',
          DEFAULT: '#ffc800',
          //dark: '',
        },
        secondary: {
          //light: '',
          DEFAULT: '#083156',
          //dark: '',
        },
        tertiary: {
          DEFAULT: '#ed823a',
        },
      },
      fontFamily: {
        sans: ['Roboto', 'Arial', 'sans-serif'],
        primary_Medium: ['Finador-Medium', 'Arial', 'sans-serif'],
        primary_Bold: ['Finador-Bold', 'Arial', 'sans-serif'],
        primary_Regular: ['Finador-Regular', 'Arial', 'sans-serif'],
        primary_DEFAULT: ['Finador-Regular', 'Arial', 'sans-serif'],
        primary_Light: ['Finador-Light', 'Arial', 'sans-serif'],
        primary_ExtraLight: ['Finador-ExtraLight', 'Arial', 'sans-serif'],
        primary_Thin: ['Finador-Thin', 'Arial', 'sans-serif'],
        primary_Black: ['Finador-Black', 'Arial', 'sans-serif'],
        primary_Heavy: ['Finador-Heavy', 'Arial', 'sans-serif'],
        primary_quicksand: ['Quicksand', 'Arial', 'sans-serif'],
      },
    },
  },
  plugins: [],
}

