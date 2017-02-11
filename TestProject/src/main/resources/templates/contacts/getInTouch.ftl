<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Squadfree - Free bootstrap 3 one page template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="css/default.css" rel="stylesheet">

    <#--Sweet alert-->
    <link rel="stylesheet" type="text/css" href="css/sweetalert.css">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="/">
                    <h1><span id="h1_public">PUBLIC</span><span id="h1_market">MARKET</span></h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul id="topDrop" class="nav navbar-nav">
                <#if user??>
                    <li><a href="/addPublic">Создать объявление</a></li>
                <#else >
                    <li><a href="/login">Создать объявление</a></li>
                </#if>
                    <li class="dropdown">
                    <#if user??>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${user.name} <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="/profile">Профиль</a></li>
                            <li><a href="/adverts">Мои объявления</a></li>
                            <li><a href="/logout">Выйти</a></li>
                        </ul>
                    <#else >
                        <a href="/login">Войти <b class="caret"></b></a>
                    </#if>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
<!--
		<div class="slogan">
			<h2>WELCOME TO <span class="text_color">SQUAD</span> </h2>
			<h4>WE ARE GROUP OF GENTLEMEN MAKING AWESOME WEB WITH BOOTSTRAP</h4>
		</div>
-->
		<div class="page-scroll">
			<a href="#service" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
    </section>
	<!-- /Section: intro -->



	

	<!-- Section: contact -->
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Свяжитесь с нами</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
    <div class="row">
        <div class="col-lg-8">
            <div class="boxed-grey">
                
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form id="contact-form" action="/sendmessage" method="post" role="form" class="contactForm">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Имя</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Ваше имя" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation" id="nameError">Введите ваше имя</div>
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email</label>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation" id="emailError">Введите свой email</div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="subject">
                                Тема</label>
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Тема сообщения" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validation" id="subjectError">Введите тему сообщения</div>
                        </div>
                        <div class="form-group">
                            <label for="message">
                                Сообщение</label>
                            <textarea class="form-control" name="message" id="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Сообщение"></textarea>
                            <div class="validation" id="msgError">Введите сообщение</div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
                            Отправить</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
		
		<div class="col-lg-4">
			<div class="widget-contact">

				<address>
				  <strong>Email</strong><br>
				  <a href="mailto:#">Leusvladis@mail.ru</a>
				</address>	
				<address>
				  <strong>Мы в социальной сети ВКонтакте</strong><br>
                       	<ul class="company-social">
                            <li class="social-facebook"><a href="https://vk.com/id390604029" target="_blank"><i class="fa fa-vk"></i></a></li>
                        </ul>
				</address>					
			
			</div>	
		</div>
    </div>	

		</div>
	</section>
	<!-- /Section: contact -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <a href="/contacts">Наши контакты</a>
                    <p>&copy;<a href="/contacts">PUBLICMARKET</a>. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

    <#--Sweet aler-->
    <script src="js/sweetalert.min.js"></script>

    <script>
        $(document).ready(function () {
            $("form").submit(function(e) {
                e.preventDefault();
                $('.validation').css('display','none');
                var haveError = false;
                if ($('#name').val() == "") {
                    $('#nameError').css('display', 'block');
                    haveError = true;
                }
                if ($('#email').val() == "") {
                    $('#emailError').css('display', 'block');
                    haveError = true;
                }
                if ($('#subject').val() == "") {
                    $('#subjectError').css('display', 'block');
                    haveError = true;
                }
                if ($('#message').val() == "") {
                    $('#msgError').css('display', 'block');
                    haveError = true;
                }
                if (!haveError) {
                    $.ajax({
                        type: 'POST',
                        url: '/sendmessage',
                        data: {
                            name:$('#name').val(),
                            email:$('#email').val(),
                            subject:$('#subject').val(),
                            message:$('#message').val()
                        },
                        success: function () {  // успешное завершение работы
                            swal("Отлично!", "Мы обязательно прочитаем ваше сообщение!", "success");
                        },
                        error: function () {    // На сервере произошла ошибка
                            swal("Приносим извенения", "На сервере произошла ошибка!", "error");
                        }
                    });
                }
            });
        });
    </script>

</body>

</html>
