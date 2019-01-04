void getData() {
  for (int i=0; i<7; i++) {
    first[i]=0;
    second[i]=0;
    third[i]=0;
    fourth[i]=0;
    fifth[i]=0;
    sixth[i]=0;
  }

  for (int i=0; i<table1.getRowCount(); i++) {
    TableRow row1=table1.getRow(i);
    if (row1.getFloat(2)==30||row1.getFloat(2)==99) {
      first[0]=first[0]+row1.getFloat(4);
    }
    if (row1.getFloat(2)==34||row1.getFloat(2)==269) {
      second[0]=second[0]+row1.getFloat(4);
    }
    if (row1.getFloat(2)==36||row1.getFloat(2)==268) {
      third[0]=third[0]+row1.getFloat(4);
    }
    if (row1.getFloat(2)==38||row1.getFloat(2)==267) {
      fourth[0]=fourth[0]+row1.getFloat(4);
    }
    if (row1.getFloat(2)==33||row1.getFloat(2)==265) {
      fifth[0]=fifth[0]+row1.getFloat(4);
    }
    if (row1.getFloat(2)==37||row1.getFloat(2)==266) {
        sixth[0]=sixth[0]+row1.getFloat(4);
    }
  }

  for (int i=0; i<table2.getRowCount(); i++) {
    TableRow row2=table2.getRow(i);
    if (row2.getFloat(2)==30||row2.getFloat(2)==99) {
      first[1]=first[1]+row2.getFloat(4);
    }
    if (row2.getFloat(2)==34||row2.getFloat(2)==269) {
      second[1]=second[1]+row2.getFloat(4);
    }
    if (row2.getFloat(2)==36||row2.getFloat(2)==268) {
      third[1]=third[1]+row2.getFloat(4);
    }
    if (row2.getFloat(2)==38||row2.getFloat(2)==267) {
      fourth[1]=fourth[1]+row2.getFloat(4);
    }
    if (row2.getFloat(2)==33||row2.getFloat(2)==265) {
      fifth[1]=fifth[1]+row2.getFloat(4);
    }
    if (row2.getFloat(2)==37||row2.getFloat(2)==266) {
      sixth[1]=sixth[1]+row2.getFloat(4);
    }
  }

  for (int i=0; i<table3.getRowCount(); i++) {
    TableRow row3=table3.getRow(i);
    if (row3.getFloat(2)==30||row3.getFloat(2)==99) {
      first[2]=first[2]+row3.getFloat(4);
    }
    if (row3.getFloat(2)==34||row3.getFloat(2)==269) {
      second[2]=second[2]+row3.getFloat(4);
    }
    if (row3.getFloat(2)==36||row3.getFloat(2)==268) {
      third[2]=third[2]+row3.getFloat(4);
    }
    if (row3.getFloat(2)==38||row3.getFloat(2)==267) {
      fourth[2]=fourth[2]+row3.getFloat(4);
    }
    if (row3.getFloat(2)==33||row3.getFloat(2)==265) {
      fifth[2]=fifth[2]+row3.getFloat(4);
    }
    if (row3.getFloat(2)==37||row3.getFloat(2)==266) {
      sixth[2]=sixth[2]+row3.getFloat(4);
    }
  }

  for (int i=0; i<table4.getRowCount(); i++) {
    TableRow row4=table4.getRow(i);
    if (row4.getFloat(2)==30||row4.getFloat(2)==99) {
      first[3]=first[3]+row4.getFloat(4);
    }
    if (row4.getFloat(2)==34||row4.getFloat(2)==269) {
      second[3]=second[3]+row4.getFloat(4);
    }
    if (row4.getFloat(2)==36||row4.getFloat(2)==268) {
      third[3]=third[3]+row4.getFloat(4);
    }
    if (row4.getFloat(2)==38||row4.getFloat(2)==267) {
      fourth[3]=fourth[3]+row4.getFloat(4);
    }
    if (row4.getFloat(2)==33||row4.getFloat(2)==265) {
      fifth[3]=fifth[3]+row4.getFloat(4);
    }
    if (row4.getFloat(2)==37||row4.getFloat(2)==266) {
      sixth[3]=sixth[3]+row4.getFloat(4);
    }
  }

  for (int i=0; i<table5.getRowCount(); i++) {
    TableRow row5=table5.getRow(i);
    if (row5.getFloat(2)==30||row5.getFloat(2)==99) {
      first[4]=first[4]+row5.getFloat(4);
    }
    if (row5.getFloat(2)==34||row5.getFloat(2)==269) {
      second[4]=second[4]+row5.getFloat(4);
    }
    if (row5.getFloat(2)==36||row5.getFloat(2)==268) {
      third[4]=third[4]+row5.getFloat(4);
    }
    if (row5.getFloat(2)==38||row5.getFloat(2)==267) {
      fourth[4]=fourth[4]+row5.getFloat(4);
    }
    if (row5.getFloat(2)==33||row5.getFloat(2)==265) {
      fifth[4]=fifth[4]+row5.getFloat(4);
    }
    if (row5.getFloat(2)==37||row5.getFloat(2)==266) {
      sixth[4]=sixth[4]+row5.getFloat(4);
    }
  }

  for (int i=0; i<table6.getRowCount(); i++) {
    TableRow row6=table6.getRow(i);
    if (row6.getFloat(2)==30||row6.getFloat(2)==99) {
      first[5]=first[5]+row6.getFloat(4);
    }
    if (row6.getFloat(2)==34||row6.getFloat(2)==269) {
      second[5]=second[5]+row6.getFloat(4);
    }
    if (row6.getFloat(2)==36||row6.getFloat(2)==268) {
      third[5]=third[5]+row6.getFloat(4);
    }
    if (row6.getFloat(2)==38||row6.getFloat(2)==267) {
      fourth[5]=fourth[5]+row6.getFloat(4);
    }
    if (row6.getFloat(2)==33||row6.getFloat(2)==265) {
      fifth[5]=fifth[5]+row6.getFloat(4);
    }
    if (row6.getFloat(2)==37||row6.getFloat(2)==266) {
      sixth[5]=sixth[5]+row6.getFloat(4);
    }
  }

  for (int i=0; i<table7.getRowCount(); i++) {
    TableRow row7=table7.getRow(i);
    if (row7.getFloat(2)==30||row7.getFloat(2)==99) {
      first[6]=first[6]+row7.getFloat(4);
    }
    if (row7.getFloat(2)==34||row7.getFloat(2)==269) {
      second[6]=second[6]+row7.getFloat(4);
    }
    if (row7.getFloat(2)==36||row7.getFloat(2)==268) {
      third[6]=third[6]+row7.getFloat(4);
    }
    if (row7.getFloat(2)==38||row7.getFloat(2)==267) {
      fourth[6]=fourth[6]+row7.getFloat(4);
    }
    if (row7.getFloat(2)==33||row7.getFloat(2)==265) {
      fifth[6]=fifth[6]+row7.getFloat(4);
    }
    if (row7.getFloat(2)==37||row7.getFloat(2)==266) {
      sixth[6]=sixth[6]+row7.getFloat(4);
    }
  }

  for (int i=0; i<7; i++) {
    first[i] = first[i]/30000;
    second[i] = second[i]/30000;
    third[i] = third[i]/30000;
    fourth[i] = fourth[i]/30000;
    fifth[i] = fifth[i]/30000;
    sixth[i] = sixth[i]/30000;
    sum[i] = first [
      i] + second[i] + third[i] + fourth[i] + fifth[i] + sixth[i];
    println(third[i]);
  }
}
