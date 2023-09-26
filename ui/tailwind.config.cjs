const { skeleton } = require('@skeletonlabs/tw-plugin');

module.exports = {
  darkmode: true,
  content: [
    "./index.html",
    "./src/**/*.{svelte,js,ts,jsx,tsx}",
    require('path').join(require.resolve(
			'@skeletonlabs/skeleton'),
			'../**/*.{html,js,svelte,ts}'
		),
  ],
  theme: {
  },
  plugins: [
    skeleton({
      themes: { preset: [ "skeleton" ] }
    })
  ],
}