int gridSize = 20;
int cols, rows;
int snakeLength = 1;
int[] snakeX, snakeY;
int foodX, foodY;
int directionX = 1;
int directionY = 0;
int playerScore = 0;


boolean dead = false;


int restartOnce = 0;

PImage img;

import processing.sound.*;
SoundFile file;

void setup() {
  size(500, 500);
  img = loadImage("snake.jpg");
  file = new SoundFile(this, "EXCITING SOUND.mp3");
  file.loop();
  cols = floor(width / gridSize);
  rows = floor(height / gridSize);
  snakeX = new int[cols * rows];
  snakeY = new int[cols * rows];
  frameRate(10);
  
}

void draw() {
  background(115, 45, 90);
  image(img, 0, 0);
  moveSnake();
  checkCollision();
  checkFood();
  drawSnake();
  drawFood();
  drawSnake();
  playerScore();
 
}

void moveSnake() {
  for (int i = snakeLength - 1; i > 0; i--) {
    snakeX[i] = snakeX[i - 1];
    snakeY[i] = snakeY[i - 1];
  }
  snakeX[0] += directionX * gridSize;
  snakeY[0] += directionY * gridSize;
  snakeX[0] = constrain(snakeX[0], 0, width - gridSize);
  snakeY[0] = constrain(snakeY[0], 0, height - gridSize);
  dead = false;
}

void checkCollision() {
  for (int i = 0; i < snakeLength; i++) {
    if (snakeX[0] == snakeX[i] && snakeY[0] == snakeY[i]) {
      gameOver();
      dead = true;
    }
  }
}
void restart() {

  snakeX = new int[cols * rows];
  snakeY = new int[cols * rows];
  spawnFood();
  snakeLength = 1;
  dead = false;
  playerScore();
  
}
void checkFood() {
  if (snakeX[0] == foodX && snakeY[0] == foodY) {
    snakeLength++;
    spawnFood();
  }
}

void spawnFood() {
  foodX = floor(random(cols)) * gridSize;
  foodY = floor(random(rows)) * gridSize;
}

void drawSnake() {
  for (int i = 0; i < snakeLength; i++) {
    fill(0, 128, 0);
    strokeWeight(4);
    rect(snakeX[i], snakeY[i], gridSize, gridSize);
    
  }
}

void drawFood() {
  fill(255, 0, 0);
  strokeWeight(1);
  rect(foodX, foodY, gridSize, gridSize);
}

void keyPressed() {
  if (keyCode == UP && directionY != 1) {
    directionX = 0;
    directionY = -1;
  } else if (keyCode == DOWN && directionY != -1) {
    directionX = 0;
    directionY = 1;
  } else if (keyCode == LEFT && directionX != 1) {
    directionX = -1;
    directionY = 0;
  } else if (keyCode == RIGHT && directionX != -1) {
    directionX = 1;
    directionY = 0;
    
  }
}

void gameOver() {
  if (dead) {
    file.loop();
    background(255, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(32);
    fill(255);
    text("GAME OVER ", width / 2, height / 2);
     text("Try Again? ", width / 2, height / 1.7);
      text("Click ENTER ", width / 2, height / 1.5);
    if (keyCode == 10 && restartOnce == 0) {
    restart();
    println("restartOnce");
    
  }
}
}

void playerScore() {
  textSize(20);
  fill(0);
  text("Score : " + (snakeLength - 1), 40, 18);
}
