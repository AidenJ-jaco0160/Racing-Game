PImage car1;
PImage car1left;
PImage car1right;
PImage road;
PImage strip;
PImage car2;
PImage car3;
PImage car4;
PImage speed20;
PImage speed15;
PImage speed30;
PImage car6;
PImage car6left;
PImage car6right;
void setup(){
 size(600,600);
 car1 = loadImage("car1.png");
 car2 = loadImage("car2.png");
 car3 = loadImage("car3.png");
 car4 = loadImage("car4.png");
 car6 = loadImage("car6.png");
 car1left = loadImage("car1left.png");
 car1right = loadImage("car1right.png");
 car6left = loadImage("car6left.png");
 car6right = loadImage("car6right.png");
 road = loadImage("road.png"); 
 strip = loadImage("strip.png"); 
 speed20 = loadImage("20speed.png"); 
 speed15 = loadImage("15speed.png"); 
 speed30 = loadImage("30speed.png"); 
}
int car1width = 53;
int car1height = 100;
int car1x = 100-(car1width/2);
float car1y = 300+(car1height/2);
int car6x = 400;
int car6width = 53;
int car6height = 100;
boolean car6mleft = false;
boolean car6mright = false;
String car6direction = "straight";
float car6y = 300+(car1height/2);
String car1direction = "straight";
boolean car1mleft = false;
boolean car1mright = false;
int count = 0;
int countend;
int stripy = -101;
int stripy2= 250;
int carspeed = 20;
boolean canmove = true;
boolean canmove2 = true;
float car2x = 400;
int car2y = -101;
float car3x = 500;
int car3y = -450;
float car4x = 100;
int car4y = -265;
float car5x = 200;
int car5y = 165;
boolean moving = true;
int score = 0;
int high = 0;
int player = 2;
boolean car6mleftg = false;
boolean car6mrightg = false;
String car6directiong = "straight";
int gap = 1;
int score2 = 0;
int high2 = 0;
void draw(){
  image(road,0,0,600,600);
      if(count == 0){
      countend = 3;
      for(count = 0; count < countend; count = count + 1){
      // cem1 = 0;
      // cem2 = 0;
      // cem3 = 0;
      // cem4 = 0;
      }
      if(count >= countend){
      count = 0;
        }
      }  
      if(count < countend){
      for(count = 0;count < countend; count = count + 1){
      }
      }
      if(count >= countend){
      if(moving == true){
        //moving start

        
        stripy = stripy + carspeed;
        stripy2 = stripy2 + carspeed;
       if(player == 1){
        car2y = car2y + (carspeed/4 + 5);
        car3y = car3y + (carspeed/4 + 5);
        car4y = car4y + (carspeed/4);
        car5y = car5y + (carspeed/4);
       }
       if(player == 2){
       car3y = car3y + (carspeed/4);
        car4y = car4y + (carspeed/4);  
       car5y = -200; 
         
       }
        if(canmove == false){
        car1y = car1y + (carspeed/4);
        // image(car1dam,car1x,car1y);
        // car1direction = "straight";
        car1mright = false;
        car1mleft = false;
        }
        if(canmove2 == false){
        car6y = car6y + (carspeed/4);
        // image(car1dam,car1x,car1y);
        // car1direction = "straight";
        car6mright = false;
        car6mleft = false;
        }
        
        if(player == 2 && canmove2 == true){
        score2 = score2 + 5; 
        }
        if(canmove == true){
        if(carspeed == 20){
        score = score + 5; 
        }
        if(carspeed == 30){
        score = score + 10;  
        }
        if(carspeed == 15){
        score = score + 1;  
        }
        }
        if(player == 1){
        // if(car6directiong == "left"){
        if(car6mleftg == true){
        car6x = car6x-5; 
        car6mleftg = false;
        // car6directiong = "straight";
        // image(car6left,car6x-7,car6y);
        }
        // if(car6directiong == "right"){
        if(car6mrightg == true){
        car6x = car6x+5; 
        car6mrightg = false;
        // car6directiong = "straight";
        // image(car6right,car6x,car6y);
        }
        if(carspeed == 15){
         car6y = car6y - 5; 
        }
        if(carspeed == 30){
         car6y = car6y + 0.5; 
        }
        }
        // car6direction/g = "straight";
         
         
         
         
        //moving end
      }
      count = 1;
      }
image(strip,300-(25/2),stripy);
image(strip,300-(25/2),stripy2);
image(car2,car2x,car2y);
image(car3,car3x,car3y);
image(car4,car4x,car4y);
image(car2,car5x,car5y);
// if(player == 2){
image(car6,car6x,car6y);
// }
if(stripy > 700){
 stripy = -101; 
}
if(stripy2 > 700){
 stripy2 = -101; 
}
if(car2y > 700){
 car2x = random(300,549); 
 car2y = -101;
}
if(car3y > 700){
 car3x = random(300,549); 
 car3y = -101;
}
if(car4y > 700){
 car4x = random(1,250); 
 car4y = -101;
}
if(car5y > 700){
 car5x = random(1,250); 
 car5y = -101;
}
if(player == 1){
image(car6,car6x,car6y);


if(canmove2 == true){
// if(car6y - car5y < car6y - car2y){
if(car6x > car5x-(53 + gap) && car6x < car5x + (53 + gap)){
car6mrightg = true;
}
// }
// if(car6y - car2y < car6y - car3y){
if(car6x > car2x-(53 + gap) && car6x < car2x + (53 + gap)){
car6mleftg = true; 
}
// }
// if(car6y - car4y < car6y - car3y){
if(car6x > car4x-(53 + gap) && car6x < car4x +(53 + gap)){
car6mrightg = true;
}
// }
// if(car6y - car3y < car6y - car2y && car6y - car3y < car6y - car4y && car6y - car3y < car6y - car5y){
if(car6x > car3x-(53 + gap) && car6x < car3x +(53 + gap)){
car6mleftg = true;
}
// }
int rfghytgfv;
if(car6mleftg == true && car6mrightg == true){
 car6mrightg = false; 
}
}
// println(car6x);

// if(car6x > car2x-(53 + gap) && car6x < car2x + (53 + gap) || car6x > car3x-(53 + gap) && car6x < car3x +(53 + gap)){
//   car6mleftg = true; 
// }
// if(car6x > car4x-(53 + gap) && car6x < car4x +(53 + gap) || car6x > car5x-(53 + gap) && car6x < car5x +(53 + gap)){
//  car6mrightg = true; 
// }
}
// if(car6mleft == true && car6mright == true){
// car6mleft= false;
// }

if(car1direction == "straight"){
  car1width = 53;
  car1height = 100;
  image(car1,car1x,car1y,car1width,car1height);  
  }
  if(car6direction == "straight"){
  car6width = 53;
  car6height = 100;
  image(car6,car6x,car6y,car6width,car6height);  
  }
  // if(car1mleft == true && car1mright == true){
  //  car1direction = "straight"; 
  // //  float r = random(500)010;
  // //  if(r >= 250){
  //  // car1mright = false;
  // //  }
  // //  if(r < 250){ 
  //  // car1mleft = false;
  // //  }
  // }
  if(car1direction == "left"){
  // car1width = 70;
  // car1height = 103;
  image(car1left,car1x-10,car1y); 
  // car1x = car1x - 5;
  }
    if(car6direction == "left"){
  car6width = 70;
  car6height = 103;
  image(car6left,car6x-10,car6y,car6width,car6height); 
  // car1x = car1x - 5;
  }
  if(car1mleft == true){
  car1direction = "left"; 
  if(carspeed == 20){
  car1x = car1x - 5; 
  }
  if(carspeed == 30){
  car1x = car1x - 7;  
  }
  if(carspeed == 15){
  car1x = car1x - 3;  
  }
  }
  if(player == 2){
  if(car6mleft == true){
  car6direction = "left"; 
  // if(carspeed == 20){
  car6x = car6x - 5; 
  // }
  }
  if(car6mright == true){
  car6direction = "right"; 
  // if(carspeed == 20){
  car6x = car6x + 5; 
  // }
  }
  }
  if(car1mright == true){
  car1direction = "right"; 
   if(carspeed == 20){
  car1x = car1x + 5; 
  }
  if(carspeed == 30){
  car1x = car1x + 7;  
  }
  if(carspeed == 15){
  car1x = car1x + 3;  
  }
  }
  // if(car1mright == true){
  // car1direction = "right"; 
  //  if(carspeed == 20){
  // car6x = car6x + 5; 
  // }
  // }
  if(car1direction == "right"){
  // car1width = 70;
  // car1height = 103;
  image(car1right,car1x-7,car1y);   
  // car1x = car1x + 5;
  }
  if(car6direction == "right"){
  car6width = 70;
  car6height = 103;
  image(car6right,car6x-7,car6y,car6width,car6height);   
  // car1x = car1x + 5;
  }
  // println(stripy + "," + stripy2);
  println("Red Car: " + car6mleftg + "," + car6mrightg);
  while(car1x + car1width > 600){
   car1x = car1x - 1; 
  }
  while(car6x + car6width > 600){
   car6x = car6x - 1; 
  }
  while(car1x-10 < 0){
  car1x = car1x + 1;
  }
  while(car6x-10 < 0){
  car6x = car6x + 1;
  }
  if(score > high){
  high = score; 
 }
 if(score2 > high2){
  high2 = score2; 
 }
  if(car1x-10 > car2x && car1x < car2x + car1width && car1y > car2y - car1height && car1y < car2y + 100){
   canmove = false; 
  }
  if(car1x+car1width > car2x && car1x < car2x + car1width && car1y > car2y - car1height && car1y < car2y + 100){
   canmove = false; 
  }
  if(car1x-10 > car3x && car1x < car3x + car1width && car1y > car3y - car1height && car1y < car3y + 100){
  canmove = false; 
  }
  if(car1x+car1width > car3x && car1x < car3x + car1width && car1y > car3y - car1height && car1y < car3y + 100){
  canmove = false; 
  }
    if(car1x-10 > car4x && car1x < car4x + car1width && car1y > car4y - car1height && car1y < car4y + 100){
   canmove = false; 
  }
  if(car1x+car1width > car4x && car1x < car4x + car1width && car1y > car4y - car1height && car1y < car4y + 100){
   canmove = false; 
  }
  if(car1x-10 > car5x && car1x < car5x + car1width && car1y > car5y - car1height && car1y < car5y + 100){
   canmove = false; 
  }
  if(car1x+car1width > car5x && car1x < car5x + car1width && car1y > car5y - car1height && car1y < car5y + 100){
   canmove = false; 
  }
    if(car6x-10 > car2x && car6x < car2x + car6width && car6y > car2y - car6height && car6y < car2y + 100){
   canmove2 = false; 
  }
  if(car6x+car6width > car2x && car6x < car2x + car6width && car6y > car2y - car6height && car6y < car2y + 100){
   canmove2 = false; 
  }
  if(car6x-10 > car3x && car6x < car3x + car6width && car6y > car3y - car6height && car6y < car3y + 100){
  canmove2 = false; 
  }
  if(car6x+car6width > car3x && car6x < car3x + car6width && car6y > car3y - car6height && car6y < car3y + 100){
  canmove2 = false; 
  }
    if(car6x-10 > car4x && car6x < car4x + car6width && car6y > car4y - car6height && car6y < car4y + 100){
   canmove2 = false; 
  }
  if(car6x+car6width > car4x && car6x < car4x + car6width && car6y > car4y - car6height && car6y < car4y + 100){
   canmove2 = false; 
  }
  if(car6x-10 > car5x && car6x < car5x + car6width && car6y > car5y - car6height && car6y < car5y + 100){
   canmove2 = false; 
  }
  if(car6x+car6width > car5x && car6x < car5x + car6width && car6y > car5y - car6height && car6y < car5y + 100){
   canmove2 = false; 
  }
  fill(255);
  textSize(30);
  if(player == 1){
  text("Score: "+score,30,30);
  text("High Score: "+high,30,60);
  }
  if(player == 2){
  text("PLayer 1 Score: "+score,30,30);
  text("PLayer 1 High Score: "+high,30,60);  
  text("PLayer 2 Score: "+score,30,90);
  text("PLayer 2 High Score: "+high,30,120);   
  }
   if(car1y > 600 && score > high){
 high = score;
   }
   if(car6y > 600 && score2 > high2){
 high2 = score2;
   }
if(keyPressed == true && key == 'r'){ 
 car1width = 53;
 car1height = 100;
 car1x = 100-(car1width/2);
 car1y = 300+(car1height/2);
 car1direction = "straight";
 car1mleft = false;
 car1mright = false;
 count = 0;
 countend = 3;
 stripy = -101;
 stripy2= 250;
 carspeed = 20;
 canmove = true;
 canmove2 = true;
 car2x = 400;
 car2y = -101;
 car3x = 500;
 car3y = -450;
 car4x = 100;
 car4y = -265;
 car5x = 200;
 car5y = 165;
 moving = true;
 score = 0;
 score2 = 0;
 car6x = 400;
 car6y = 350;
 car6width = 53;
 car6height = 100;
 car6mleft = false;
 car6mright = false;
}
  
    
if(player == 1){  
  if(carspeed == 20){
  image(speed20,600-70,600-70);
  }
  if(carspeed == 30){
  image(speed30,600-70,600-70); 
  }
  if(carspeed == 15){
  image(speed15,600-70,600-70);  
  }
}
if(keyPressed == true){
 if(keyCode == UP){
car6y = car6y - 0.5;
}
if(keyCode == DOWN){
car6y = car6y + 2;
}
}
if(keyPressed == true){
 if(key == 'w'){
car1y = car1y - 0.5;
}
if(key == 's'){
car1y = car1y + 2;
} 
}

}

void keyPressed(){
if(player == 1){
if(canmove == true){
if(key == 'a'){
car1direction = "left";  
car1mleft = true;
}
if(key == 'd'){
car1direction = "right"; 
car1mright = true;
} 
if(key == 'w'){
carspeed = 30;
}
if(key == 's'){
carspeed = 15;
}
}
}
if(player == 2){
 if(canmove == true){
if(key == 'a'){
car1direction = "left";  
car1mleft = true;
}
if(key == 'd'){
car1direction = "right"; 
car1mright = true;
}

}
 if(canmove2 == true){
if(keyCode == LEFT){
car6direction = "left";  
car6mleft = true;
}
if(keyCode == RIGHT){
car6direction = "right"; 
car6mright = true;
}

}
}
println(car6direction+ "," + car6mleft+ "," +car6mright+ "," +car6x);



}

void keyReleased(){
 if(player == 1){
  if(canmove == true){
 if(key == 'a'){ 
  car1direction = "straight";
  car1mleft = false;
 }
 if(key == 'd'){ 
  car1direction = "straight";
  car1mright = false;
 }
 if(key == 'w'){
 carspeed = 20;
}
 if(key == 's'){
 carspeed = 20;
}
}
}
  if(canmove == true){
 if(key == 'a'){ 
  car1direction = "straight";
  car1mleft = false;
 }
 if(key == 'd'){ 
  car1direction = "straight";
  car1mright = false;
 }
  }
   if(canmove2 == true){
 if(keyCode == LEFT){ 
  car6direction = "straight";
  car6mleft = false;
 }
 if(keyCode == RIGHT){  
  car6direction = "straight";
  car6mright = false;
 }
   }

}
