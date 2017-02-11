<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PUBLICMARKET</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/filter.css" rel="stylesheet">
	<link href="css/default.css" rel="stylesheet">

    <script src="js/jquery.min.js"></script>
    

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
		<div class="page-scroll">
			<a href="#about" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
    </section>
	<!-- /Section: intro -->

    <section id="filter">
        <div class="filter">
        <div class="container">
           <div class="row">
            <form name="filter" method="get" action="/filter" autocomplete="off">
               <div class="col-md-12">
               <div class="container">
                   <div class="row">
                       <div class="col-md-4">
                           <div class="filter-search flex">
                            <input name="name" type="text" class="form-control" placeholder="Поиск по ключевым словам" value="" />
                        </div>
                       </div>
                       <div class="col-md-2">
                           <div class="filter-search flex">
                               <select class="form-control" name="socNetwork" id="socNetwork">
                                   <option value="">Соц.Сеть</option>
                                   <option value="0">Вконтакте</option>
                                   <option value="1">Одноклассники</option>
                                   <option value="2">Facebook</option>
                                   <option value="3">Instagram</option>
                               </select>
                           </div>
                       </div>
                       <div class="col-md-3">
                           <select name="theme" id="theme" class="form-control" data-placeholder="Выберете тематики">
                               <option value="">Тематика</option>
                               <option value="0">Дом и семья</option>
                               <option value="1">Спорт</option>
                               <option value="2">Авто/мото</option>
                               <option value="3">Активный отдых</option>
                               <option value="4">Бизнес</option>
                               <option value="5">Дизайн и графика</option>
                               <option value="6">Домашние животные</option>
                               <option value="7">Здоровье</option>
                               <option value="8">Знакомство и общение</option>
                               <option value="9">Игры</option>
                               <option value="10">ИТ(компьютеры и софт)</option>
                               <option value="11">Кино</option>
                               <option value="12">Красота и мода</option>
                               <option value="13">Кулинария</option>
                               <option value="14">Культура и искусство</option>
                               <option value="15">Литература</option>
                               <option value="16">Музыка</option>
                               <option value="17">Наука и техника</option>
                               <option value="18">Новости и СМИ</option>
                               <option value="19">Образование</option>
                               <option value="20">Обустройство и ремонт</option>
                               <option value="21">Политика</option>
                               <option value="22">Общество, гуманитарные науки</option>
                               <option value="23">Путешествия</option>
                               <option value="24">Работа</option>
                               <option value="25">Развлечение</option>
                               <option value="26">Религия</option>
                               <option value="27">Телевидение</option>
                               <option value="28">Товары и услуги</option>
                               <option value="29">Увлечения и хобби</option>
                               <option value="30">Финансы</option>
                               <option value="31">Фото</option>
                               <option value="32">Эротика</option>
                               <option value="33">Электроника</option>
                               <option value="34">Юмор</option>
                        </select>
                       </div>
                       <div class="col-md-3">
                           <div class="input-checkbox">
                    <input type="checkbox" id="verify" name="verify" class="filled-in checkbox_theme_yellow" />
                    <label for="verify">Верифицирован</label>
                </div>
                       </div>
                   </div>
               </div>
            </div>
            <div class="col-md-12">
                <div class="container">
                    <div class="row">
                                <div class="col-md-5">
                                    <div class="filter-group"><span class="filter-group__title">Подписчиков</span>
                                        <input type="text" id="members_from" name="members_from" class="validate" placeholder="От" /><span class="input-divider">—</span>
                                        <input type="text" id="members_to" name="members_to" class="validate" placeholder="До" /><span class="filter-group__descr">чел.</span>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="filter-group"><span class="filter-group__title">Цена</span>
                                        <input type="text" id="cost_from" name="cost_from" class="validate" placeholder="От" /><span class="input-divider">—</span>
                                        <input type="text" id="cost_to" name="cost_to" class="validate" placeholder="До" /><span class="filter-group__descr">руб.</span>
                                    </div>
                                </div>
                            <div class="col-md-2">
                                <div class="filter__btns">
                                    <button class="btn btn_theme_blue" type="submit">Найти</button>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            </form>
        </div>
    </div>
        </div>
    </section>
	<!-- Section: about -->
    <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
                        <div id="dd2" class="dropup">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Все
                          </button>
                          <ul id="dd_list" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <li><a class="dropdown-item" href="/vk">VK</a></li>
                            <li><a class="dropdown-item" href="/inst">Instagram</a></li>
                            <li><a class="dropdown-item" href="/fb">Facebook</a></li>
                            <li><a class="dropdown-item" href="/ok">Одноклассники</a></li>
                            <li><a class="dropdown-item" href="/">Все</a></li>
                          </ul>
                        </div>
					<span class="dropdown_btn"></span>
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
        <#list publics as pub>
            <div class="col-md-3">
                <div class="wow bounceInUp" data-wow-delay="0.5s">
                    <div class="team boxed-grey">
                        <div class="inner">
                            <#if pub.verified = 1>
                                <span class="verified">Сообщество верифицировано</span>
                            </#if>
                            <h5><a href="${pub.link}" style="color: #888" target="_blank">${pub.name}</a></h5>
                            <p class="subtitle" id="${pub.id}Theme">Дом и семья</p>
                            <script>
                                if(${pub.theme} == 0){
                                    $('#${pub.id}Theme').html('Дом и семья');
                                }else if(${pub.theme} == 1) {
                                    $('#${pub.id}Theme').html('Спорт');
                                }else if(${pub.theme} == 2) {
                                    $('#${pub.id}Theme').html('Авто/мото');
                                }else if(${pub.theme} == 3) {
                                    $('#${pub.id}Theme').html('Активный отдых');
                                }else if(${pub.theme} == 4) {
                                    $('#${pub.id}Theme').html('Бизнес');
                                }else if(${pub.theme} == 5) {
                                    $('#${pub.id}Theme').html('Дизайн и графика');
                                }else if(${pub.theme} == 6) {
                                    $('#${pub.id}Theme').html('Домашние животные');
                                }else if(${pub.theme} == 7) {
                                    $('#${pub.id}Theme').html('Здоровье');
                                }else if(${pub.theme} == 8) {
                                    $('#${pub.id}Theme').html('Знакомство и общение');
                                }else if(${pub.theme} == 9) {
                                    $('#${pub.id}Theme').html('Игры');
                                }else if(${pub.theme} == 10) {
                                    $('#${pub.id}Theme').html('ИТ(компьютеры и софт)');
                                }else if(${pub.theme} == 11) {
                                    $('#${pub.id}Theme').html('Кино');
                                }else if(${pub.theme} == 12) {
                                    $('#${pub.id}Theme').html('Красота и мода');
                                }else if(${pub.theme} == 13) {
                                    $('#${pub.id}Theme').html('Кулинария');
                                }else if(${pub.theme} == 14) {
                                    $('#${pub.id}Theme').html('Культура и искусство');
                                }else if(${pub.theme} == 15) {
                                    $('#${pub.id}Theme').html('Литература');
                                }else if(${pub.theme} == 16) {
                                    $('#${pub.id}Theme').html('Музыка');
                                }else if(${pub.theme} == 17) {
                                    $('#${pub.id}Theme').html('Наука и техника');
                                }else if(${pub.theme} == 18) {
                                    $('#${pub.id}Theme').html('Новости и СМИ');
                                }else if(${pub.theme} == 19) {
                                    $('#${pub.id}Theme').html('Образование');
                                }else if(${pub.theme} == 20) {
                                    $('#${pub.id}Theme').html('Обустройство и ремонт');
                                }else if(${pub.theme} == 21) {
                                    $('#${pub.id}Theme').html('Политика');
                                }else if(${pub.theme} == 22) {
                                    $('#${pub.id}Theme').html('Общество, гуманитарные науки');
                                }else if(${pub.theme} == 23) {
                                    $('#${pub.id}Theme').html('Путешествия');
                                }else if(${pub.theme} == 24) {
                                    $('#${pub.id}Theme').html('Работа');
                                }else if(${pub.theme} == 25) {
                                    $('#${pub.id}Theme').html('Развлечение');
                                }else if(${pub.theme} == 26) {
                                    $('#${pub.id}Theme').html('Религия');
                                }else if(${pub.theme} == 27) {
                                    $('#${pub.id}Theme').html('Телевидение');
                                }else if(${pub.theme} == 28) {
                                    $('#${pub.id}Theme').html('Товары и услуги');
                                }else if(${pub.theme} == 29) {
                                    $('#${pub.id}Theme').html('Увлечения и хобби');
                                }else if(${pub.theme} == 30) {
                                    $('#${pub.id}Theme').html('Финансы');
                                }else if(${pub.theme} == 31) {
                                    $('#${pub.id}Theme').html('Фото');
                                }else if(${pub.theme} == 32) {
                                    $('#${pub.id}Theme').html('Эротика');
                                }else if(${pub.theme} == 33) {
                                    $('#${pub.id}Theme').html('Электроника');
                                }else if(${pub.theme} == 34) {
                                    $('#${pub.id}Theme').html('Юмор');
                                }
                            </script>
                            <div class="avatar">
                                <a href="${pub.link}" id="${pub.id}Img">
                                    <img src="${pub.avatar}" alt="${pub.name}"  class="img-responsive img-circle"
                                         width="218px" height="218px"
                                         style="margin: 0 auto;max-height: 218px;"/></div>
                                </a>
                            <i class="fa fa-2x soc_network_icon" id="${pub.id}SocIcon" aria-hidden="true"></i>
                            <script>
                                switch (${pub.socNetwork}) {
                                    case 0: {
                                        $('#${pub.id}SocIcon').addClass('fa-vk');
                                        break;
                                    }
                                    case 1: {
                                        $('#${pub.id}SocIcon').addClass('fa-odnoklassniki');
                                        break;
                                    }
                                    case 2: {
                                        $('#${pub.id}SocIcon').addClass('fa-facebook');
                                        break;
                                    }
                                    case 3: {
                                        $('#${pub.id}SocIcon').addClass('fa-instagram');
                                        break;
                                    }
                                }
                            </script>
                            <div class="info">
                                <div class="public_stat">
                                    <div class="public_stat_wrap">
                                        <div class="stat_title">Подписчики</div>
                                        <div class="stat_value"><b>${pub.subscribers}</b> чел.</div>
                                    </div>
                                    <div class="public_stat_wrap">
                                        <div class="stat_title">Доход</div>
                                        <div class="stat_value"><b>${pub.income}</b> руб./мес.</div>
                                    </div>
                                    <div class="public_stat_wrap">
                                        <div class="stat_title">Подписчик</div>
                                        <div class="stat_value"><b>${pub.cost/pub.subscribers}</b> руб.</div>
                                    </div>
                                    <div class="public_stat_wrap">
                                        <div class="stat_title">Окупаемость </div>
                                        <div class="stat_value"><b>≈${(pub.cost/pub.income)?int}</b> мес.</div>
                                    </div>
                                </div>
                                <div class="cost_info">
                                    <div class="cost">${pub.cost} руб.</div>
                                    <a href="" class="show_btn" id="${pub.id}Link">Посмотреть</a>
                                    <script>
                                        var href;
                                        switch (${pub.socNetwork}){
                                            case 0: {
                                                href = "/vk/" + ${pub.id};
                                                break;
                                            }
                                            case 1: {
                                                href = "/ok/" + ${pub.id};
                                                break;
                                            }
                                            case 2: {
                                                href = "/fb/" + ${pub.id};
                                                break;
                                            }
                                            case 3: {
                                                href = "/inst/" + ${pub.id};
                                                break;
                                            }
                                        }
                                        $('#${pub.id}Link').attr('href',href);
                                        $('#${pub.id}Img').attr('href',href);
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </#list>
            <div class="col-md-6 col-md-offset-3">
                <div class="showMore">
                    <h5>Показать ещё</h5>
                    <input type="hidden" value="20" id="limiter">
                </div>
            </div>
        </div>		
		</div>
	</section>
	<!-- /Section: about -->
	

	<!-- Section: services -->
    <section id="service" class="home-section text-center bg-gray">
		
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>О нас</h2>
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
            <div class="col-md-10 col-lg-offset-1">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="infobox">
                    <span>
                        PUBLICMARKET - биржа сообществ в социальных сетях. <br/> Тут Вы можете быстро продать паблик VK, OK, Facebook, Instagram или найти объявление с интересующей Вас тематикой. Так же благодаря подробной информации Вы можете узнать цены на группы VK, OK, Facebook и Instagram.
                    </span>
                </div>
				</div>
            </div>
			
        </div>		
		</div>
	</section>
	<!-- /Section: services -->
	

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
                        <a href="/contacts">Наши контакты</a>
                        <p>&copy;<a href="/contacts">PUBLICMARKET</a>. All rights reserved.</p>
					</div>
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

    <script>
        $(document).ready(function () {

            $(".validate").keypress(function( b ){
                var C = /[0-9\x25\x24\x23]/;
                var a = b.which;
                var c = String.fromCharCode(a);
                return !!(a==0||a==8||a==9||a==13||c.match(C));
            });


            $("form").submit(function(e) {
                    e.preventDefault();
                    var haveError = false;

                    if ($('#members_from').val() != "") {
                        if ( $('#members_to').val() != "" && parseInt($('#members_from').val()) > parseInt($('members_to').val())) {
                            $('#members_to').css('border','1px solid red');
                            haveError = true;
                        }
                    }
                if ($('#cost_from').val() != "") {
                    if ( $('#cost_to').val() != "" && parseInt($('#cost_from').val()) > parseInt($('#cost_to').val())) {
                        $('#cost_to').css('border','1px solid red');
                        haveError = true;
                    }
                }

                    if (!haveError) {
                        this.submit();
                    }

                });

            if (!${hasNext?c}) {
                $('.showMore').css('display','none');
            }

            $('.showMore').on('click', function() {
                $.ajax({
                    type: 'POST',
                    url: '/showmore',
                    data: {
                        limiter:$('#limiter').val()
                    },
                    success: function (data) {  // успешное завершение работы
                        if (data != '') {
                            $('.col-md-3').last().after(data);
                        }
                    },
                    error: function () {    // На сервере произошла ошибка
                    }
                });
                var limit =  parseInt($('#limiter').val(),10);
                $('#limiter').val(limit+20);
            });

        });
    </script>

</body>

</html>
