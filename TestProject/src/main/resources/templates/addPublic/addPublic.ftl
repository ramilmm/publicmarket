<!DOCTYPE html>
<html lang="ru">

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
    <section id="intro" class="intro addPublicIntro"></section>
	<!-- /Section: intro -->



	

	<!-- Section: contact -->
    <section id="addPublicSection" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h3>Продай своё сообщество</h3>
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
        <div class="col-lg-12">
            <div class="addPublic">
                
                <div id="sendmessage">Объявление создано!</div>
                <div id="errormessage"></div>
                <form id="contact-form" action="/addPublic" method="post" role="form" class="contactForm">
                <div class="row">
                    <div class="col-md-12">
                      <div class="header_inputs">
                           <h3>Обязательные поля</h3>
                      </div>
                       <div class="container">
                           <div class="row">
                               <div class="col-md-6">
                                   <div class="form-group">
                                        <label for="link">
                                            Ссылка на паблик</label>
                                        <input type="text" name="link" class="form-control" id="link" placeholder="Вставьте ссылку на паблик" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                        <div class="validation" id="linkError">Введите корректную ссылку на паблик</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="theme">
                                            Тематика паблика</label>
                                        <div class="form-group">
                                            <select class="form-control" name="theme" id="theme">
                                                <option value="">-- Выберите --</option>
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
                                            <div class="validation" id="themeError">Выберите тематику</div>
                                        </div>
                                    </div>
                                       <div class="form-group">
                                        <label for="socNetwork">
                                            Социальная сеть</label>
                                        <div class="form-group">
                                            <select class="form-control" name="socNetwork" id="socNetwork">
                                                <option value="">-- Выберите --</option>
                                                <option value="0">Вконтакте</option>
                                                <option value="1">Одноклассники</option>
                                                <option value="2">Facebook</option>
                                                <option value="3">Instagram</option>
                                            </select>
                                            <div class="validation" id="soc_networkError">Выберите соц. сеть</div>
                                        </div>
                                    </div>
                                   <script>

                                       $(document).ready(function () {

                                           $('#socNetwork').on('click', function () {
                                               var soc = $('#socNetwork').val();
                                               if (soc >= 2) {
                                                   $('#disp_sub').css('display', 'block');
                                               }else
                                                   $('#disp_sub').css('display','none');
                                           });
                                       });
                                   </script>
                                   <div class="form-group" id="disp_sub" style="display: none">
                                       <label for="sub">Количество подписчиков</label>
                                       <div class="form-group">
                                           <input type="text" class="form-control" value="0" name="sub" id="sub" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                           <div class="validation" id="subError">Укажите корректное количество подписчиков</div>
                                       </div>
                                   </div>
                                    <div class="form-group">
                                        <label for="cost">
                                            Цена</label>
                                        <input type="text" class="form-control" name="cost" id="cost" placeholder="Введите цену" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                        <div class="validation" id="costError">Укажите корректную цену</div>
                                    </div>
                              <div class="form-group">
                                    <label for="income">
                                        Доход</label>
                                    <input type="text" class="form-control" name="income" id="income" placeholder="Примерный доход за месяц" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                  <div class="validation" id="incomeError">Укажите корректный доход за месяц</div>
                              </div>
                               </div>
                           
                        <div class="col-md-6">
                                   <div class="col-md-6">
                                       <div class="public_image">
                                            <img src="images/image-add.png" alt="Аватарка паблика" id="public_avatar" style="width:168px; height:168px; border-radius: 50%">
                                        </div>
                                   </div>
                                   <div class="col-md-6">
                                       <div class="public_stat_generated" style="display:none">
                                           <span>
                                           Название: <span id="public_name"></span> <br>
                                           Подписчики: <span id="public_subscribers"></span> чел. <br>
                                           Статистика: <br><a href="" id="public_stat"></a>
                                           </span>
                                       </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                       </div>
                    <div class="col-md-12">
                      <div class="header_inputs">
                           <h3>Дополнительные поля</h3>
                      </div>
                       <div class="container">
                           <div class="row">
                               <div class="col-md-4">
                                   <div class="form-group">
                                        <label for="contentType">
                                            Контент</label>
                                            <select name="contentType" id="contentType" class="form-control">
                                               <option value="">-- Выберите --</option>
                                                <option value="0">Переписанный</option>
                                                <option value="1">Уникальный</option>
                                                <option value="2">Не уникальный</option>
                                                <option value="3">Смешанный</option>
                                            </select>
                                    </div>
                               </div>
                               <div class="col-md-2">
                                   <div class="formForPublic form-group">
                                        <label for="creator">
                                            Доступ к создателю</label>
                                            <select name="creator" id="creator" class="form-control">
                                               <option value="">-- Выберите --</option>
                                                <option value="0">Есть</option>
                                                <option value="1">Нет</option>
                                            </select>
                                    </div>
                               </div>
                                  <div class="col-md-5">
                                   <div class="formForPublic form-group">
                                        <label for="send">
                                            Способ передачи паблика</label>
                                            <select name="send" id="send" class="form-control">
                                                <option value="">-- Выберите --</option>
                                                <option value="0">Смена админа</option>
                                                <option value="1">Передача вместе с аккаунтом</option>
                                            </select>
                                    </div>
                               </div>
                           <div class="col-md-11">
                            <div class="form-group">
                                <label for="description">
                                    Описание</label>
                                <textarea class="form-control" name="description" id="description" rows="5" data-rule="required" data-msg="Please write something for us" placeholder=""></textarea>
                                <div class="validation" id="description_validate">Не более 255 символов</div>
                            </div>
                        </div>
                        
                    </div>
                    </div>
                       </div>
                       <div class="col-md-12">
                       <div class="header_inputs">
                           <h3>Платные функции</h3>
                      </div>
                       <div class="container">
                           <div class="row">
                               <div class="col-md-3">
                                   <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="zakrep" id="zakrep" value="">
                                            Закрепление объявления
                                            </label>
                                    </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="form-group">
                                            <select name="zakrepLength" id="zakrepLength" class="form-control">
                                                <option value="1">1 неделя</option>
                                                <option value="2">2 недели</option>
                                                <option value="3">3 недели</option>
                                                <option value="4">4 недели</option>
                                            </select>
                                    </div>
                               </div>
                                 <div class="col-md-12"></div>
                                  <div class="col-md-3">
                                   <div class="form-group">
                                        <label>
                                           <input type="checkbox" name="color" id="color" value="">
                                            Выделение цветом
                                            </label>
                                        
                                    </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="form-group">
                                            <select name="colorLength" id="colorLength" class="form-control">
                                                <option value="1">1 неделя</option>
                                                <option value="2">2 недели</option>
                                                <option value="3">3 недели</option>
                                                <option value="4">4 недели</option>
                                            </select>
                                    </div>
                               </div>
                               <div class="col-md-12"></div>
                           <div class="col-md-2">
                            <div class="sum">
                                <span>
                                    Сумма: 0 руб.
                                </span>
                            </div>
                            <div class="pay">
                                <span>
                                    Способ оплаты: 
                                </span>
                            </div>
                        </div>
                        
                    </div>
                    </div>
                       </div>
                       <div class="col-md-12">
                          <div class="header_inputs">
                           <h3>ВЕРИФИКАЦИЯ</h3>
                      </div>
                           <p class="verify_descr">
                               Подтвердите что вы хозяин группы, разместив данный код в статусе если это сообщество Вконтакте, для Одноклассников - в описание, а для Instagram - в поле "О себе".
                           </p>
                           <span class="generated_code">${code}</span>
                           <p>
                               Код можно удалить сразу после запуска объявления!
                           </p>
                       </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
                            Запустить объявление</button>
                    </div>
                    
                </div>
                </form>
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
    <#--<script src="js/jquery.min.js"></script>-->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

    <script>
        $(document).ready(function () {

            $('#link').on('blur', function() {
                $.ajax({
                    type: 'POST',
                    url: '/getInfo',
                    data: {
                        link:$('#link').val()
                    },
                    success: function (pub) {  // успешное завершение работы
                        $('#public_name').html('');
                        $('#public_subscribers').html('');
                        $('#public_stat').html('');

                        $('#public_name').html(pub[0]);
                        $('#public_avatar').attr('src',pub[1]);
                        $('#public_subscribers').html(pub[2]);
                        $('#public_stat').attr('href',pub[3]);
                        $('#public_stat').html(pub[3]);
                        $('.public_stat_generated').css('display','block');
                    },
                    error: function () {    // На сервере произошла ошибка
                    }
                });
            });

            $("form").submit(function(e) {
                e.preventDefault();
                $('.validation').css('display','none');
                var haveError = false;
                if ($('#link').val() == "") {
                    $('#linkError').css('display', 'block');
                    haveError = true;
                }
                if ($('#theme').val() == "") {
                    $('#themeError').css('display', 'block');
                    haveError = true;
                }
                if ($('#socNetwork').val() == "") {
                    $('#soc_networkError').css('display', 'block');
                    haveError = true;
                }
                if ($('#sub').val() == "" || !$.isNumeric($('#sub').val().replace(" ", "")) || $('#sub').val().replace(" ", "") < 0) {
                    $('#subError').css('display', 'block');
                    haveError = true;
                }
                if ($('#cost').val() == "" || !$.isNumeric($('#cost').val().replace(" ", "")) || $('#cost').val().replace(" ", "") < 0) {
                    $('#costError').css('display', 'block');
                    haveError = true;
                }
                if ($('#income').val() == "" || !$.isNumeric($('#income').val().replace(" ", "")) || $('#income').val().replace(" ", "") < 0) {
                    $('#incomeError').css('display', 'block');
                    haveError = true;
                }
                if ($('#description').val().length > 255) {
                    $('#description_validate').css('display','block');
                    haveError = true;
                }
                if (!haveError) {
                    $.ajax({
                        type: 'POST',
                        url: '/addPublic',
                        data: {
                            name:$('#public_name').text(),
                            avatar:$('#public_avatar').attr('src'),
                            subscribers:$('#public_subscribers').text().replace(" ",""),
                            sub:$('#sub').val(),
                            stat:$('#public_stat').text(),
                            link:$('#link').val(),
                            theme:$('#theme').val(),
                            socNetwork:$('#socNetwork').val(),
                            cost:$('#cost').val(),
                            income:$('#income').val(),
                            contentType:$('#contentType').val(),
                            creator:$('#creator').val(),
                            send:$('#send').val(),
                            description:$('#description').val(),
                            code:$('.generated_code').text()
                        },
                        success: function () {  // успешное завершение работы
                            $(location).attr('href', 'http://localhost:8091/adverts')
                        },
                        error: function () {    // На сервере произошла ошибка
                        }
                    });
                }
            });
        });
    </script>

</body>

</html>
