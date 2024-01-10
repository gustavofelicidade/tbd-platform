import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    open: false,
    host: '0.0.0.0',
    port: 4173,
    strictPort: true,
    fs: {
      strict: true,
    },
  },
  build: {
    outDir: 'dist',
    emptyOutDir: true,
  },
});