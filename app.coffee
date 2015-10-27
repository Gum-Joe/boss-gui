# require
{spawn} = require 'child_process'

setup = (root) ->
  # body...
app = require('app')
# Module to control application life.
BrowserWindow = require('browser-window')
# Module to create native browser window.
# Report crashes to our server.
require('crash-reporter').start()
# Keep a global reference of the window object, if you don't, the window will
# be closed automatically when the JavaScript object is garbage collected.
mainWindow = null
# Quit when all windows are closed.
app.on 'window-all-closed', ->
  # On OS X it is common for applications and their menu bar
  # to stay active until the user quits explicitly with Cmd + Q
  if process.platform != 'darwin'
    app.quit()
  return
# This method will be called when Electron has finished
# initialization and is ready to create browser windows.
app.on 'ready', ->
  # Create the browser window.
  mainWindow = new BrowserWindow(
    width: 1152
    height: 685)
  # and load the index.html of the app.
  mainWindow.loadUrl 'http://localhost:8080/dashboard/?user=Admin'
  # Open the DevTools.
  # mainWindow.webContents.openDevTools()
  # setup



  # Emitted when the window is closed.
  mainWindow.on 'closed', ->
    # Dereference the window object, usually you would store windows
    # in an array if your app supports multi windows, this is the time
    # when you should delete the corresponding element.
    mainWindow = null
    return
  return
