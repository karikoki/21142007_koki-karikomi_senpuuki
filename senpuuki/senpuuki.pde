float baseH = 10;
float baseX = 0;
float baseY = 0;

float arm1W = 6;
float arm1D = 6;
float arm1L = 20;

float arm2W = 6;
float arm2D = 6;
float arm2L = 40;

float arm3W = 6;
float arm3D = 30;
float arm3L = 6;

float puroperaW = 6;
float puroperaD = 2;
float puroperaL = 30;

float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float l1 = 0;


float dif1 = 1.0;
float dif弱 = 20.0;
float dif中 = 30.0;
float dif強 = 40.0;


void setup(){
  size(1200, 800, P3D);
  
  camera(100, 100, 100, 0, 0, 60, 0, 0, -1);
  
  noStroke();  
}


void draw(){
  
  background(255);
  
  
  if(keyPressed){
    if(key == 'x'){
      baseX = baseX + dif1;
    }
     if(key == 'X'){
      baseX = baseX - dif1;
    }
     if(key == 'y'){
      baseY = baseY + dif1;
    }
     if(key == 'Y'){
      baseY = baseY - dif1;
    }
    if(key == 's'){
      angle1 = angle1 + dif1;
    }
    if(key == 'S'){
      angle1 = angle1 - dif1;
    }
    if(key == 'd'){
      angle2 = angle2 + dif1;
    }
    if(key == 'D'){
      angle2 = angle2 - dif1;
    }
    if(key == 'g'){
      angle3 = angle3 + dif1;
    }
    if(key == 'G'){
      angle3 = angle3 - dif1;
    }
    if(key == 'f'){
      l1 = l1 + dif1;
    }
    if(key == 'F'){
      l1 = l1 - dif1;
    }
    if(key == 'l'){
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      angle4 = 0;
      l1 = 0;
    }
  }
  if(key == 'h'){
      angle4 = angle4 - dif弱;
    }
    if(key == 'j'){
      angle4 = angle4 - dif中;
    }
    if(key == 'k'){
      angle4 = angle4 - dif強;
    }
  

  //base
  translate(baseX,baseY,baseH/2);
  fill(255,200,0);
  box(20,20,baseH);
  stroke(0);
  
  //ketugoububun 1
  rotateZ(radians(angle1));
  translate(0,0,baseH/2+3);
  sphere(3);
  
  //1 link
  translate(0,0,arm1L/2+3);
  fill(255,200,0);
  box(arm1W,arm1D,arm1L);
  stroke(0);
  
  //ketugoububun 2
  translate(0,0,arm1L/2+3);
  rotateX(radians(angle2));
  sphere(3);
  
  //2 link
  translate(0,0,3+arm2L/2+l1);
  fill(255,200,0);
  box(arm2W,arm2D,arm2L+2*l1);
  stroke(0);
  
 //ketugoububun 3
  translate(0,0,arm2L/2+3+l1);
  rotateX(radians(angle3));
  sphere(3);
  
  //3 link
  translate(0,arm3D/2+3,0);
  fill(255,200,0);
  box(arm3W,arm3D,arm3L);
  stroke(0);
  
  //ketugoububun 4
  translate(0,arm3D/2+3,0);
  rotateY(radians(angle4));
  sphere(3);
  
  //1 puropera
  translate(0,0,3+puroperaL/2);
  rotateZ(radians(30));
  fill(255,200,0);
  box(puroperaW,puroperaD,puroperaL);
  stroke(0);
  
  //2 puropera
  translate(0,0,-6-puroperaL);
  rotateZ(radians(-60));
  fill(255,200,0);
  box(puroperaW,puroperaD,puroperaL);
  stroke(0);
  
   //3 puropera
  rotateZ(radians(30));
  translate(3+puroperaL/2,0,3+puroperaL/2);
  rotateX(radians(30));
  fill(255,200,0);
  box(puroperaL,puroperaD,puroperaW);
  stroke(0);
  
   //4 puropera
  translate(-6-puroperaL,0,0);
  rotateX(radians(-60));
  fill(255,200,0);
  box(puroperaL,puroperaD,puroperaW);
  stroke(0);
  
}

    
