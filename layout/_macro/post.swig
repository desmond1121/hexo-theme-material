{% macro render(post) %}

  <article itemscope itemtype="http://schema.org/Article" class="post-wrapper">
    <div class="card blue-grey z-depth-2">
    
      <div class="card-content white-text">

        <dev class="card-title">{{post.title}}</dev>
          
        <div class="post-meta">
          <span class="post-meta-item-text">{{ __('post.posted') }}</span>

          {{ date(post.date, config.date_format) }}
        </div>

        <div class=card-post-body>{{post.excerpt}}</div>
      </div>

      <div class="card-action">
        <a href="{{ url_for(post.path) }}">READ MORE &raquo;</a>
      </div>
    </div>
  </article>

{% endmacro %}
