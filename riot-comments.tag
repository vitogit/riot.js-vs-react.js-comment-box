<riot-comments>
  <div class="commentBox">
    <h1>Riot Comments</h1>
    <comment-list/>
    <comment-form/>
  </div>  
</riot-comments>

<comment-list>
  <div class="commentList" each={comment in comments} >
    <comment author='{comment.author}' text='{comment.text}'/>
  </div>

  <script>
    this.comments = opts.comments || []
    var self = this
    riot.commentStore.on('add_comment', function(comment) {
      console.log('trigger')
      self.comments.push(comment)
      self.update()
    })      
  </script>
</comment-list>

<comment>
  <div class="comment">
    <h2 class="commentAuthor"> {opts.author}</h2>
    <span>{opts.text} </span>
  </div>
</comment>

<comment-form>
  <form class="commentForm" onsubmit={add}>
    <input type="text" placeholder="Your name" name="input_author"/>
    <input type="text" placeholder="Say something..."name="input_text"/>
    <input type="submit" value="Post" />
  </form>
  
  <script>
    this.add = function(e) {
      var author = this.input_author.value.trim()
      var text = this.input_text.value.trim();
      if (text && author) {
        riot.commentStore.trigger('add_comment', {author: author, text: text})
        this.input_author.value = ''
        this.input_text.value = ''
      }
    }    
  </script>
</comment-form>
