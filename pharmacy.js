function validate(){
    var a=document.getElementById('name').value;
    var b=document.getElementById('password').value;
    if(a=="ar_medicines" && b=="Arunass@2003"){
        window.location.href = newFunction();
    }
    else{
        alert("incorrect details");
    }
}

function newFunction() {
    return "pharamacy.php";
}
