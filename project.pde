Table table1;
Table table2;
Table table3;
Table table4;
Table table5;
Table table6;
Table table7;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
float[] first = new float[7];
float[] second = new float[7];
float[] third = new float[7];
float[] fourth = new float[7];
float[] fifth = new float[7];
float[] sixth = new float[7];
float[] sum=new float[7];
PFont font;
float x=180;
float step=125;
float tab=175;
float xx=1000;
float yy=250;
int a=0;
float flag = 0;
boolean over;

void setup() {
  size(1280, 700);
  background(250);
  table1=loadTable("trade08.csv", "header");
  table2=loadTable("trade09.csv", "header");
  table3=loadTable("trade10.csv", "header");
  table4=loadTable("trade11.csv", "header");
  table5=loadTable("trade12.csv", "header");
  table6=loadTable("trade13.csv", "header");
  table7=loadTable("trade14.csv", "header");
  p1 = loadImage("first.jpg");
  p2 = loadImage("second.jpg");
  p3 = loadImage("third.jpg");
  p4 = loadImage("fourth.jpg");
  p5 = loadImage("fifth.jpg");
  p6 = loadImage("sixth.jpg");
  font = createFont("黑体", 16);
  smooth();
  getData();
}

void guideLine() {
  fill(100);
  textFont(font, 35);
  text("上海交通大学2014年秋季学期开学前后一周各食堂消费数据", 200, 60);
  strokeWeight(1);
  stroke(150);
  line(x-40, 100, x-40, 600);
  line(x-40, 600, x+step*6, 600);
  fill(100);
  textFont(font, 20);
  text("一餐", x+25, 625);
  text("二餐", x+25+step, 625);
  text("三餐", x+25+step*2, 625);
  text("四餐", x+25+step*3, 625);
  text("五餐", x+25+step*4, 625);
  text("六餐", x+25+step*5, 625);
}

void guideLines() {
  fill(100);
  textFont(font, 35);
  text("上海交通大学2014年秋季学期开学前后一周各食堂消费数据", 100, 60);
  strokeWeight(1);
  stroke(150);
  line(x, 100, x, 600);
  line(x+tab, 100, x+tab, 600);
  line(x+tab*2, 100, x+tab*2, 600);
  line(x+tab*3, 100, x+tab*3, 600);
  line(x+tab*4, 100, x+tab*4, 600);
  line(x+tab*5, 100, x+tab*5, 600);
  line(x+tab*6, 100, x+tab*6, 600);
  fill(100);
  textFont(font, 16);
  text("9月8日", x-15, 620);
  fill(100);
  textFont(font, 16);
  text("9月9日", x+tab-15, 620);
  fill(100);
  textFont(font, 16);
  text("9月10日", x+tab*2-20, 620);
  fill(100);
  textFont(font, 16);
  text("9月11日", x+tab*3-20, 620);
  fill(100);
  textFont(font, 16);
  text("9月12日", x+tab*4-20, 620);
  fill(100);
  textFont(font, 16);
  text("9月13日", x+tab*5-20, 620);
  fill(100);
  textFont(font, 16);
  text("9月14日", x+tab*6-20, 620);
}


void chooseDay() {
  background(250);
  guideLine();
  chooseDate();
  noStroke();
  fill(200, 0, 0,100);
  rect(x, 600-first[a], 95, first[a]);
  arc(xx, yy, 300, 300, 0, (first[a]/sum[a])*2*PI);
  fill(100);
  textFont(font, 16);
  text(first[a]*300, x+10, 600-first[a]-20);
  fill(200, 100, 0,100);
  rect(x+step, 600-second[a], 95, second[a]);
  arc(xx, yy, 300, 300, (first[a]/sum[a])*2*PI, ((second[a]+first[a])/sum[a])*2*PI);
  fill(100);
  textFont(font, 16);
  text(second[a]*300, x+step+10, 600-second[a]-20);
  fill(100, 0, 100,100);
  rect(x+step*2, 600-third[a], 95, third[a]);
  arc(xx, yy, 300, 300, ((second[a]+first[a])/sum[a])*2*PI, ((third[a]+second[a]+first[a])/sum[a])*2*PI);
  fill(100);
  textFont(font, 16);
  text(third[a]*300, x+step*2+10, 600-third[a]-20);
  fill(0, 100, 100,100);
  rect(x+step*3, 600-fourth[a], 95, fourth[a]);
  arc(xx, yy, 300, 300, ((third[a]+second[a]+first[a])/sum[a])*2*PI, ((fourth[a]+third[a]+second[a]+first[a])/sum[a])*2*PI);
  fill(100);
  textFont(font, 16);
  text(fourth[a]*300, x+step*3+10, 600-fourth[a]-20);
  fill(200, 100, 100,100);
  rect(x+step*4, 600-fifth[a], 95, fifth[a]);
  arc(xx, yy, 300, 300, ((fourth[a]+third[a]+second[a]+first[a])/sum[a])*2*PI, ((fifth[a]+fourth[a]+third[a]+second[a]+first[a])/sum[a])*2*PI);
  fill(100);
  textFont(font, 16);
  text(fifth[a]*300, x+step*4+10, 600-fifth[a]-20);
  fill(0, 0, 100,100);
  rect(x+step*5, 600-sixth[a], 95, sixth[a]);
  arc(xx, yy, 300, 300, ((fifth[a]+fourth[a]+third[a]+second[a]+first[a])/sum[a])*2*PI, ((sixth[a]+fifth[a]+fourth[a]+third[a]+second[a]+first[a])/sum[a])*2*PI);
  fill(100);
  textFont(font, 16);
  text(sixth[a]*300, x+step*5+10, 600-sixth[a]-20);
  fill(100);
  stroke(0);
  rect(0, 100+25*a, 90, 25);
}


void chooseDate() {
  fill(200);
  stroke(0);
  rect(0, 100, 90, 25);
  rect(0, 125, 90, 25);
  rect(0, 150, 90, 25);
  rect(0, 175, 90, 25);
  rect(0, 200, 90, 25);
  rect(0, 225, 90, 25);
  rect(0, 250, 90, 25);
  rect(0, 275, 90, 25);
  fill(255);
  textFont(font, 16);
  text("9月8日", 20, 118);
  text("9月9日", 20, 143);
  text("9月10日", 20, 168);
  text("9月11日", 20, 193);
  text("9月12日", 20, 218);
  text("9月13日", 20, 243);
  text("9月14日", 20, 268);
  text("分类", 20, 293);
}


void mousePressed1() {
  if (mouseX>0&&mouseX<90&&mouseY>100&&mouseY<125&&mousePressed) {
    drawLines1();
  }
  if (mouseX>0&&mouseX<90&&mouseY>125&&mouseY<150&&mousePressed) {
    drawLines2();
  }
  if (mouseX>0&&mouseX<90&&mouseY>150&&mouseY<175&&mousePressed) {
    drawLines3();
  }
  if (mouseX>0&&mouseX<90&&mouseY>175&&mouseY<200&&mousePressed) {
    drawLines4();
  }
  if (mouseX>0&&mouseX<90&&mouseY>200&&mouseY<225&&mousePressed) {
    drawLines5();
  }
  if (mouseX>0&&mouseX<90&&mouseY>225&&mouseY<250&&mousePressed) {
    drawLines6();
  }
  if (mouseX>0&&mouseX<90&&mouseY>250&&mouseY<275&&mousePressed) {
    chooseDay();
    flag=2;
  }
}

void mousePressed2() {
  if (mouseX>0&&mouseX<90&&mouseY>100&&mouseY<125&&mousePressed) {
    a=0;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月8日", 20, 120);
  }
  if (mouseX>0&&mouseX<90&&mouseY>125&&mouseY<150&&mousePressed) {
    a=1;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月9日", 20, 145);
  }
  if (mouseX>0&&mouseX<90&&mouseY>150&&mouseY<175&&mousePressed) {
    a=2;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月10日", 20, 170);
  }
  if (mouseX>0&&mouseX<90&&mouseY>175&&mouseY<200&&mousePressed) {
    a=3;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月11日", 20, 195);
  }
  if (mouseX>0&&mouseX<90&&mouseY>200&&mouseY<225&&mousePressed) {
    a=4;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月12日", 20, 220);
  }
  if (mouseX>0&&mouseX<90&&mouseY>225&&mouseY<250&&mousePressed) {
    a=5;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月13日", 20, 245);
  }
  if (mouseX>0&&mouseX<90&&mouseY>250&&mouseY<275&&mousePressed) {
    a=6;
    chooseDay();
    fill(0,200,0);
    textFont(font, 20);
    text("9月14日", 20, 270);
  }
  if (mouseX>0&&mouseX<90&&mouseY>275&&mouseY<300&&mousePressed) {
    drawLines1();
    flag=1;
  }
}

void draw() {
  if (flag==0) {
    display();
    if (mouseX>50&&mouseX<400&&mouseY>100&&mouseY<330) {
      fill(150, 150, 150, 200);
      rect(50, 100, 350, 230);
      fill(255);
      textFont(font, 20);
      text("餐厅名称：上海交大闵行第一食堂\n\n系统代码：30、99\n\n成立时间：2007年7月4日", 60, 200);
      if (mousePressed) {
        flag=1;
        drawLines1();
      }
    } else if (mouseX>465&&mouseX<815&&mouseY>100&&mouseY<330) {
      fill(150, 150, 150, 200);
      rect(465, 100, 350, 230);
      fill(255);
      textFont(font, 20);
      text("餐厅名称：上海交大闵行第二食堂\n\n系统代码：34、269\n\n成立时间：2007年7月4日", 475, 200);
      if (mousePressed) {
        flag=1;
        drawLines2();
      }
    } else if (mouseX>880&&mouseX<1230&&mouseY>100&&mouseY<330) {
      fill(150, 150, 150, 200);
      rect(880, 100, 350, 230);
      fill(255);
      textFont(font, 20);
      text("餐厅名称：上海交大闵行第三食堂\n\n系统代码：36、268\n\n成立时间：2007年7月4日", 890, 200);
      if (mousePressed) {
        flag=1;
        drawLines3();
      }
    } else if (mouseX>50&&mouseX<400&&mouseY>380&&mouseY<610) {
      fill(150, 150, 150, 200);
      rect(50, 380, 350, 230);
      fill(255);
      textFont(font, 20);
      text("餐厅名称：上海交大闵行第四食堂\n\n系统代码：38、267\n\n成立时间：2007年7月4日", 60, 480);
      if (mousePressed) {
        flag=1;
        drawLines4();
      }
    } else if (mouseX>465&&mouseX<815&&mouseY>380&&mouseY<610) {
      fill(150, 150, 150, 200);
      rect(465, 380, 350, 230);
      fill(255);
      textFont(font, 20);
      text("餐厅名称：上海交大闵行第五食堂\n\n系统代码：33、265\n\n成立时间：2007年7月6日", 475, 480);
      if (mousePressed) {
        flag=1;
        drawLines5();
      }
    } else if (mouseX>880&&mouseX<1230&&mouseY>380&&mouseY<610) {
      fill(150, 150, 150, 200);
      rect(880, 380, 350, 230);
      fill(255);
      textFont(font, 20);
      text("餐厅名称：上海交大闵行第六食堂\n\n系统代码：37、268\n\n成立时间：2012年9月5日", 890, 480);
      if (mousePressed) {
        flag=1;
        drawLines6();
      }
    }
  }
  if (flag==1) {
    mousePressed1();
  }
  if (flag==2) {
    mousePressed2();
  }
}
