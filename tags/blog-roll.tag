<blog-roll>

  <div if={posts.length === 0}>
    Create your first post in here.<br>
    <a href="/new" class="button button-primary">Create New</a>
  </div>

  <post each={posts} post={url} excerpt="true"></post>

</blog-roll>
