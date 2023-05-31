type url = {
  /* path takes window.location.pathname, like "/book/title/edit" and turns it into `list{"book", "title", "edit"}` */
  path: list<string>,
  /* the url's hash, if any. The # symbol is stripped out for you */
  hash: string,
  /* the url's query params, if any. The ? symbol is stripped out for you */
  search: string
}

// url: www.hello.com/book/10/edit?name=Jane#author
// {
//   path: list{"book", "10", "edit"},
//   hash: "author",
//   search: "name=Jane"
// }
