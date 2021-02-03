<post>
  <div class="post">
    <h3 class="post_title"><a href="/{post.url}">{post.title || ''}</a></h3>
    <div class="meta">
      <small>by</small> <span>{post.author}</span>
	  <img src="{post.img}"/>
      <small>, posted in</small> <span>{post.category}</span>
    </div>
    <p>{opts.excerpt ? post.excerpt : post.content}</p>
    <hr>
  </div>

  <style scoped>
    .post_title {
      margin: 0;
    }
    .post {
      margin-bottom: 15px;
    }
    .post_title a {
      color: #222;
      text-decoration: none;
      font-weight: 100;
    }
    .meta {
      margin-bottom: 15px;
      font-style: italic;
      color: #999;
    }
    .meta span {
      font-weight: 500;
    }
  </style>

</post>
