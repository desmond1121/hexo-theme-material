{% extends '_base.swig' %}
{% import '_macro/post.swig' as post_template %}

{% block content %}
  <section id="posts">
    {% for post in page.posts %}
      {{ post_template.render(post) }}
    {% endfor %}
  </section>

	<section id="post-pagination">
		{% include '_partials/pagination.swig' %}		
	</section>
{% endblock %}
