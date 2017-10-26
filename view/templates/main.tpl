{% extends 'strukture.tpl' %}
{% block html_title %}{{ parent() }} | Список членов клана{% endblock %}
{% block main %}
<div class="center">Статистика</div>
<div id="result"></div>
<div>
    <table cellspacing="0" cellpadding="0" border="1px">
        <thead>
            <tr>
                <th>Людей</th>
                <th>Баллы до</th>
                <th>Мирпиты</th>
                <th>ГТЗ</th>
                <th>ГВГ</th>
                <th>ПВП</th>
                <th>ДЦД</th>
                <th>Ремесло</th>
                <th>Помощь</th>
                <th>Должность</th>
                <th>Налоги</th>
                <th>Штрафы</th>
                <th>Склад</th>
                <th>Итого</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th><a href="/users/">{{ Ball.users }}</a>
                </th>
                <td>{{ Ball.ball }}</td>
                <td>{{ Ball.mirpit }}</td>
                <td>{{ Ball.gtz }}</td>
                <td>{{ Ball.gvg }}</td>
                <td>{{ Ball.pvp }}</td>
                <td>{{ Ball.dcd }}</td>
                <td>{{ Ball.remeslo }}</td>
                <td>{{ Ball.help }}</td>
                <td>{{ Ball.oficer }}</td>
                <td>{{ Ball.nalog }}</td>
                <td>{{ Ball.shtraf }}</td>
                <td>{{ Ball.sklad }}</td>
                <td>{{ Ball.ball+Ball.mirpit+Ball.gtz+Ball.gvg+Ball.pvp+Ball.dcd+Ball.remeslo+Ball.help+Ball.oficer+Ball.nalog+Ball.shtraf+Ball.sklad }}</td>
            </tr>
        </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="1px">
        <thead>
            <tr>
                <th class="center">Варов</th>
                <th class="center">Магов</th>
                <th class="center">Лучников</th>
                <th class="center">Жрецов</th>
                <th class="center">Оборотней</th>
                <th class="center">Друидов</th>
                <th class="center">Синов</th>
                <th class="center">Шаманов</th>
                <th class="center">Стражей</th>
                <th class="center">Мистиков</th>
                <th class="center">100+</th>
                <th class="center">100-</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="center"><a href="/class/1/">{{ Class.var }}</a></td>
                <td class="center"><a href="/class/2/">{{ Class.mag }}</a></td>
                <td class="center"><a href="/class/3/">{{ Class.luk }}</a></td>
                <td class="center"><a href="/class/4/">{{ Class.prist }}</a></td>
                <td class="center"><a href="/class/5/">{{ Class.obr }}</a></td>
                <td class="center"><a href="/class/6/">{{ Class.dru }}</a></td>
                <td class="center"><a href="/class/7/">{{ Class.sin }}</a></td>
                <td class="center"><a href="/class/8/">{{ Class.sham }}</a></td>
                <td class="center"><a href="/class/9/">{{ Class.strag }}</a></td>
                <td class="center"><a href="/class/10/">{{ Class.mist }}</a></td>
                <td class="center">{{ Class.sto }}</td>
                <td class="center">{{ Class.nine }}</td>
            </tr>
        </tbody>
    </table>
</div>
<div class="col_12 center">Информация по баллам</div>
<div>
    <div class="col_2">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">8 камни</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Янтарь</th>
                    <td><input type="text" name="yan8" value="{% if Const.yan8!="" %}{{ Const.yan8 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Рубин</th>
                    <td><input type="text" name="rub8" value="{% if Const.rub8!="" %}{{ Const.rub8 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Сапфир</th>
                    <td><input type="text" name="sap8" value="{% if Const.sap8!="" %}{{ Const.sap8 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Топаз</th>
                    <td><input type="text" name="top8" value="{% if Const.top8!="" %}{{ Const.top8 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Изумруд</th>
                    <td><input type="text" name="iz8" value="{% if Const.iz8!="" %}{{ Const.iz8 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Яшма</th>
                    <td><input type="text" name="yash8" value="{% if Const.yash8!="" %}{{ Const.yash8 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">ГВГ</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Был</th>
                    <td><input type="text" name="gvg_in" value="{% if Const.gvg_in!="" %}{{ Const.gvg_in }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Небыл</th>
                    <td><input type="text" name="gvg_out" value="{% if Const.gvg_out!="" %}{{ Const.gvg_out }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col_2">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">9 камни</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Янтарь</th>
                    <td><input type="text" name="yan9" value="{% if Const.yan9!="" %}{{ Const.yan9 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Рубин</th>
                    <td><input type="text" name="rub9" value="{% if Const.rub9!="" %}{{ Const.rub9 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Сапфир</th>
                    <td><input type="text" name="sap9" value="{% if Const.sap9!="" %}{{ Const.sap9 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Топаз</th>
                    <td><input type="text" name="top9" value="{% if Const.top9!="" %}{{ Const.top9 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Изумруд</th>
                    <td><input type="text" name="iz9" value="{% if Const.iz9!="" %}{{ Const.iz9 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Яшма</th>
                    <td><input type="text" name="yash9" value="{% if Const.yash9!="" %}{{ Const.yash9 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">ГТЗ</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Был</th>
                    <td><input type="text" name="gtz_in" value="{% if Const.gtz_in!="" %}{{ Const.gtz_in }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Небыл</th>
                    <td><input type="text" name="gtz_out" value="{% if Const.gtz_out!="" %}{{ Const.gtz_out }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col_2">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">10 камни</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Янтарь</th>
                    <td><input type="text" name="yan10" value="{% if Const.yan10!="" %}{{ Const.yan10 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Рубин</th>
                    <td><input type="text" name="rub10" value="{% if Const.rub10!="" %}{{ Const.rub10 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Сапфир</th>
                    <td><input type="text" name="sap10" value="{% if Const.sap10!="" %}{{ Const.sap10 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Топаз</th>
                    <td><input type="text" name="top10" value="{% if Const.top10!="" %}{{ Const.top10 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Изумруд</th>
                    <td><input type="text" name="iz10" value="{% if Const.iz10!="" %}{{ Const.iz10 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Яшма</th>
                    <td><input type="text" name="yash10" value="{% if Const.yash10!="" %}{{ Const.yash10 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">Ремесло</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Был</th>
                    <td><input type="text" name="remeslo_in" value="{% if Const.remeslo_in!="" %}{{ Const.remeslo_in }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Небыл</th>
                    <td><input type="text" name="remeslo_out" value="{% if Const.remeslo_out!="" %}{{ Const.remeslo_out }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col_2">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">11 камни</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Янтарь</th>
                    <td><input type="text" name="yan11" value="{% if Const.yan11!="" %}{{ Const.yan11 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Рубин</th>
                    <td><input type="text" name="rub11" value="{% if Const.rub11!="" %}{{ Const.rub11 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Сапфир</th>
                    <td><input type="text" name="sap11" value="{% if Const.sap11!="" %}{{ Const.sap11 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Топаз</th>
                    <td><input type="text" name="top11" value="{% if Const.top11!="" %}{{ Const.top11 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Изумруд</th>
                    <td><input type="text" name="iz11" value="{% if Const.iz11!="" %}{{ Const.iz11 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Яшма</th>
                    <td><input type="text" name="yash11" value="{% if Const.yash11!="" %}{{ Const.yash11 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">Мирпит</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Был</th>
                    <td><input type="text" name="mirpit_in" value="{% if Const.mirpit_in!="" %}{{ Const.mirpit_in }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Небыл</th>
                    <td><input type="text" name="mirpit_out" value="{% if Const.mirpit_out!="" %}{{ Const.mirpit_out }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col_2">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">12 камни</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Янтарь</th>
                    <td><input type="text" name="yan12" value="{% if Const.yan12!="" %}{{ Const.yan12 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Рубин</th>
                    <td><input type="text" name="rub12" value="{% if Const.rub12!="" %}{{ Const.rub12 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Сапфир</th>
                    <td><input type="text" name="sap12" value="{% if Const.sap12!="" %}{{ Const.sap12 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Топаз</th>
                    <td><input type="text" name="top12" value="{% if Const.top12!="" %}{{ Const.top12 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Изумруд</th>
                    <td><input type="text" name="iz12" value="{% if Const.iz12!="" %}{{ Const.iz12 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Яшма</th>
                    <td><input type="text" name="yash12" value="{% if Const.yash12!="" %}{{ Const.yash12 }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">ДЦД</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Был</th>
                    <td><input type="text" name="dcd_in" value="{% if Const.dcd_in!="" %}{{ Const.dcd_in }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Небыл</th>
                    <td><input type="text" name="dcd_out" value="{% if Const.dcd_out!="" %}{{ Const.dcd_out }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col_2">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th colspan="2" class="center">Прочее</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Книга времени</th>
                    <td><input type="text" name="book" value="{% if Const.book!="" %}{{ Const.book }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>ПВО</th>
                    <td><input type="text" name="pvo" value="{% if Const.pvo!="" %}{{ Const.pvo }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Эмблема</th>
                    <td><input type="text" name="emblema" value="{% if Const.emblema!="" %}{{ Const.emblema }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>НИС</th>
                    <td><input type="text" name="nis" value="{% if Const.nis!="" %}{{ Const.nis }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
                <tr>
                    <th>Фонд клана %</th>
                    <td><input type="text" name="fond" value="{% if Const.fond!="" %}{{ Const.fond }}{% else %}0{% endif %}" disabled="disabled"></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
{% endblock %}