void drawLines5() {
  background(250);
  guideLines();
  choosePlace();
  fill(100);
  stroke(0);
  rect(0, 200, 90, 25);
  fill(0, 200, 0);
  textFont(font, 20);
  text("五餐", 20, 220);
  for (int i = 0; i<6; i++) {
    strokeWeight(1);
    stroke(200, 100, 100);
    line(x+i*tab, 600-fifth[i], x+(i+1)*tab, 600-fifth[i+1]);
  }
  
}
