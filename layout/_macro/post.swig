{% macro render(post) %}

  <article itemscope itemtype="http://schema.org/Article" class="post-wrapper">
    <div class="card blue-grey z-depth-2">
    
      <div class="card-content white-text">

        <dev class="card-title">{{post.title}}</dev>
          
        <div class="post-meta">
          <span class="post-meta-item-text">{{ __('post.posted') }}</span>

          {{ date(post.date, config.date_format) }}

          {% if post.tags %}
          <div class="tag-wrapper">
            {% for tag in post.tags %}
                <div class="chip"><span>{{tag.name}}</span></div>
            {% endfor %}
          </div>
          {% endif %}
        </div>
        
        <div class=card-post-body>
        {% if post.excerpt %}
          {{post.excerpt}}
        {% else %}
          {{post.content}}
        {% endif %}
        </div>
        
      </div>

      <div class="card-action">
        <a href="{{ url_for(post.path) }}">READ MORE &raquo;</a>
      </div>
    </div>
  </article>

{% endmacro %}
