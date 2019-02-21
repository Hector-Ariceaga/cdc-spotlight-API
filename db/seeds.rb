articles = Article.create([{title: 'Test Title 1', author: 'Test Author 1', content: 'Test Content', description: 'Test Description', url: 'testurl.com'}, {title: 'Test Title 2', author: 'Test Author 2', content: 'Test Content', description: 'Test Description', url: 'testurl.com'}, {title: 'Test Title 3', author: 'Test Author 3', content: 'Test Content', description: 'Test Description', url: 'testurl.com'}])

articles.first.comments.create([{username: 'Mike', content: 'Wow!', review: true},{username: 'Molly', content: 'boo!', review: false},{username: 'Sam', content: 'Neat!', review: true}])


articles.last.comments.create([{username: 'Paul', content: 'Wow!', review: true},{username: 'Jan', content: 'boo!', review: false},{username: 'Phil', content: 'Neat!', review: true}])