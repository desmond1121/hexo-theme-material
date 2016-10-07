<!doctype html>
<html> 
  <head>
  	{% include '_partials/head.swig' %}
  </head>

  <body>
    <div class="row">

      <div class="nav col s4">
        {% include '_partials/side-nav.swig' %}
      </div>

      <div class="content col s8">
        <main id="main">
          <div class="main-inner">
            <div class="content-wrap">
                {% block content %}{% endblock %}
            </div>
          </div>
        </main> 

      </div>    
    </div>

    <script type="text/javascript" src="/js/site.js"></script>
  </body>
</html>
