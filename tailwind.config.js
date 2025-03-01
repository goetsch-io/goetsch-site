/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./themes/custom/layouts/**/*.html",
    "./content/**/*.{html,md}"
  ],
  purge: { 
    enabled: process.env.NODE_ENV === 'production',
    content: [
      "./layouts/**/*.html",
      "./themes/custom/layouts/**/*.html",
      "./content/**/*.{html,md}"
    ],
  },
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
