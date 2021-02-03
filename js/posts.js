
// Posts Mixin
riot.mixin({

  init: function() {

    if ( !localStorage.getItem('posts') ) {
      localStorage.setItem('posts','[]');
    }

    this.posts = JSON.parse(localStorage.getItem('posts'));

    // Check for single post
    if (this.opts.post) {
      for (var i in this.posts) {
        if ( this.posts[i].url === this.opts.post ) {
          this.post = this.posts[i];
          // Add post index to post object
          this.post.index = i;
        }
      }
    }
  },

  save: function() {
    // Stringify Posts array
    var posts_str = JSON.stringify(this.posts);
    localStorage.setItem('posts', posts_str);
  }

});
