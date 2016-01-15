
<!-- Sidebar -->
<section id="sidebar">

  <!-- Intro -->
  <section id="intro">
    <a href="/" class="logo"><img src="static/images/logo.jpg" alt="" /></a>
    <header>
      <h2><page-title /></h2>
      <p>Another fine responsive site template by <a href="http://html5up.net">HTML5 UP</a></p>
    </header>
  </section>

  <!-- Posts List -->
  <section>
    <ul class="posts">
      <wp>
        <wpPosts> 
          <li>
	    <article>
	      <header>
                <h3><wpDate><a href="/blog/${wpYear}/${wpMonth}/${wpSlug}">
                  <wpTitle />
                </a></wpDate></h3>
                <wpDate><time class="published" datetime="${wpYear}-${wpMonth}-${wpDay}">
                  <wpYear />/<wpMonth />/<wpDay /></time></wpDate>
	      </header>
	      <span class="image">
                <wpFeaturedImage>
                  <wpContent />
                </wpFeaturedImage>
              </span>
	    </article>
          </li>
        </wpPosts>
      </wp>
    </ul>
  </section>

  <!-- About -->
  <section class="blurb">
    <h2>About</h2>
    <p>This is my homepage and Fn/Offset demonstration.</p>
    <ul class="actions">
      <li><a href="#" class="button">Learn More</a></li>
    </ul>
  </section>

  <!-- Footer -->
  <section id="footer">
    <ul class="icons">
      <li><a href="https://www.twitter.com/horrorcheck" class="fa-twitter"><span class="label">Twitter</span></a></li>
      <li><a href="https://www.facebook.com/lurkergrrl" class="fa-facebook"><span class="label">Facebook</span></a></li>
      <li><a href="nope" class="fa-instagram"><span class="label">Instagram</span></a></li>
      <li><a href="/rss" class="fa-rss"><span class="label">RSS</span></a></li>
      <li><a href="libby@daydrea.me" class="fa-envelope"><span class="label">Email</span></a></li>
    </ul>
    <p class="copyright">&copy; Libby Horacek. Design: <a href="http://html5up.net">HTML5 UP</a>. Images: <a href="http://unsplash.com">Unsplash</a>.</p>
  </section>

</section>
