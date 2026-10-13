const { app, BrowserWindow, ipcMain, Notification } = require('electron');
const path = require('path');

function createWindow() {
  const win = new BrowserWindow({
    width: 1280,
    height: 840,
    minWidth: 1000,
    minHeight: 650,
    titleBarStyle: 'hidden',
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      contextIsolation: true,
      nodeIntegration: false
    }
  });

  const devUrl = 'http://localhost:5173';
  win.loadURL(devUrl).catch(() => {
    win.loadFile(path.join(__dirname, '../dist/index.html'));
  });
}

app.whenReady().then(() => {
  createWindow();

  ipcMain.on('notify-indexing-complete', (event, filename) => {
    new Notification({
      title: 'DocuQuery AI: Document Indexed',
      body: `${filename} has been chunked and indexed into Neon pgvector.`
    }).show();
  });

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});
