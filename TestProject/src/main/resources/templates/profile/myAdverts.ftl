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

    <#--Sweet alert-->
    <link rel="stylesheet" type="text/css" href="css/sweetalert.css">
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
					<h3>Мои объявления</h3>
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
                <form id="contact-form" action="" method="post" role="form" class="contactForm">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table">
                              <thead class="thead-default">
                                <tr>
                                  <th>#</th>
                                  <th>Название</th>
                                  <th>Дата подачи</th>
                                  <th></th>
                                </tr>
                              </thead>
                              <tbody>
                              <#list publics as pub>
                                <tr class="${pub.id}pub">
                                  <th scope="row">1</th>
                                  <td><a href="" id="${pub.id}link">${pub.name}</a></td>
                                  <td>${pub.creationDate}</td>
                                  <td class="action">
                                      <#--<a href="/editPublic?id=${pub.id}"><i class="fa fa-pencil-square-o fa-2x editThis" style="cursor:pointer" id="editThis" data-id="${pub.id}" aria-hidden="true"></i></a>-->
                                  <i class="fa fa-times fa-2x deleteThis" style="cursor:pointer" id="${pub.id}deleteThis" data-id="${pub.id}" aria-hidden="true"></i>
                                  </td>
                                </tr>
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
                                  $('#${pub.id}link').attr('href',href);
                              </script>
                                </#list>
                              </tbody>
                            </table>
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

    <#--Sweet aler-->
    <script src="js/sweetalert.min.js"></script>

    <script>


        $('.deleteThis').click(function() {
            var id = $(this).data('id');
            swal({
                        title: "Вы уверены?",
                        text: "У вас не будет возможности восстановить объявление!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Да, удалить!",
                        closeOnConfirm: false
                    },
                    function () {
                        $.ajax({
                            type: 'POST',
                            url: '/deletePublic',
                            data: {
                                id: id
                            },
                            success: function () {  // успешное завершение работы
                                swal("Удалено!", "Ваше объявление было удалено.", "success");
                                $('.' + id + 'pub').hide();
                            },
                            error: function () {    // На сервере произошла ошибка
                            }
                        })
                    });
        });
    </script>
</body>

</html>
