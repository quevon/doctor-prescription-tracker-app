const name = "name"

console.log(name);

// const test = document.getElementById("test")


// test.onclick = () =>{
//     console.log("true")
// }

// var hello;

// hello = () => {
//   return "Hello World!";
// }

// document.getElementById("demo").innerHTML = hello();

function showNav() { 
    document.getElementById("nav_container").style.left = "0";
    // console.log("hello");
}
 document.addEventListener('turbolinks:load', () => {  
    const clickButton = document.getElementById("button-click"); 
    clickButton.addEventListener("click", showNav); 
    
  });


  function hideNav() { 
    document.getElementById("nav_container").style.left = "-355px";
    // console.log("hello");
}
  document.addEventListener('turbolinks:load', () => {  
    const clickButton = document.getElementById("button-click1"); 
    clickButton.addEventListener("click", hideNav); 
  });


//   function test() { 
//     // document.getElementById("menu-bar1").style.left = "0";
//     console.log("hello");
// }
//   window.addEventListener('load', () => {  
//     const clickButton = document.getElementById("menu-bar1"); 
//     clickButton.addEventListener("click", test); 
//   });
