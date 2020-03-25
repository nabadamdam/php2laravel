$(document).ready(function(){


    document.getElementById("formUser").style.display ="none";
    document.getElementById("formUserPass").style.display ="none";
    //Start Delete For Subscribe
    $(document).on('click','#showResetP', function(){
    document.getElementById("formLogIn").style.display ="none";
    document.getElementById("formUser").style.display ="block";
    });
    $(document).on('click','#showLogIn', function(){
    document.getElementById("formLogIn").style.display ="block";
    document.getElementById("formUser").style.display ="none";
    document.getElementById("formUserPass").style.display ="none";
    });
    $(document).on('click','#usernameCheck', function(){
    var valueUsername = document.getElementById("username").value;
    if(valueUsername == ""){
        $("#messageError").html("Field is required!");
    }else{
        $.ajax({
            url: "/login/username/" + valueUsername,
            method: "GET",
            success: function(data){
                if(data.message != "Not exist in base!"){
                    document.getElementById("formUserPass").style.display ="block";   
                    document.getElementById("formUser").style.display ="none"; 
                    for(var p of data['message']){
                        document.getElementById("idUser").value = p.idKorisnika;
                    }
                    
                }else{
                    $("#messageError").html("Not exist in base!");   
                }
            },
            error: function(xhr,status,msg){
                alert(xhr);
            }
        })
    }
    
    });
    $(document).on('click','#resetPassword', function(){
    var password = document.getElementById("pass").value;
    var repassword = document.getElementById("repass").value;
    var id = document.getElementById("idUser").value;
    if(password == "" || repassword == ""){
        $("#messageErrorPassword").html("These fields must not be blank!");
    }else{
        if(password != repassword){
            $("#messageErrorPassword").html("These fields must be the same!");
        }else{
            var reSifra = /^[a-z]{4,16}[\d]+$/;
            if(!reSifra.test(password)){
                $("#messageErrorPassword").html("The password is not entered in good format");
            }else{
                $.ajax({
                    url: "/login/password/{resetPassword}/{idUser}",
                    method: "GET",
                    data:{
                        resetPassword : password,
                        idUser : id
                    },
                    success: function(data){
                        if(data['message'] == "Successfuly update password!"){
                            window.location.href = "/";
                        }else{
                            console.log(data['message']);
                        }

                    },
                    error: function(xhr,status,msg){
                        alert(xhr);
                    }
                })
            }
        }
    }

    });
})