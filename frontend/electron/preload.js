const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('electronAPI', {
  notifyIndexingComplete: (filename) => ipcRenderer.send('notify-indexing-complete', filename),
  isDesktop: true
});
