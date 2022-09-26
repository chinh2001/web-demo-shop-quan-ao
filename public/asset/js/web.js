// sider banner
var swiper = new Swiper(".mySwiper", {
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
    autoplay: {
      delay: 5000,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
  
  // sider trademark
  var swiper2 = new Swiper(".mySwiper-trademark", {
    slidesPerView: 6,
          grid: {
            rows: 1,
          },
          spaceBetween: 30,
          breakpoints: {
          100: {
              slidesPerView: 4,
              grid: {
                rows: 2,
              }
          },
          768: {
              slidesPerView: 5,
          },
          1000: {
            slidesPerView: 6,
          }
          }
  });
  
  
  // slider product home
  
  var swiper3 = new Swiper(".mySwiper-product", {
    slidesPerView: 5,
    spaceBetween: 10,
    loop: true,
    breakpoints: {
      // when window width is <= 499px
      100: {
          slidesPerView: 3,
          spaceBetweenSlides: 10
      },
      // when window width is <= 999px
      768: {
          slidesPerView: 4,
          spaceBetweenSlides: 10
      },
      1000: {
        slidesPerView: 5,
        spaceBetweenSlides: 10
    }
  }
  });
  
  $(".swiper-container").hover(function() {
    (this).swiper.autoplay.stop();
  }, function() {
    (this).swiper.autoplay.start();
  });
  
  // console.log($('#back-to-top').length)
  if ($('#back-to-top').length) {
    var scrollTrigger = 800, backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                    $('#back-to-top').addClass('show');
            } else {
                    $('#back-to-top').removeClass('show');
            }
    };
    backToTop();
    $(window).on('scroll', function () {
            backToTop();
    });
    $('#back-to-top').on('click', function (e) { e.preventDefault(); $('html,body').animate({ scrollTop: 0 }, 40); });
  }
  
  // close and open menu mobile
  const tgmenu = document.getElementById('menu-mobile');
  const toggleIc = document.getElementById('ic-open');
  
  if(tgmenu) {
    $('#m-mobeli').click( function(){
      tgmenu.classList.toggle("active");
      toggleIc.classList.toggle("fa-xmark");
    })
  }
  
  const listSubMenu = document.getElementsByClassName("icon-extend");
  for (let i = 0; i < listSubMenu.length; i++) {
      const item = listSubMenu[i];
      item.addEventListener("click", filterSubMenu);
      function filterSubMenu(){
        const listitem = document.getElementsByClassName("sub-menu-phone");
        listitem[i].classList.toggle('show-sub-menu')
        item.classList.toggle('turn');
      }
  }
  
  // opent search mobile 
  const icSearch = document.getElementById('frames-search');
  const styleClose = document.getElementById('ic-search')
  const icclose = document.getElementById('close-search')
//   console.log(icclose);
  
  if(icSearch) {
    $('#ic-search').click( function(){
      icSearch.classList.toggle("open-search-phone");
      icclose.classList.toggle("fa-magnifying-glass");
      icclose.classList.toggle("fa-circle-xmark");
      styleClose.classList.toggle("style-close");
    })
  }

  // active btn in page product
const btnActive1 = document.getElementById("btn-sort-nam");
const btnActive2 = document.getElementById("btn-sort-nu");

$('#btn-sort-nam').click( function(){
    btnActive1.classList.toggle("active-btn");
    btnActive2.classList.remove("active-btn");
})

$('#btn-sort-nu').click( function(){
    btnActive2.classList.toggle("active-btn");
    btnActive1.classList.remove("active-btn");
})


// ditail page

var swiper = new Swiper(".mySwiper01", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
});
var swiper02 = new Swiper(".mySwiper_detail1", {
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    thumbs: {
        swiper: swiper,
    },
});


// tăng giảm số lượng sp

$('input.input-qty').each(function () {
    var $this = $(this),
        qty = $this.parent().find('.is-form'),
        min = Number($this.attr('min')),
        max = Number($this.attr('max'))
    if (min == 0) {
        var d = 0
    } else d = min
    $(qty).on('click', function () {
        if ($(this).hasClass('minus')) {
            if (d > min) d += -1
        } else if ($(this).hasClass('plus')) {
            var x = Number($this.val()) + 1
            if (x <= max) d += 1
        }
        $this.attr('value', d).val(d)
    })
})


// toggle finter product in mobile
const tgFinterMB = document.getElementById('finter_product');
const iconCloseFMB = document.getElementById('close_f');
const iconOpenFMB = document.getElementById('icon_open_f');

$('#toggle_finter_in_mobile').click( function(){
  tgFinterMB.classList.toggle("toggle_finter_mb");
  iconOpenFMB.classList.toggle("hiddenf");
  iconCloseFMB.classList.toggle("block");
})

// loading web
$(window).on('load', function(event) {
  $('.box-load').delay(200).fadeOut('fast');
});

// cs_navigation

// const listNavigation = document.getElementsByClassName("number_page");
// for (let i = 0; i < listNavigation.length; i++) {
//     const item = listNavigation[i];
//     item.addEventListener("click", filterSubMenu);
//     function filterSubMenu(){
//       listNavigation.classList.remove('navigation_active')
//       item.classList.toggle('navigation_active');
//     }
// }


// sorst in price 
const test = document.querySelectorAll(".price-number");
console.log ("test==", mysql);
