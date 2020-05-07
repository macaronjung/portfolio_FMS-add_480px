<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="user.userDAO"%>
<%@ page import="user.userDTO"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>FMS</title>
<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/mousewheel.css">
<link rel="stylesheet"
  href="https://unpkg.com/swiper/css/swiper.min.css">
<link rel="stylesheet" href="css/video.css" />
<link rel="stylesheet" href="css/side.css">
<link rel="stylesheet" href="css/top.css">
<link rel="stylesheet" href="css/footer.css" />
<link rel="stylesheet" href="JDH/css/media.css" />

<script
  src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js'></script>
<script
  src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
  src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
<script src="JS/index.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.0/SmoothScroll.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="https://achtungthemes.com/gnoli/js/lib/scripts.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script src="JS/topb.js"></script>
<script src="JS/jquery.mousewheel.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  Kakao.init('5468f21991448c6924e156ff42c1f8cc');
  function chatChannel() {
    Kakao.Channel.chat({
      channelPublicId : '_XxixaKxb'
    });
  }
</script>


<style>
@import
  url('https://fonts.googleapis.com/css?family=Do+Hyeon|Khand|Noto+Sans+KR&display=swap')
  ;

* {
  font-family: 'Khand'
}
;
</style>


</head>
<body>

  <%
    String grade = null;
    if (session.getAttribute("User_member") != null) {
      grade = (String) session.getAttribute("User_member");
    }

    String userID = null;
    if (session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");
    }

    if (userID == null) {
  %>
  <header>
    <div class="container">
      <div id="home"
        style="background-image: url(img/logo2.png); background-position: center; background-repeat: no-repeat; background-size: cover; width: 100px; height: 70px; top: -8px; cursor: pointer;"
        onclick="location.href='NewFile.jsp'"></div>
      <div class="box">
        <ul>
          <li><a href="FMS_02_01_FMS.jsp">FMS</a></li>
          <li><a href="FMS_03_01_BandMap.jsp">BAND</a></li>
          <li><a href="store.jsp">CLASS</a></li>
          <li><a href="FMS_05_04_Board.jsp">BOARD</a></li>
        </ul>
      </div>
      <span id="menu"><i class="fa fa-bars" aria-hidden="true"></i></span>
    </div>
  </header>
  <div class="side-bar">
    <div class="logo">
      <span id="close-menu"><i class="fa fa-times"
        aria-hidden="true"></i></span>
    </div>
    <div class="container">
      <div class="box">
        <ul>
          <li><a href="product.jsp?pnum=12">BAND</a></li>
          <li><a href="product.jsp?pnum=1">VOCAL</a></li>
          <li><a href="product.jsp?pnum=2">GUITAR</a></li>
          <li><a href="product.jsp?pnum=3">BASS</a></li>
          <li><a href="product.jsp?pnum=4">DRUM</a></li>
          <li><a href="product.jsp?pnum=5">KEYBOARD</a></li>
          <li><a href="product.jsp?pnum=7">CREATE AN
              EFFECTOR/AMP</a></li>
          <li><a href="product.jsp?pnum=10">COMPOSITION</a></li>
          <li><a href="product.jsp?pnum=8">ILLUSTRATION</a></li>
          <li><a href="product.jsp?pnum=9">READING</a></li>
        </ul>
        <ul>
          <li><a href="FMS_03_02_Band.jsp">BAND</a></li>
          <li><a href="calendar.jsp">CALENDAR</a></li>
        </ul>
        <ul>
          <li><a href="#"><i class="fa fa-phone-square"
              aria-hidden="true"></i></a></li>
          <li><a href="https://www.instagram.com/_fms_band/"
            target="_blank"><i class="fa fa-instagram"
              aria-hidden="true"></i></a></li>
          <li><a
            href="https://www.youtube.com/channel/UCu-dw6LfUI3N8YmwnANROBw"
            target="_blank"><i class="fa fa-youtube-play"
              aria-hidden="true"></i></a></li>
          <li><a href="javascript:void chatChannel()"><i
              class="fa fa-commenting" aria-hidden="true"></i></a></li>
        </ul>
        <div class="sign-up">
          <a href="login.jsp">LOG IN <i class="fa fa-arrow-right"
            aria-hidden="true"></i></a>
        </div>
      </div>
    </div>
  </div>

  <div class="hero">
    <div class="hero-inner">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde1.png); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde2.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde3.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde4.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide">
            <div class="play-backdrop"></div>
            <div class="play-button">
              <svg class="play-circles" viewBox="0 0 152 152">
            <circle class="play-circle-01" fill="none" stroke="#fff"
                  stroke-width="3" stroke-dasharray="343" cx="76"
                  cy="76" r="72.7" />
            <circle class="play-circle-02" fill="none" stroke="#fff"
                  stroke-width="3" stroke-dasharray="309" cx="76"
                  cy="76" r="65.5" />
            </svg>
              <div class="play-perspective">
                <button class="play-close"></button>
                <div class="play-triangle">
                  <div class="play-video">
                    <iframe width="600" height="400"
                      src="https://www.youtube.com/embed/dQw4w9WgXcQ"
                      frameborder="0" allow="autoplay; encrypted-media"
                      allowfullscreen></iframe>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
      <a href="#" class="sd">Scroll Down</a>
    </div>
  </div>


  <div id="mySidenav" class="sidenav">
    <a href="calendar.jsp" id="calender"><i
      class="fa fa-calendar-check-o"></i> CAL</a> <a href="#" id="ENG"><i
      class="fa fa-globe" aria-hidden="true"></i> ENG</a> <a
      href="FMS_03_01_BandMap.jsp" id="map"><i
      class="fa fa-map-marker" aria-hidden="true"></i> MAP</a> <a
      href="javascript:void chatChannel()" id="TALK"> <img
      src="images/kakaolink_btn_small_ov.png" alt=""> TALK
    </a>
  </div>
  <div id="TOP">

    <a href="#" id="topbtn"><i class="fa fa-caret-square-o-up fa-lg"></i></a>
  </div>

  <div class="content clearfix">
    <div class="container1"></div>
    <div class="container2">
      <div class="sc-T">- CLASS -</div>
      <div class="shortcut">

        <figure class="snip">
          <img src="img/mainbox1.jpg" alt="sample57" />
          <figcaption>
            <h3>BAND</h3>
            <h5>밴드 지원 바로가기</h5>
          </figcaption>
          <a href="store.jsp"></a>
        </figure>
        <figure class="snip">
          <img src="img/mainbox2.jpg" alt="sample57" />
          <figcaption>
            <h3>MUSIC CLASS</h3>
            <h5>건반, 보컬, 드럼, 기타, 베이스 등..</h5>
          </figcaption>
          <a href="store.jsp"></a>
        </figure>
        <figure class="snip">
          <img src="img/mainbox3.jpg" alt="sample60" />
          <figcaption>
            <h3>THE OTHERS</h3>
            <h5>미디, 독서, 앰프제작 등..</h5>
          </figcaption>
          <a href="store.jsp"></a>
        </figure>
      </div>
      <div class="icon">
        <figure class="if">
          <a href="product.jsp?pnum=2"> <img src="icon/icon-1.png"
            id="icon" />
            <figcaption class="ic">GUITAR</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=3"> <img src="icon/icon-2.png"
            id="icon" />
            <figcaption class="ic">BASS</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=1"> <img src="icon/icon-3.png"
            id="icon" />
            <figcaption class="ic">VOCAL</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=4"> <img src="icon/icon-4.png"
            id="icon" />
            <figcaption class="ic">DRUM</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=5"> <img src="icon/icon-5.png"
            id="icon" />
            <figcaption class="ic">KEYBOARD</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=10"> <img src="icon/icon-6.png"
            id="icon" />
            <figcaption class="ic">COMPOSITION</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=11"><img src="icon/icon-7.png"
            id="icon" />
            <figcaption class="ic">MIDI</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=7"> <img src="icon/icon-8.png"
            id="icon" />
            <figcaption class="ic">EFFECTOR</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=8"> <img src="icon/icon-9.png"
            id="icon" />
            <figcaption class="ic">DRAWING</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=9"> <img src="icon/icon-10.png"
            id="icon" />
            <figcaption class="ic">READING</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=6"> <img src="icon/icon-11.png"
            id="icon" />
            <figcaption class="ic">COFFEE</figcaption></a>
        </figure>
      </div>


      <footer class="footer_original">
        <div class="footer">
          <div class="copyright">
            <div class="footer-logo">
              <a href="" class="footer-a"> <img class="footer-img"
                src="img/logo2.png" alt="FMS Logo">
              </a>
            </div>
            <!-- footer-logo end -->
            <div class="copyright-bar">
              <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
                RESERVED</div>
              <!-- copyright-bar2 end -->
              <div class="copyright-bar2">
                <a href="" class="footer-a"> 제작자 : 정도현 이현승 양효빈 김경민
                  박시온 </a> <a href="" class="footer-a"> &nbsp;제작일자 :
                  20.02.10 ~ 20.04.10 </a> <a href="" class="footer-a">
                  &nbsp; 대표 : 박기훈 </a> <a href="" class="footer-a">
                  &nbsp;대표번호 : 010-6700-0829 </a>
              </div>
              <!-- copyright-bar2 end -->
            </div>
            <!-- copyright-bar end -->
          </div>
          <!-- copyright end -->
        </div>
        <!-- footer end -->
      </footer>


    </div>
  </div>


  <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
  <script src="JS/video.js"></script>

  <!-- Initialize Swiper -->
  <script src="JS/swiper.js"></script>

  <script>
      $('.sd').click(function() {
        $('.hero, .content').addClass('scrolled');
      });

      $('.hero').mousewheel(function(e) {
        if (e.deltaY < 0) {
          $('.hero, .content').addClass('scrolled');
          return false;
        }
      });
      $(window).mousewheel(function(e) {
        if ($('.hero.scrolled').length) {
          if ($(window).scrollTop() == 0 && e.deltaY > 0) {
            $('.hero, .content').removeClass('scrolled');
          }
        }
      });
    </script>



  <%
    } else if (userID != null) {
  %>
  <header>
    <div class="container">
      <div id="home"
        style="background-image: url(img/logo2.png); background-position: center; background-repeat: no-repeat; background-size: cover; width: 100px; height: 70px; top: -8px; cursor: pointer;"
        onclick="location.href='NewFile.jsp'"></div>
      <div class="box">
        <ul>
          <li><a href="FMS_02_01_FMS.jsp">FMS</a></li>
          <li><a href="FMS_03_01_BandMap.jsp">BAND</a></li>
          <li><a href="store.jsp">CLASS</a></li>
          <li><a href="FMS_05_04_Board.jsp">BOARD</a></li>
        </ul>
      </div>
      <span id="menu"><i class="fa fa-bars" aria-hidden="true"></i></span>
    </div>
  </header>
  <div class="side-bar">
    <div class="logo">
      <p class="logop"><%=userID%></p>
      <p style="color: pink;">
        [<%=grade%>]
      </p>
    </div>
    <span id="close-menu"><i class="fa fa-times"
      aria-hidden="true"></i></span>
    <div class="container">
      <div class="box">
        <ul>
          <li><a href="product.jsp?pnum=12">BAND</a></li>
          <li><a href="product.jsp?pnum=1">VOCAL</a></li>
          <li><a href="product.jsp?pnum=2">GUITAR</a></li>
          <li><a href="product.jsp?pnum=3">BASS</a></li>
          <li><a href="product.jsp?pnum=4">DRUM</a></li>
          <li><a href="product.jsp?pnum=5">KEYBOARD</a></li>
          <li><a href="product.jsp?pnum=7">CREATE AN
              EFFECTOR/AMP</a></li>
          <li><a href="product.jsp?pnum=10">COMPOSITION</a></li>
          <li><a href="product.jsp?pnum=8">ILLUSTRATION</a></li>
          <li><a href="product.jsp?pnum=9">READING</a></li>
        </ul>
        <ul>
          <li><a href="FMS_03_02_Band.jsp">BAND</a></li>
          <li><a href="calendar.jsp">CALENDAR</a></li>
          <li><a href="information.jsp">MODIFY</a></li>
        </ul>
        <ul>
          <li><a href="#"><i class="fa fa-phone-square"
              aria-hidden="true"></i></a></li>
          <li><a href="https://www.instagram.com/_fms_band/"
            target="_blank"><i class="fa fa-instagram"
              aria-hidden="true"></i></a></li>
          <li><a
            href="https://www.youtube.com/channel/UCu-dw6LfUI3N8YmwnANROBw"
            target="_blank"><i class="fa fa-youtube-play"
              aria-hidden="true"></i></a></li>
          <li><a href="#"><i class="fa fa-commenting"
              aria-hidden="true"></i></a></li>
        </ul>
        <form class="logout" method="post" action="logout.do">
          <button type="submit">LOG OUT</button>
        </form>
      </div>
    </div>
  </div>

  <div class="hero">
    <div class="hero-inner">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde1.png); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde2.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde3.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide"
            style="background-image: url(img/mainsilde4.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;"></div>
          <div class="swiper-slide">
            <div class="play-backdrop"></div>
            <div class="play-button">
              <svg class="play-circles" viewBox="0 0 152 152">
            <circle class="play-circle-01" fill="none" stroke="#fff"
                  stroke-width="3" stroke-dasharray="343" cx="76"
                  cy="76" r="72.7" />
            <circle class="play-circle-02" fill="none" stroke="#fff"
                  stroke-width="3" stroke-dasharray="309" cx="76"
                  cy="76" r="65.5" />
            </svg>
              <div class="play-perspective">
                <button class="play-close"></button>
                <div class="play-triangle">
                  <div class="play-video">
                    <iframe width="600" height="400"
                      src="https://www.youtube.com/embed/dQw4w9WgXcQ"
                      frameborder="0" allow="autoplay; encrypted-media"
                      allowfullscreen></iframe>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
      <a href="#" class="sd">Scroll Down</a>
    </div>
  </div>


  <div id="mySidenav" class="sidenav">
    <a href="calendar.jsp" id="calender"><i
      class="fa fa-calendar-check-o"></i> CAL</a> <a href="#" id="ENG"><i
      class="fa fa-globe" aria-hidden="true"></i> ENG</a> <a
      href="FMS_03_01_BandMap.jsp" id="map"><i
      class="fa fa-map-marker" aria-hidden="true"></i> MAP</a> <a
      href="javascript:void chatChannel()" id="TALK"> <img
      src="images/kakaolink_btn_small_ov.png" alt=""> TALK
    </a>
  </div>
  <div id="TOP">

    <a href="#" id="topbtn"><i class="fa fa-caret-square-o-up fa-lg"></i></a>
  </div>
  <div class="content clearfix">
    <div class="container1"></div>
    <div class="container2">
      <div class="sc-T">- CLASS -</div>
      <div class="shortcut">

        <figure class="snip">
          <img src="img/mainbox1.jpg" alt="sample57" />
          <figcaption>
            <h3>BAND</h3>
            <h5>밴드 지원 바로가기</h5>
          </figcaption>
          <a href="store.jsp"></a>
        </figure>
        <figure class="snip">
          <img src="img/mainbox2.jpg" alt="sample57" />
          <figcaption>
            <h3>MUSIC CLASS</h3>
            <h5>건반, 보컬, 드럼, 기타, 베이스 등..</h5>
          </figcaption>
          <a href="store.jsp"></a>
        </figure>
        <figure class="snip">
          <img src="img/mainbox3.jpg" alt="sample60" />
          <figcaption>
            <h3>THE OTHERS</h3>
            <h5>미디, 독서, 앰프제작 등..</h5>
          </figcaption>
          <a href="store.jsp"></a>
        </figure>
      </div>
      <div class="icon">
        <figure class="if">
          <a href="product.jsp?pnum=2"> <img src="icon/icon-1.png"
            id="icon" />
            <figcaption class="ic">GUITAR</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=3"> <img src="icon/icon-2.png"
            id="icon" />
            <figcaption class="ic">BASS</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=1"> <img src="icon/icon-3.png"
            id="icon" />
            <figcaption class="ic">VOCAL</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=4"> <img src="icon/icon-4.png"
            id="icon" />
            <figcaption class="ic">DRUM</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=5"> <img src="icon/icon-5.png"
            id="icon" />
            <figcaption class="ic">KEYBOARD</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=10"> <img src="icon/icon-6.png"
            id="icon" />
            <figcaption class="ic">COMPOSITION</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=11"><img src="icon/icon-7.png"
            id="icon" />
            <figcaption class="ic">MIDI</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=7"> <img src="icon/icon-8.png"
            id="icon" />
            <figcaption class="ic">EFFECTOR</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=8"> <img src="icon/icon-9.png"
            id="icon" />
            <figcaption class="ic">DRAWING</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=9"> <img src="icon/icon-10.png"
            id="icon" />
            <figcaption class="ic">READING</figcaption></a>
        </figure>
        <figure class="if">
          <a href="product.jsp?pnum=6"> <img src="icon/icon-11.png"
            id="icon" />
            <figcaption class="ic">COFFEE</figcaption></a>
        </figure>
      </div>


      <footer class="footer_original">
        <div class="footer">
          <div class="copyright">
            <div class="footer-logo">
              <a href="" class="footer-a"> <img class="footer-img"
                src="img/logo2.png" alt="FMS Logo">
              </a>
            </div>
            <!-- footer-logo end -->
            <div class="copyright-bar">
              <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
                RESERVED</div>
              <!-- copyright-bar2 end -->
              <div class="copyright-bar2">
                <a href="" class="footer-a"> 제작자 : 정도현 이현승 양효빈 김경민
                  박시온 </a> <a href="" class="footer-a"> &nbsp;제작일자 :
                  20.02.10 ~ 20.04.10 </a> <a href="" class="footer-a">
                  &nbsp; 대표 : 박기훈 </a> <a href="" class="footer-a">
                  &nbsp;대표번호 : 010-6700-0829 </a>
              </div>
              <!-- copyright-bar2 end -->
            </div>
            <!-- copyright-bar end -->
          </div>
          <!-- copyright end -->
        </div>
        <!-- footer end -->
      </footer>


    </div>
  </div>

  <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
  <script src="JS/video.js"></script>

  <!-- Initialize Swiper -->
  <script src="JS/swiper.js"></script>

  <script>
      $('.sd').click(function() {
        $('.hero, .content').addClass('scrolled');
      });

      $('.hero').mousewheel(function(e) {
        if (e.deltaY < 0) {
          $('.hero, .content').addClass('scrolled');
          return false;
        }
      });
      $(window).mousewheel(function(e) {
        if ($('.hero.scrolled').length) {
          if ($(window).scrollTop() == 0 && e.deltaY > 0) {
            $('.hero, .content').removeClass('scrolled');
          }
        }
      });
    </script>



  <%
    }
  %>

</body>

</html>
