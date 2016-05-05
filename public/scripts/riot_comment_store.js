function CommentStore() {
  riot.observable(this) // Riot provides our event emitter.
}
riot.commentStore = new CommentStore()
