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
	<link href="css/default.css" rel="stylesheet">
    

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
    <section id="intro" class="intro profilePage"></section>
	<!-- /Section: intro -->



	

	<!-- Section: contact -->
    <section id="addPublicSection" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h3>Профиль</h3>
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
                
                <form id="contact-form" action="" method="post" role="form" class="contactForm">
                <div class="row">
                    <div class="col-md-12">
                      <div class="header_inputs">
                           <h3>Личные данные</h3>
                      </div>
                       <div class="container">
                           <div class="row">
                               <div class="col-md-8">
                                   <div class="form-group">
                                        <label for="name">
                                            ФИО</label>
                                        <input type="text" name="name" class="form-control" value="${user.name}" id="name" placeholder="Имя" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    </div>
                                    <div class="form-group">
                                      <div class="icon-box">
                                       <i class="fa fa-envelope-o" aria-hidden="true">Email</i>
                                      </div>
                                        <div class="form-group">
                                        <#if user.email??>
                                            <input type="email" name="email" class="form-control" value="${user.email}" id="email" placeholder="Email" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                        <#else >
                                            <input type="email" name="email" class="form-control" id="email" placeholder="Email" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                        </#if>
                                        </div>

                                    </div>
                                       <div class="form-group">
                                          <div class="icon-box">
                                           <i class="fa fa-vk" aria-hidden="true"></i>
                                          </div>
                                            <div class="form-group">
                                                <#if user.vk??>
                                                    <input type="text" name="vk_link" class="form-control" value="${user.vk}"   id="vk" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                <#else >
                                                    <input type="text" name="vk_link" class="form-control"  id="vk" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                </#if>
                                            </div>
                                    </div>
                                    <div class="form-group">
                                          <div class="icon-box">
                                           <i class="fa fa-skype" aria-hidden="true"></i>
                                          </div>
                                            <div class="form-group">
                                                <#if user.skype??>
                                                    <input type="text" name="skype_login" class="form-control" value="${user.skype}" id="skype" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                <#else >
                                                    <input type="text" name="skype_login" class="form-control" id="skype" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                </#if>
                                                </div>
                                    </div>
                              <div class="form-group">
                                          <div class="icon-box">
                                           <i class="fa fa-facebook" aria-hidden="true"></i>
                                          </div>
                                            <div class="form-group">
                                                <#if user.fb??>
                                                    <input type="text" name="fb_link" class="form-control" value="${user.fb}" id="fb" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                <#else >
                                                    <input type="text" name="fb_link" class="form-control" id="fb" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                </#if>

                                            </div>
                                    </div>
                                   <div class="form-group">
                                       <div class="icon-box">
                                           <i class="fa fa-instagram" aria-hidden="true"></i>
                                       </div>
                                       <div class="form-group">
                                       <#if user.inst??>
                                           <input type="text" name="inst_link" class="form-control" value="${user.inst}" id="inst" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                       <#else >
                                           <input type="text" name="inst_link" class="form-control" id="inst" placeholder="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                       </#if>

                                       </div>
                                   </div>
                               </div>
                        <div class="col-md-3">
                                   <div class="public_image">
                                        <img src="${user.photo}" alt="Аватарка паблика" width="240" height="240px">
                                    </div>
                                </div>
                                <div class="col-md-11">
                                    <button type="submit" class="btn btn-skin pull-right" id="submitChanges">
                                        Сохранить изменения</button>
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-success alert-dismissible" id="changed" role="alert" style="display:none">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Отлично!</strong> Все изменения сохранены.
                        </div>
                       </div>
                    <div class="col-md-12">
                      <div class="header_inputs">
                           <h3>Смена пароля</h3>
                      </div>
                       <div class="container">
                           <div class="row">
                               <div class="col-md-4">
                                   <div class="form-group">
                                        <label for="new_passwd">
                                            Старый пароль</label>
                                        <input type="text" name="new_passwd" class="form-control" id="new_passwd" placeholder="Введите новый пароль" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="formForPublic form-group">
                                        <label for="conf_passwd">
                                            Старый пароль</label>
                                        <input type="text" name="conf_passwd" class="form-control" id="conf_passwd" placeholder="Подтвердите новый пароль" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    </div>
                               </div>
                                  
                                <div class="col-md-11">
                                    <button type="submit" class="btn btn-skin pull-right" id="submitPassword">
                                        Сохранить изменения</button>
                                </div>
                               <div class="col-md-11">
                                   <div class="alert alert-success alert-dismissible" id="isChanged" role="alert" style="display:none">
                                       <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                       <strong>Отлично!</strong> Ваш пароль изменён.
                                   </div>
                                   <div class="alert alert-warning alert-dismissible" id="isNotChanged" role="alert" style="display:none">
                                       <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                       <strong>Упс!</strong> Пароли не совпадают.
                                   </div>
                               </div>
                            </div>
                        </div>
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
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

    <script>
        $(document).ready(function () {
            $(document).on('click', '#submitPassword', function () {

              event.preventDefault();
              var new_passwd = $('#new_passwd').val();
              var conf_passwd = $('#conf_passwd').val();

              if (new_passwd === conf_passwd) {
                  $.ajax({
                      type: 'POST',
                      url: '/changePasswd',
                      data: {
                          new_passwd:new_passwd
                      },
                      success: function (data, status) {  // успешное завершение работы
                          $('#isChanged').css('display','block');
                      },
                      error: function () {    // На сервере произошла ошибка
                      }
                  });
              }else {
                  $('#isNotChanged').css('display','block');
              }

            });
            $(document).on('click', '#submitChanges', function () {
                event.preventDefault();
                var name = $('#name').val();
                var vk = $('#vk').val();
                var skype = $('#skype').val();
                var fb = $('#fb').val();
                var inst = $('#inst').val();
                var email =$('#email').val();
                $.ajax({
                    type: 'POST',
                    url: '/editProfile',
                    data: {
                        name:name,
                        email:email,
                        skype:skype,
                        vk:vk,
                        fb:fb,
                        inst:inst
                    },
                    success: function (data, status) {  // успешное завершение работы
                        $('#changed').css('display','block');
                    },
                    error: function () {    // На сервере произошла ошибка
                    }
                });
            });
        });
    </script>

</body>

</html>
