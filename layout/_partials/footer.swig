<footer class="page-footer">
  <div class="container">
    <div class="row">
      <div class="col l6 s12">
        <h5 class="white-text">Footer Content</h5>
        <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
      </div>

      {% if theme.links %}
      <div class="col l4 offset-l2 s12">
        <h5 class="white-text">{{theme.links_title}}</h5>
        <ul>
          {% for name, path in theme.links %}
            <li><a class="grey-text text-lighten-3" href="{{path}}">{{name}}</a></li>
          {% endfor %}
        </ul>
      </div>
      {% endif %}

    </div>
  </div>
  <div class="footer-copyright">
    <div class="author-container">
    © 2016 {{config.author}}
    <div class="grey-text text-lighten-4 right">Powerd by <a href="https://hexo.io/">Hexo</a> | Theme <a href="">Material</a></div>
    </div>
  </div>
</footer>