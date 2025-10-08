-- 

-- module Main where
-- import Network.Wai
-- import Network.Wai.Handler.Warp (run)
-- import Network.Wai.Handler.WebSockets (websocketsOr)
-- import Network.WebSockets
-- import Control.Monad (forever)
-- import Control.Exception (finally)
-- import System.IO
-- import Data.Time (getCurrentTime, formatTime, defaultTimeLocale)
-- import qualified Data.Text as T
-- import qualified Data.Text.Encoding as TE
-- import qualified Data.ByteString.Lazy as LBS
-- import System.Directory (doesFileExist)
-- import Network.HTTP.Types (status200, hContentType)
-- import Network.HTTP.Types (status404, hContentType)

-- import Data.ByteString.Lazy.Char8 (pack)
-- import qualified Data.ByteString.Char8 as BS
-- hello :: Application
-- hello _req send  =
--     send $ responseBuilder status200 [] "Hello!"

-- loggedHello :: Application
-- loggedHello = logStdout hello

-- main :: IO()
-- main = run 8000 loggedHello








module Main where

import Network.Wai
import Network.Wai.Handler.Warp (run)
import Network.Wai.Handler.WebSockets (websocketsOr)
import Network.WebSockets
import Control.Monad (forever)
import Control.Exception (finally)
import System.IO
import Data.Time (getCurrentTime, formatTime, defaultTimeLocale)
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import qualified Data.ByteString.Lazy as LBS
import System.Directory (doesFileExist)
import Network.HTTP.Types (status200, hContentType)
import Network.HTTP.Types (status404, hContentType)

import Data.ByteString.Lazy.Char8 (pack)
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
    putStrLn "WebSocket server running on ws://localhost:11111/"
    putStrLn "Open http://localhost:11111/ in your browser to test WebSocket connection"
    
    -- Проверяем существование файла при запуске
    fileExists <- doesFileExist "websocket.log"
    if fileExists
        then putStrLn "Appending to existing log file: websocket.log"
        else putStrLn "Creating new log file: websocket.log"
    
    run 11111 app  -- Изменен порт на 11111


app :: Application
app request respond

    | pathInfo request == [T.pack "ws"] = websocketsOr defaultConnectionOptions wsApp plainApp request respond
    | pathInfo request == [T.pack "wsinfo"] = websocketsOr defaultConnectionOptions wsInfoApp plainApp request respond
    | pathInfo request == [] = serveHtmlPage request respond
    | pathInfo request == [T.pack "custom"] = cstmApp request respond
    | pathInfo request == [T.pack "help"] = helpApp request respond
    | otherwise = plainApp request respond
  where
    cstmApp :: Application
    cstmApp _ respond = respond $ 
        responseLBS status404 [(hContentType, BS.pack "text/plain")] 
        (pack "CUSTOM ROUTE")
    
    plainApp :: Application
    plainApp _ respond = respond $ 
        responseLBS status404 [(hContentType, BS.pack "text/plain")] 
        (pack "404 - Not Found")
    
    serveHtmlPage :: Application
    serveHtmlPage _ respond = respond $
        responseLBS status200 [(hContentType, BS.pack "text/html")] htmlContent

    helpApp :: Application
    helpApp _ respond = respond $
        responseLBS status200 [(hContentType, BS.pack "text/html")] htmlHelp

  
htmlHelp :: LBS.ByteString
htmlHelp = pack $ unlines [
 "<h1>GUI</h1>",
            " Microsoft Office ( Excel, Word, PowerPoint, Outlook): ",
  
            " (File:: Account).",
            "В(Product Information) ",
            "(Product Activated) ",
            "(Product Activation Required) <br>",
 
            "<h1>PS (PowerShell)</h1>",

            "PS=> \"C:\\Program Files\\Microsoft Office\\Office16.\"<br>",
            "ENFORCE EXECUTION::            Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser",
            "COMMAND:              ./vnextdiag.ps1 -action list <br>",

            "<h1>SCRIPT ospp.vbs</h1>    ",

            "CMD:: <br>",
            "=> \"C:\\Program Files (x86)\\Microsoft Office\\Office16\", X64:: \"C:\\Program Files\\Microsoft Office\\Office16.\"<br>",
            "COMMAND: cscript ospp.vbs /dstatus<br>",
 
          
            " LICENSE STATUS:: LICENSED , KMS machine name:: NAME KMS-server, REMAINING GRACE:: rest time "]




       
htmlContent :: LBS.ByteString
htmlContent = pack $ unlines [
    "<!DOCTYPE html>",
    "<html>",
    "<head>",
    "    <title>WebSocket Test Client</title>",
    "    <style>",
    "        body { font-family: Arial, sans-serif; margin: 40px; }",
    "        #messages { border: 1px solid #ccc; height: 300px; overflow-y: scroll; padding: 10px; margin: 10px 0; }",
    "        .message { margin: 5px 0; }",
    "        .sent { color: blue; }",
    "        .received { color: green; }",
    "        .system { color: gray; }",
    "    </style>",
    "</head>",
    "<body>",
    "    <h1>WebSocket Test Client</h1>",
    "    <button onclick=\"connect()\">Connect</button>",
    "    <button onclick=\"disconnect()\">Disconnect</button>",
    "    <br>",
    "    <input type=\"text\" id=\"messageInput\" placeholder=\"Type message...\">",
    "    <button onclick=\"sendMessage()\">Send</button>",
    "    <div id=\"messages\"></div>",
    "    <script>",
    "        let ws = null;",
    "        const messagesDiv = document.getElementById('messages');",
    "        const messageInput = document.getElementById('messageInput');",
    "",
    "        function addMessage(text, className) {",
    "            const messageDiv = document.createElement('div');",
    "            messageDiv.className = 'message ' + className;",
    "            messageDiv.textContent = text;",
    "            messagesDiv.appendChild(messageDiv);",
    "            messagesDiv.scrollTop = messagesDiv.scrollHeight;",
    "        }",
    "",
    "        function connect() {",
    "            if (ws && ws.readyState === WebSocket.OPEN) {",
    "                addMessage('Already connected', 'system');",
    "                return;",
    "            }",
    "            ",
    "            ws = new WebSocket('ws://' + window.location.host + '/ws');",
    "            ",
    "            ws.onopen = function() {",
    "                addMessage('Connected to WebSocket server', 'system');",
    "            };",
    "            ",
    "            ws.onmessage = function(event) {",
    "                addMessage('Received: ' + event.data, 'received');",
    "            };",
    "            ",
    "            ws.onclose = function() {",
    "                addMessage('Disconnected from server', 'system');",
    "            };",
    "            ",
    "            ws.onerror = function(error) {",
    "                addMessage('WebSocket error: ' + error, 'system');",
    "            };",
    "        }",
    "",
    "        function disconnect() {",
    "            if (ws) {",
    "                ws.close();",
    "                ws = null;",
    "                addMessage('Disconnected', 'system');",
    "            }",
    "        }",
    "",
    "        function sendMessage() {",
    "            if (!ws || ws.readyState !== WebSocket.OPEN) {",
    "                addMessage('Not connected to server', 'system');",
    "                return;",
    "            }",
    "            ",
    "            const message = messageInput.value;",
    "            if (message) {",
    "                ws.send(message);",
    "                addMessage('Sent: ' + message, 'sent');",
    "                messageInput.value = '';",
    "            }",
    "        }",
    "",
    "        // Send message on Enter key",
    "        messageInput.addEventListener('keypress', function(e) {",
    "            if (e.key === 'Enter') {",
    "                sendMessage();",
    "            }",
    "        });",
    "",
    "        // Auto-connect on page load",
    "        window.onload = connect;",
    "    </script>",
    "</body>",
    "</html>"
    ]


wsInfoApp :: ServerApp
wsInfoApp pending = do
    connection <- acceptRequest pending
    putStrLn "New WebSocket connection accepted"
    
    -- Открываем файл для записи
    handle <- openFile "wsInfoApp.log" AppendMode
    hSetBuffering handle LineBuffering
    
    --logMessage handle "CONNECTION ESTABLISHED"
    
    -- Отправляем приветственное сообщение клиенту
    sendTextData connection (T.pack "Welcome to WebSocket server!")
    
    -- Обрабатываем сообщения
    processMessages connection handle `finally` hClose handle

wsApp :: ServerApp
wsApp pending = do
    connection <- acceptRequest pending
    putStrLn "New WebSocket connection accepted"
    
    -- Открываем файл для записи
    handle <- openFile "websocket.log" AppendMode
    hSetBuffering handle LineBuffering
    
    --logMessage handle "CONNECTION ESTABLISHED"
    
    -- Отправляем приветственное сообщение клиенту
    sendTextData connection (T.pack "Welcome to WebSocket server!")
    
    -- Обрабатываем сообщения
    processMessages connection handle `finally` hClose handle

processMessages :: Connection -> Handle -> IO ()
processMessages conn handle = forever $ do
    message <- receiveDataMessage conn
    case message of
        (Text textData _) -> do
            -- Конвертируем ленивый ByteString в строгий, затем декодируем
            let strictBS = LBS.toStrict textData
            let messageText = T.unpack (TE.decodeUtf8 strictBS)
            putStrLn $ "Received: " ++ messageText
            logMessage handle $ "TEXT: " ++ messageText
            
            -- Отправляем эхо-ответ
          --  let response = "Echo: " ++ messageText
          --  sendTextData conn (T.pack response)
            
        (Binary binaryData) -> do
            putStrLn "Received binary data"
            logMessage handle "BINARY_DATA_RECEIVED"

logMessage :: Handle -> String -> IO ()
logMessage handle message = do
    currentTime <- getCurrentTime
    let timeStr = formatTime defaultTimeLocale "%Y-%m-%d %H:%M:%S" currentTime
    hPutStrLn handle $ "[" ++ timeStr ++ "] " ++ message



