<!--  Slick Slider Css -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="./css/slider.css"/>






<!-- Slick Slider JS -->
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
				


<div class="slider center">
  <div class="slider-div"><img src="/images/DRESS1.jpg" class="slider-picture" alt="dress1"></div>
  <div class="slider-div"><img src="/images/DRESS2.jpg" class="slider-picture" alt="dress2"></div>
  <div class="slider-div"><img src="/images/DRESS3.jpg" class="slider-picture" alt="dress3"></div>
  <div class="slider-div"><img src="/images/DRESS1.jpg" class="slider-picture" alt="dress1"></div>
  <div class="slider-div"><img src="/images/DRESS2.jpg" class="slider-picture" alt="dress2"></div>
</div>
  
 
   


<script>
$('.center').slick({
	  centerMode: true,
	  centerPadding: '60px',
	  slidesToShow: 3,
	  focusOnSelect: true,
	  arrows: false,
	  dotsClass:'slick-dots',
	  infinite:true,
	  responsive: [
	    {
	      breakpoint: 768,
	      settings: {
	        arrows: false,
	        centerMode: true,
	        centerPadding: '40px',
	        slidesToShow: 3,
	        dots: true,
	  
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
</script>