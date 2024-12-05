# W7: MongoDB Activity
### Exercise 1: Set Database
`use sample_mflix`
![](W7%20MongoDB%20Activity/image.png)
### Exercise 2: find()
`db.theaters.find()`
![](W7%20MongoDB%20Activity/image%202.png)
### Exercise 3: findOne()
`db.theaters.findOne()`
![](W7%20MongoDB%20Activity/image%203.png)

### Exercise 4: Querying Movies
`db.movies.find({year: 1921})`
![](W7%20MongoDB%20Activity/image%204.png)
### Exercise 5: Query The First Movie
`db.movies.find({rated: “TV-PG”})`
![](W7%20MongoDB%20Activity/image%205.png)
### Exercise 6: Inclusive Projection
`db.movies.find({year: 1921}, {title:1,plot:1,rated:1})`
![](W7%20MongoDB%20Activity/image%206.png)
### Exercise 7: Exclusive Projection
`db.movies.find({rated: "TV-PG"}, {_id: 0,num_mflix_comments:0,award:0,tomatoes: 0})`
![](W7%20MongoDB%20Activity/image%207.png)
### Exercise 8:  the id field
`db.movies.findOne({rated: "TV-PG"},{_id:0,title:1,plot:1,rated:1})`
![](W7%20MongoDB%20Activity/image%208.png)<!-- {"width":566} -->