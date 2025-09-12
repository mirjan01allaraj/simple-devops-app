import { build } from 'esbuild';

await build({
  entryPoints: ['src/main.js'],
  outfile: 'dist/bundle.js',
  bundle: true,
  minify: true
});
