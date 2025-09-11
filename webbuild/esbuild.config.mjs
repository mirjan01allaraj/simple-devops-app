import { build } from 'esbuild';

await build({
  entryPoints: ['src/main.js'],
  outfile: '../app/public/assets/bundle.js',
  bundle: true,
  minify: true
});
