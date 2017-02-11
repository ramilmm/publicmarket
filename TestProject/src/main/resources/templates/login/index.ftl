<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Авторизация publicMarket</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="../css/login_style.css">

  
</head>

<body>
  
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
</div>
<div class="rerun">
    <h1>Вы можете авторизоваться через Вконтакте</h1> <br>
    <a href="/connectVk"><i class="fa fa-vk fa-2x"></i><span style="margin-left: 8px;vertical-align: super;">Войти через Вконтакте</span></a>
</div>
<#if error??>
<div style="
    color: #ac2925;
    margin-left: 38%;
    margin-bottom: 12px;">${error}</></div>
</#if>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Вход</h1>
    <form method="POST" action="/login">
      <div class="input-container">
        <input name="username" type="text" id="log_username" required="required"/>
        <label for="log_username">Email</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input name="password" type="password" id="log_password" required="required"/>
        <label for="log_password">Пароль</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Войти</span></button>
      </div>
    </form>
  </div>
  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Регистрация
      <div class="close"></div>
    </h1>
    <form method="POST" name="login" action="/registration">
      <div class="input-container">
        <input name="username" type="text" id="reg_username" required="required"/>
        <label for="reg_username">Email</label>
        <div class="bar"></div>
      </div>
        <div class="input-container">
            <input name="name" type="text" id="name" required="required"/>
            <label for="name">Имя</label>
            <div class="bar"></div>
        </div>
        <div class="input-container">
            <input name="vk" type="text" id="vk" required="required"/>
            <label for="vk">Ссылка на профиль VK</label>
            <div class="bar"></div>
        </div>
      <div class="input-container">
        <input name="password" type="password" id="reg_password" required="required"/>
        <label for="reg_password">Пароль</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Зарегистрироваться</span></button>
      </div>
    </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="../js/login_js.js"></script>

</body>
</html>
