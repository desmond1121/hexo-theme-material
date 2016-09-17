<div id="pagination">
    <ul class="pagination">
    {% if page.prev == 1 %} 
        {% set prev_link = '/' %}
    {% else %}
        {% set prev_link = '/page/' + page.prev %}
    {% endif %}

    {% if page.current == 1 %} 
        <li class="disabled"><a><i class="material-icons">chevron_left</i></a></li> 
    {% else %}
        <li class="waves-effect"><a href="{{ prev_link }}"><i class="material-icons">chevron_left</i></a></li> 
    {% endif %}


    {% set pageArray = Array(page.total) %}
 
    {% for i, j in pageArray %}
        <li {% if i + 1 == page.current %} class="active" {% endif %} class="waves-effect">
            <a {% if i == 0 %} href="/" {% else %} href="/page/{{ i + 1 }}" {% endif %}>{{i + 1}}</a>
        </li>
    {% endfor %}
    
    {% if page.current == page.total %} 
        <li class="disabled"><a><i class="material-icons">chevron_right</i></a></li> 
    {% else %}
        <li class="waves-effect"><a href="/page/{{ page.next }}"><i class="material-icons">chevron_right</i></a></li> 
    {% endif %}

    </ul>   
</div>
