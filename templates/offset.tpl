<apply template="_base">

  <bind tag="page-title">Libby's website</bind>

  <!-- Main -->
  <div id="main">

    <wp>
      <wpPosts>

        <!-- Post -->
        <article class="post">
          <header>
	    <div class="title">
	      <h2><wpDate><a href="/blog/${wpYear}/${wpMonth}/${wpSlug}">
                <wpTitle />
              </a></wpDate></h2>
	      <p><wpExcerpt /></p>
	    </div>
	    <div class="meta">
	      <wpDate><time class="published" datetime="${wpYear}-${wpMonth}-${wpDay}">
                <wpYear />/<wpMonth />/<wpDay /></time></wpDate>
	        <a href="#" class="author"><span class="name">
                  <wpAuthor />
                </span>
                <img src="/static/images/avatar.jpg" alt="" /></a>
	    </div>
          </header>
          <a href="#" class="image featured"><img src="static/images/pic01.jpg" alt="" /></a>
          <wpContent />
          <footer>
	    <ul class="actions">
	      <li><a href="/blog/${wpYear}/${wpMonth}/${wpSlug}" class="button big">Continue Reading</a></li>
	    </ul>
	    <ul class="stats">
	      <li><a href="#">General</a></li>
	      <li><a href="#" class="icon fa-heart">28</a></li>
	      <li><a href="#" class="icon fa-comment">128</a></li>
	    </ul>
          </footer>
        </article>
      </wpPosts>
    </wp>

    <!-- Pagination -->
    <ul class="actions pagination">
      <li><a href="" class="disabled button big previous">Previous Page</a></li>
      <li><a href="#" class="button big next">Next Page</a></li>
    </ul>

  </div>

</apply>
