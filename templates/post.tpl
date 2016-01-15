<apply template="_base">

  <bind tag="page-title">Libby's website</bind>

  <!-- Main -->
  <div id="main">
    <wp>
      
      <wpPostByPermalink>
        
        <div class="post-date">
          <wpDate><wpMonth />, <wpDay />, <wpYear /></wpDate>
        </div>

        <div class="post-title">
          <h2><wpTitle /></h2>
        </div>

        <div class="post-featured-image">
          <wpFeaturedImage>
            <wpContent />
          </wpFeaturedImage>
        </div>

        <div class="post-byline">
          by <wpAuthor><wpName /></wpAuthor>
        </div>

        <div class="post-content">
          <wpContent />
        </div>

      </wpPostByPermalink>

    </wp>
  </div>
</apply>