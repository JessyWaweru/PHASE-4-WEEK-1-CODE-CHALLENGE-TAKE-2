Restaurant.create(name:'KFC',address:"avenue lane")
Restaurant.create(name:"pizza inn",address:'kongolo lane')
Restaurant.create(name:"red ginger",address:'kong lane')

pizzas=Pizza.create([{name:'Hawaian',ingredients:"pineapple,minced beef,cheese,dough"},{name:'ronni',ingredients:'cheese,dough,baloni beef'},{name:"chicken tikka pizza",ingredients:'cheese,dough,chicken tikka'}])
restaurantpizzas=RestaurantPizza.create([{price:1000,restaurant_id:1,pizza_id:2},{price:1200,restaurant_id:2,pizza_id:1},{price:2000,restaurant_id:3,pizza_id:3}])