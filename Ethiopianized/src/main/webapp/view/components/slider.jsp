<head>
<jsp:include page="./header.jsp"></jsp:include>
</head>

<div class="slider center">
  <div class="slider-div"><img src="/images/DRESS1.jpg" class="slider-picture" alt="dress1"><br ></div>
  <div class="slider-div"><img src="/images/DRESS2.jpg" class="slider-picture" alt="dress2"></div>
  <div class="slider-div"><img src="/images/DRESS3.jpg" class="slider-picture" alt="dress3"></div>
  <div class="slider-div"><img src="/images/DRESS1.jpg" class="slider-picture" alt="dress1"></div>
  <div class="slider-div"><img src="/images/DRESS2.jpg" class="slider-picture" alt="dress2"></div>
</div>
  
<div class="pricecontainer" >
<img id="pricelog" src="/images/top.png">
<div id="price-content">
	<img src="/images/bottom.png">
	 <div class="info">
	    <form action="">
		<p id="dress-color"></p>
		<p id="dress-pid"></p>
		<p id ="dress-Pname"></p>
		<p id ="dress-avelable"></p>
		<p id ="dress-size"></p>
		<p id ="dress-price"><p>
        <input type="button" id ="addto" value="Add To "/> 
		</form>
	</div>
	
</div>
 
</div>
   


<script>
$('.center').slick({
	  centerMode: true,
	  centerPadding: '60px',
	  slidesToShow: 3,
	  focusOnSelect: true,
	  arrows: false,
	  infinite:true,
	  responsive: [
	    {
	      breakpoint: 768,
	      settings: {
	        arrows: false,
	        centerMode: true,
	        centerPadding: '40px',
	        slidesToShow: 3,
	        dots:false ,
	  
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
	        arrows: false,
	        centerMode: true,
	        centerPadding: '40px',
	        slidesToShow: 1
	      }
	    }
	  ]
	});
	

$(".slider-picture").click(function(e) {
	var imagNmae = e.target.src;
	var image = imagNmae.replace("http://localhost:8081/images/","")
	  //Create onclick method with jquery on slider div
	  
	  $.get({
		  url: "http://localhost:8081/api/images/" + image
	  }).then(function(response){
		  
		  var dress = response[0];
		  
		  $("#dress-color").text(dress.color);
		  $("#dress-pid").text(dress.pid);
		  $("#dress-Pname").text(dress.pname);
		  $("#dress-size").text(dress.size);
		  $("#dress-price").text(dress.price);
		  $("#dress-avelable").text(dress.avelable);
		  
		  
		  $("#price-content").animate({top: "-320px"}, 100).animate({top: "-15px"}, 350);
		  
		  
	  })
	});
	
	
	
	                                       //using e argument in on click method, retrive image name by getting it from src attribute
	//after getting image name, trim out the /images/ part 
	//create ajax get request to java get url
	//send image name in to for java to findByImage
	//update dom and display information retrieved from database	

</script>


 <style>
#pricelog{
    width: 25%;
    height: auto;
    max-height: 350px;
    position: relative;
    z-index: 1;
    background: #fff;
   
}
.info
{
    position: absolute;
    top: 20px;
    left: 50%;
    transform: translateX(-50%);
 
}

#price-content {
	position: relative;
	top: -310px;	
}

#price-content img{
	width: 25%;
	height: auto;
	max-height: 350px;
}

.pricecontainer {
	overflow: hidden;
}

#addto
{
width:125px;
background-color: transparent;
box-shadow: none;
background-image: url("/images/basket.png");
background-size: 28px;
background-repeat: no-repeat;
background-color: #381706;
background-position: 90% 10%;
color: #D6CCB6;

}

.slick-active
{
outline:none;

}
.slider-picture {
box-shadow: 0px 0px 12px 9px rgba(75,42,25,0.45); 

}

.slick-list
{
 padding: 40px 60px !important;
}
</style>





















