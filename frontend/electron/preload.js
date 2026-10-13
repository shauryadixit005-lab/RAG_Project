/**
 * Electron Desktop Preload Process (Secure IPC Bridge)
 * 
 * Lead Author: Rajveer Singh Ranawat (rajveersinghranawat351-source)
 * Module: Modern UI & Electron Desktop Architecture
 */

const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('electronAPI', {
  appVersion: '1.0.0',
  platform: process.platform,
  onStreamChunk: (callback) => ipcRenderer.on('stream-chunk', (_event, value) => callback(value)),
  sendChatQuery: (queryData) => ipcRenderer.send('chat-query', queryData)
});
