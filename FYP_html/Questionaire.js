/* validation of multiple choice questions */
function answer(){
	   var Girl = document.getElementById("Question1").getElementById("girl");
       var Boy = document.getElementById("Question1").getElementById("boy");
	   var Yes = document.getElementById("Question2").getElementById("yes");
	   var No = document.getElementById("Question2").getElementById("no");
	   var Easy = document.getElementById("Question3").getElementById("easy");
	   var Difficult = document.getElementById("Question3").getElementById("difficult");
	   var Colorful = document.getElementById("Question4").getElementById("colorful");
	   var Uncolorful = document.getElementById("Question4").getElementById("uncolorful");
	   var Good = document.getElementById("Question5").getElementById("good");
	   var Bad = document.getElementById("Question5").getElementById("bad");
	   
	   
	   
	 if((Girl.checked ==false) && (Boy.checked ==false)){
        alert("You must choose one gender");
     }

	 if((Yes.checked == false) && (No.checked == false)){
	    alert("You must choose one option");
	 } 
	 
	 if((Easy.checked == false) && (Difficult.checked == false)){
	    alert("You must choose one option");
	 }

	 if{((Colorful.checked == false) && (Uncolorful.checked == false))
	    alert("You must choose one option");
	 }
	 
	 if((Good.checked == false) && (Bad.checked == false)){
	    alert("You must choose one option");
	 }

}	 


	 
	 
	   
     
     
	   
      
   	   
	   
	 
	 
     