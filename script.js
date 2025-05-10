function validate(){
var a=document.getElementById('name').value;
var b=document.getElementById('password').value;
if(a=="arunass" && b=="Arunass@2003"){
    window.location.href = "data_ware_house_home.php";
}
else{
    alert("incorrect details");
}
}