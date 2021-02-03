<editor>

  <input class="u-full-width title" type="text" ref="post_title" placeholder="Post Title" value={post ? post.title : ''}>
  <div class="row">
    <input class="four columns" type="text" ref="post_author" placeholder="Author" value={post ? post.author : ''}>
    <input class="four columns" type="text" ref="post_img" placeholder="URL Image" value={post ? post.img : ''}>
    <input class="four columns" type="text" ref="post_category" placeholder="Category" value={post ? post.category : ''}>
  </div>
  <textarea ref="post_content" class="u-full-width" placeholder="Post Content">
  <div id="editor">  {post ? post.content : ''}</div>
  </textarea>
  
  <div class="row">
    <button if={post} onclick={delete_post}>Delete Post</button>
    <input onclick={add_post} type="submit" class="button button-primary u-pull-right" value={opts.post ? 'Update' :
      'Publish'}>
  </div>

  <style scoped>
    .title {
      height: 75px;
      font-size: 36px;
    }

    textarea {
      height: 300px;
      max-width: 100%;
      min-width: 100%;
    }
  </style>

  <script>
    // Delete post
    this.delete_post = function () {
      if (confirm('Are you sure you want to permanently delete this post?')) {
        this.posts.splice(this.post.index, 1);
        this.save();
        route('/');
      }
    }
        ClassicEditor
                                .create( document.querySelector( '#editor' ) )
                                .then( editor => {
                                        console.log( editor );
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );
    // Save new post
    this.add_post = function (e) {

      // Get post values
      var new_post = {
        title: this.refs.post_title.value,
        author: this.refs.post_author.value,
        category: this.refs.post_category.value,
        content: this.refs.post_content.value,
        url: this.refs.post_title.value.toLowerCase().split(' ').join('-'),
        excerpt: this.refs.post_content.value.split(/\s+/).slice(0, 30).join(' ')
      };
      // Add new post object to posts array (posts mixin) or update the single post being edited
      if (!this.post) {
        this.posts.push(new_post);
      } else {
        this.posts[this.post.index] = new_post;
      }
      // Save updated posts array to localstorage (posts mixin)
      this.save();
      // Redirect back to homepage (blog-roll)
      route('/');
    };
  </script>

</editor>