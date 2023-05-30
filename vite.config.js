// vite.config.js

import { defineConfig } from "vite";
import createReScriptPlugin from "@jihchi/vite-plugin-rescript";
import { resolve } from "node:path";

export default defineConfig({
  plugins: [
    createReScriptPlugin({
      loader: {
        output: resolve(__dirname),
      },
    }),
  ],
  build: {
    lib: {
      entry: 'src/Main.res'
    }
  }
});
