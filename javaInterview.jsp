<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AI Java Interview Coach</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI,Arial,sans-serif;
}

body{
    background:#202123;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:95%;
    max-width:1100px;
    height:95vh;
    background:#343541;
    border-radius:15px;
    overflow:hidden;
    display:flex;
    flex-direction:column;
    box-shadow:0 10px 40px rgba(0,0,0,.35);
}

.header{
    padding:18px;
    background:#202123;
    color:white;
    text-align:center;
    font-size:22px;
    font-weight:bold;
}

.chat-area{
    flex:1;
    overflow-y:auto;
    padding:20px;
}

.message{
    max-width:75%;
    padding:15px;
    margin-bottom:18px;
    border-radius:12px;
    line-height:1.6;
    word-wrap:break-word;
}

.user{
    background:#19c37d;
    color:white;
    margin-left:auto;
}

.bot{
    background:#444654;
    color:white;
}

.typing{
    display:none;
    color:#cccccc;
    margin:10px;
    font-style:italic;
}

.input-area{

    background:#40414f;
    padding:15px;
    display:flex;
    align-items:center;
    gap:10px;
}

.icon-btn{

    width:45px;
    height:45px;
    border-radius:50%;
    border:none;
    cursor:pointer;
    background:#565869;
    color:white;
    font-size:22px;
}

.icon-btn:hover{
    background:#19c37d;
}

input[type=text]{

    flex:1;
    padding:14px;
    border:none;
    outline:none;
    border-radius:30px;
    font-size:16px;
}

.send-btn{

    width:50px;
    height:50px;
    border:none;
    border-radius:50%;
    cursor:pointer;
    background:#19c37d;
    color:white;
    font-size:20px;
}

.send-btn:hover{
    transform:scale(1.05);
}

</style>

</head>

<body>

<div class="container">

    <div class="header">
        🤖 AI Java Interview Coach
    </div>

    <div class="chat-area" id="chat">

        <div class="message bot">
            👋 Welcome! I'm your AI Java Interview Coach.<br><br>
            Ask me anything about:
            <br>✔ Core Java
            <br>✔ Collections
            <br>✔ JDBC
            <br>✔ Servlets
            <br>✔ JSP
            <br>✔ Spring & Spring Boot
            <br>✔ SQL
            <br>✔ Interview Programs
        </div>

    </div>

    <div class="typing" id="typing">
        AI is typing...
    </div>

    <div class="input-area">

        <label for="fileInput">
            <button class="icon-btn" type="button">+</button>
        </label>

        <input
            type="file"
            id="fileInput"
            hidden
            multiple>

        <input
            type="text"
            id="message"
            placeholder="Ask your interview question...">

        <button
            class="icon-btn"
            id="micBtn"
            title="Voice Input">
            🎤
        </button>

        <button
            class="send-btn"
            onclick="sendMessage()">
            ➤
        </button>

    </div>

</div>

<script>

const chat=document.getElementById("chat");
const input=document.getElementById("message");
const typing=document.getElementById("typing");

function addMessage(text,type){

    const div=document.createElement("div");
    div.className="message "+type;
    div.innerHTML=text;

    chat.appendChild(div);
    chat.scrollTop=chat.scrollHeight;
}

function sendMessage(){

    const text=input.value.trim();

    if(text==="") return;

    addMessage(text,"user");

    input.value="";

    typing.style.display="block";

    setTimeout(function(){

        typing.style.display="none";

        addMessage(
            "This is a demo response.<br><br>" +
            "Connect this page to your JavaInterviewServlet " +
            "to get real AI-generated interview answers.",
            "bot"
        );

    },1200);

}

input.addEventListener("keypress",function(e){

    if(e.key==="Enter"){
        sendMessage();
    }

});

const SpeechRecognition=
window.SpeechRecognition ||
window.webkitSpeechRecognition;

if(SpeechRecognition){

    const recognition=new SpeechRecognition();

    recognition.lang="en-US";

    document.getElementById("micBtn").onclick=function(){

        recognition.start();

    };

    recognition.onresult=function(event){

        input.value=event.results[0][0].transcript;

    };

}
else{

    document.getElementById("micBtn").style.display="none";

}

document.getElementById("fileInput").addEventListener("change",function(){

    if(this.files.length>0){

        addMessage(
            "📎 Selected: <b>"+this.files[0].name+"</b>",
            "user"
        );

    }

});

</script>

</body>
</html>