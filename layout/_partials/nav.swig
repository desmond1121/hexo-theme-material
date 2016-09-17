<div class="navbar-fixed">
	<nav>
	  <div class="nav-wrapper">
	    <a href="#" class="brand-logo">{{ config.title }}</a>
	    <ul id="nav-mobile" class="right hide-on-med-and-down">
	    {% for name, path in theme.menu %}
				  <li><a href="{{ path }}">{{ name }}</a></li>
	    {% endfor %}
	    </ul>
	  </div>
	</nav>
</div>