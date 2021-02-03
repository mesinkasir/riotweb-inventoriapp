route.base('/');
route.start(true);
function blog_set_view(view, opts) {
  riot.mount('#view', view, opts);
}
route('/', function(){
  blog_set_view('home');
});
route('/about', function(){
  blog_set_view('about');
});
route('/doc', function(){
  blog_set_view('doc');
});
route('/download', function(){
  blog_set_view('download');
});
route('/blog', function(){
  blog_set_view('blog-roll');
});
route('/admin', function(){
  blog_set_view('admin');
});
route('/new', function(){
  blog_set_view('editor');
});
route('/edit/*', function(url){
  blog_set_view('editor', {post:url});
});
route('/*', function(url){
  blog_set_view('post', {post:url});
});
