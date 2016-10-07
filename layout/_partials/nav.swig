<nav>
  <div class="nav-wrapper">
  	<i data-activates="slide-out" class="material-icons nav-menu">menu</i>
  	
    <a href="#" class="brand-logo">{{ config.title }}</a>
    <ul id="nav-mobile" class="right hide-on-med-and-down">
    {% for name, path in theme.menu %}
			  <li><a href="{{ path }}">{{ name }}</a></li>
    {% endfor %}
    </ul>
  </div>
</nav>
