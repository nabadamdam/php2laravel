function proveraSubscribe(){
    var email = document.getElementById("emailSub").value;
    var reEmail = /^\b[\w.-]+@[\w.-]+(\.[\w.-]+)*\.[A-Za-z]{2,4}\b$/;
    var greske = [];
    if(!reEmail.test(email)){
        greske.push(email);
        document.getElementById("errorEmail3").innerHTML ="You didn't enter a email well! </br></br>";
        document.getElementById("errorEmail3").style.color = "red";
    }else{
        document.getElementById("emailSub").style.border ="1px solid green";
        document.getElementById("errorEmail3").innerHTML= "";
    }
    if(greske.length == 0){
        return true;
    }else{
        return false;
    }
}