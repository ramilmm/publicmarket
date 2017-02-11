<#-- @ftlvariable name="pub" type="ru.veusdas.Model.Public" -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PUBLICMARKET</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="../css/style.css" rel="stylesheet">
	<link href="../css/default.css" rel="stylesheet">

    <script src="../js/jquery.min.js"></script>
    

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
                <a class="navbar-brand" href="index.html">
                    <h1><span id="h1_public">PUBLIC</span><span id="h1_market">MARKET</span></h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
              <ul id="topDrop" class="nav navbar-nav">
                <li><a href="/addPublic">Создать объявление</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Катя Ковалёва <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/profile">Профиль</a></li>
                        <li><a href="/adverts">Мои объявления</a></li>
                        <li><a href="/logout">Выйти</a></li>
                    </ul>
                </li>
              </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro addPublicIntro"></section>
	<!-- /Section: intro -->



	

	<!-- Section: contact -->
    <section id="addPublicSection" class="public-section text-center">
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
    <div class="row">
        <div class="col-lg-12">
            <div class="addPublic">
                
                <div class="row">
                    <div class="col-md-12">
                      <div class="header_inputs">
                           <h3><a href="${pub.link}">${pub.name}</a></h3>
                            <#if pub.verified = 1>
                                <p id="verify">✓ Сообщество верифицировано</p>
                            </#if>
                      </div>
                       <div class="container">
                           <div class="row">
                             <div class="col-md-11">
                              <div class="date_time">
                                      <span class="adding">
                                          Добавлено: ${pub.creationDate} <br>
                                          Просмотров: ${pub.views}
                                      </span>
                                  </div>
                                </div>
                               <div class="col-md-8">
                                  
                                   <div class="public_info_page">
                                       <span class="public_stat_info" id="theme">
                                            <br>
                                           <script>
                                if(${pub.theme} == 0){
                                    $('#theme').html('Дом и семья');
                                }else if(${pub.theme} == 1) {
                                    $('#theme').html('Спорт');
                                }else if(${pub.theme} == 2) {
                                    $('#theme').html('Авто/мото');
                                }else if(${pub.theme} == 3) {
                                    $('#theme').html('Активный отдых');
                                }else if(${pub.theme} == 4) {
                                    $('#theme').html('Бизнес');
                                }else if(${pub.theme} == 5) {
                                    $('#theme').html('Дизайн и графика');
                                }else if(${pub.theme} == 6) {
                                    $('#theme').html('Домашние животные');
                                }else if(${pub.theme} == 7) {
                                    $('#theme').html('Здоровье');
                                }else if(${pub.theme} == 8) {
                                    $('#theme').html('Знакомство и общение');
                                }else if(${pub.theme} == 9) {
                                    $('#theme').html('Игры');
                                }else if(${pub.theme} == 10) {
                                    $('#theme').html('ИТ(компьютеры и софт)');
                                }else if(${pub.theme} == 11) {
                                    $('#theme').html('Кино');
                                }else if(${pub.theme} == 12) {
                                    $('#theme').html('Красота и мода');
                                }else if(${pub.theme} == 13) {
                                    $('#theme').html('Кулинария');
                                }else if(${pub.theme} == 14) {
                                    $('#theme').html('Культура и искусство');
                                }else if(${pub.theme} == 15) {
                                    $('#theme').html('Литература');
                                }else if(${pub.theme} == 16) {
                                    $('#theme').html('Музыка');
                                }else if(${pub.theme} == 17) {
                                    $('#theme').html('Наука и техника');
                                }else if(${pub.theme} == 18) {
                                    $('#theme').html('Новости и СМИ');
                                }else if(${pub.theme} == 19) {
                                    $('#theme').html('Образование');
                                }else if(${pub.theme} == 20) {
                                    $('#theme').html('Обустройство и ремонт');
                                }else if(${pub.theme} == 21) {
                                    $('#theme').html('Политика');
                                }else if(${pub.theme} == 22) {
                                    $('#theme').html('Общество, гуманитарные науки');
                                }else if(${pub.theme} == 23) {
                                    $('#theme').html('Путешествия');
                                }else if(${pub.theme} == 24) {
                                    $('#theme').html('Работа');
                                }else if(${pub.theme} == 25) {
                                    $('#theme').html('Развлечение');
                                }else if(${pub.theme} == 26) {
                                    $('#theme').html('Религия');
                                }else if(${pub.theme} == 27) {
                                    $('#theme').html('Телевидение');
                                }else if(${pub.theme} == 28) {
                                    $('#theme').html('Товары и услуги');
                                }else if(${pub.theme} == 29) {
                                    $('#theme').html('Увлечения и хобби');
                                }else if(${pub.theme} == 30) {
                                    $('#theme').html('Финансы');
                                }else if(${pub.theme} == 31) {
                                    $('#theme').html('Фото');
                                }else if(${pub.theme} == 32) {
                                    $('#theme').html('Эротика');
                                }else if(${pub.theme} == 33) {
                                    $('#theme').html('Электроника');
                                }else if(${pub.theme} == 34) {
                                    $('#theme').html('Юмор');
                                }
                            </script>
                                       </span>
                                   </div>
                                   <div class="public_description">
                                           <span>${pub.description}</span>
                                       </div>
                                       <div class="info">
                                        <div class="public_stat">
                                           <div class="public_stat_wrap">
                                                <div class="stat_title">Ссылка на паблик</div>
                                                <div class="stat_value"><a href="${pub.link}">${pub.link}</a></div>
                                            </div>
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
                                            <#if pub.transfer??>
                                                <div class="public_stat_wrap">
                                                    <div class="stat_title">Способ передачи </div>
                                                    <div class="stat_value" id="admin_transfer"></div>
                                                    <script>
                                                        if(${pub.transfer} == 0){
                                                            $('#admin_transfer').html('Смена админа');
                                                        }else
                                                            $('#admin_transfer').html('Передача вместе с аккаунтом');
                                                    </script>
                                                </div>
                                            </#if>
                                            <#if pub.creatorIsLive??>
                                            <div class="public_stat_wrap">
                                                <div class="stat_title">Доступ к создателю </div>
                                                <div class="stat_value" id="creatorIsLive"></div>
                                                <script>
                                                    var buf = ${pub.creatorIsLive};
                                                    if(buf != 0){
                                                        $('#creatorIsLive').html('Нет');
                                                    }else if(buf == 0){
                                                        $('#creatorIsLive').html('Есть');
                                                    }
                                                </script>
                                            </div>
                                            </#if>
                                            <#if pub.content??>
                                            <div class="public_stat_wrap">
                                                <div class="stat_title">Контент </div>
                                                <div class="stat_value" id="contentType"></div>
                                                <script>
                                                    if(${pub.content} == 0){
                                                        $('#contentType').html('Переписанный');
                                                    }else if(${pub.content} == 1){
                                                        $('#contentType').html('Уникальный');
                                                    }else if(${pub.content} == 2){
                                                        $('#contentType').html('Не уникальный');
                                                    }else
                                                    $('#contentType').html('Смешанный');
                                                </script>
                                            </div>
                                            </#if>
                                        </div>
                                        <div class="cost_info">
                                            <div class="cost">${pub.cost} руб.</div>
                                            <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">Купить</button>
                                        </div>
                                    </div>
                               </div>
                           
                        <div class="col-md-3">
                                       <div class="public_image">
                                           <a href="${pub.link}"><img class="img-circle" src="${pub.avatar}" alt="${pub.name}" width="240" height="240px"></a>
                                        </div>
                                </div>
                            </div>
                        </div>
                       </div>
                </div>
            </div>
        </div>
    </div>

            <div class="heading-about" style="margin-top: 50px">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <div class="section-heading">
                                    <h3>Похожие объявления</h3>
                                    <i class="fa fa-2x fa-angle-down"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <#list similar as pub>
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
                                            <img src="${pub.avatar}" alt="${pub.name}" class="img-responsive img-circle"
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
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.easing.min.js"></script>
	<script src="../js/jquery.scrollTo.js"></script>
	<script src="../js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../js/custom.js"></script>

</body>

</html>
