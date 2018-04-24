var elem = document.getElementById("question_qtype");
elem.onchange = function(){console.log()
    var hiddenDiv1 = document.getElementById("opt1");
    hiddenDiv1.style.display = (this.value == "T/F") ? "none":"block";
    var hiddenDiv2 = document.getElementById("opt2");
    hiddenDiv2.style.display = (this.value == "T/F") ? "none":"block";
    var hiddenDiv3 = document.getElementById("opt3");
    hiddenDiv3.style.display = (this.value == "T/F") ? "none":"block";
    var hiddenDiv4 = document.getElementById("opt4");
    hiddenDiv4.style.display = (this.value == "T/F") ? "none":"block";
    var r1 = document.getElementById("typetf");
    r1.style.display = (this.value == "T/F") ? "block":"none";
    var r2 = document.getElementById("typemcq");
    r2.style.display = (this.value == "T/F") ? "none":"block";
};

//function myFunction() {
//    var x1 = document.getElementById("opt1");
//    if (x1.style.display === "none") {
//        x1.style.display = "block";
//    } else {
//        x1.style.display = "none";
//    }
    
//    var x2 = document.getElementById("opt2");
//    if (x2.style.display === "none") {
//        x2.style.display = "block";
//    } else {
//        x2.style.display = "none";
//    }
    
//    var x3 = document.getElementById("opt3");
//    if (x3.style.display === "none") {
//        x3.style.display = "block";
//    } else {
//        x3.style.display = "none";
//    }
//    
//    var x4 = document.getElementById("opt4");
//    if (x4.style.display === "none") {
//        x4.style.display = "block";
//    } else {
//        x4.style.display = "none";
//    }
//}