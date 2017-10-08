// LANGUAGE: Javascript
// AUTHOR: Alice Chuang
// GITHUB: https://github.com/AliceWonderland

var Person = function(name, location, email){
  this.name = (name) ? name : "Anyonymous";
  this.place = (location) ? location : "USA";
  this.email = (email) ? email : "user@github.com";
}

Person.prototype.greeting = function(msg){
  var str = "Hacktoberfest Hello by " + this.name;
  msg = (msg) ? msg : "Gimme all the dogs!";
  console.log(str);
  console.log(msg);
  return str;
}

var myself = new Person('Alice','NYC','test@gmail.com');
myself.greeting('Hi, Melanie! Email me here at ' + myself.email + ' !!');