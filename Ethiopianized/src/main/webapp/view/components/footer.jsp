


<div>
<form>

  <label for="Mname"> </label>
    <input type="text" id ="Mname" class ="cmessage" placeholder="Name...."/>
    
   <label for="email">  </label>
     <input type ="text" id="email" class ="cmessage" placeholder="Email Address..."/> 
     
   <label for="subject"></label>
     <input type ="text" id="subject" class ="cmessage" placeholder="Subject..."/> <br>
     
    <textarea placeholder="write us a brife massage and we will get back to you  ... " rows=6></textarea> <br>
 
   <input type ="submit" value=" Send" id="submitm"/>

</form> 

</div>
<br>
<div >
 <img src="/images/facebook.png" id="social">
 <img src="/images/inst.png" id="social">
 <img src="/images/link.png" id="social">
 <img src="/images/whats.png" id="social">
 <img src="/images/snap.png" id="social">

</div>


<style>

.cmessage{
    width: 15%;
    margin: 5px 0;
    border: 0px solid #CCB3AE;
    padding: 5px;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.22);
}

textarea {
   width: 47%;
   margin: 5px 0;
   border: 0px solid #CCB3AE;
   padding: 5px;
   box-shadow: 0px 0px 15px rgba(0,0,0,0.22);
   resize: none;
   font-family: 'Shadows Into Light', cursive;
}

textarea:focus {
	border: 3px solid #CCB3AE;
	outline: none;
}

#submitm {
width: 48%;
}

#social{
width:40px;
}


</style>