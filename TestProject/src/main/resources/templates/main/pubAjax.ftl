<#list publics as pub>
<div class="col-md-3">
    <div class="wow bounceInUp" data-wow-delay="0.5s">
        <div class="team boxed-grey">
            <div class="inner">
                <h5><a href="${pub.link}" style="color: #888">${pub.name}</a></h5>
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
                    <a href="${pub.link}">
                        <img src="${pub.avatar}" alt="${pub.name}" class="img-responsive img-circle"
                             width="218px" height="218px"
                             style="margin: 0 auto;max-height: 218px;"/></div>
                </a>
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
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</#list>
<script>
    $(document).ready(function () {

        if (!${hasNext?c}) {
            $('.showMore').css('display','none');
        }

    });
</script>