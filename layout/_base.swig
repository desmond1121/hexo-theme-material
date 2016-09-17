<!doctype html>
<html> 
  <head>
  	{% include '_partials/head.swig' %}
  </head>

  <body>

  	{% include '_partials/nav.swig' %}

    <main id="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {# {% include '_partials/comments.swig' %} #}
        </div>
      </div>
    </main>

    {% include '_partials/footer.swig' %}

    <script type="text/javascript" src="/js/site.js"></script>
  </body>
</html>
