final int DIESIDES = 23; // inputs
final int NUMDICE = 30; // inputs
final int BASE = 20;
int ceiling;
int[] counts; // every possible sum
int maxCount = 0; // for scaling image


void setup(){
  
  size(700,300);
  ceiling = height - BASE;
  counts = new int[NUMDICE*DIESIDES];
  
  for(int i = 0; i < counts.length; i++){
    counts[i] = 0;
  }
  
  background(255);
  fill(0);
  frameRate(1000000);
}

void draw(){
  background(255);
  randomResult();
  drawLines();
}

void randomResult(){
  int sum = 0;
  for(int i = 0; i < NUMDICE; i++){
    sum += (int)random(DIESIDES);
  }
  sum = sum;
  counts[sum] = counts[sum] + 1;
  if(counts[sum] > counts[maxCount]){
    maxCount = sum;
  }
}

void drawLines(){
  float step = width/(counts.length-1);
  
  for(int i = 0; i < counts.length; i++){
    int offset = i*((int)step);
    int lineHeight = (ceiling-BASE)*(counts[i])/counts[maxCount] + BASE;
    ellipse(offset,height - lineHeight, 1, 10);
  }
  
}