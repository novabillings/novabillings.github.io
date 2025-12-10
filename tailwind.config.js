module.exports = {
  content: [
    './layouts/**/*.html',
    './content/**/*.{html,md}',
  ],
  theme: {
    extend: {
      colors: {
        'theatre-purple': '#7B2CBF',
        'theatre-gold': '#D4AF37',
        'theatre-navy': '#1E293B',
      },
      fontFamily: {
        'display': ['Georgia', 'serif'],
        'sans': ['system-ui', '-apple-system', 'sans-serif'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
