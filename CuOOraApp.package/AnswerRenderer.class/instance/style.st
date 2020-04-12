hooks
style 
    ^ 'body {
	margin:0;
    color: #222;
    font-size: 110%;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
header {
	 height: 5vh;
	 padding: 5px;
	 border-bottom: 2px solid black;
	 background-color: cornflowerblue;
	 color: white;
	 display: flex;
    justify-content: space-between;
    align-items: center;
}
h1 {
    color: #111;
    font-size: 2em;
    font-weight: normal;
    margin-bottom: 0.5em;
}
#content {
	height: 84.9vh;
	padding: 10px;
}
#agregar { 
    display: flex;
    cursor: pointer;
    margin-top: 10px;
}
#agregar span {
	 background-color: lightpink;
    border-radius: 10px;
    width: 20px;
    font-size: 22px;
    height: 20px;
    display: flex;
    justify-content: center;
    align-items: center; }
form { padding: 5px;}
footer {
	height: 2.5vh;
	border-top: 2px solid black;
	padding: 5px;
	color: white;
	background-color: cornflowerblue;
}'