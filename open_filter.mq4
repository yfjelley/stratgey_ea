bool contorl1(){
   if(run1 && tradetime1()){
      //Print(tradetime1(), "xxx", ae, "xxx", main_equity_stop, "xxx", ae2, "xxx", client_equity_stop);
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae1 >client_equity_stop) return True;
   }
   return False;
}

bool contorl2(){
   //Print(tradetime2(), "xxx", ae, "xxx", main_equity_stop, "xxx", ae2, "xxx", client_equity_stop);
   if(run2 && tradetime2()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae2 >client_equity_stop) return True;
   }
   return False;
}


bool contorl3(){
   if(run3 && tradetime3()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae3 >client_equity_stop) return True;
   }
   return False;
}


bool contorl4(){
   if(run4 && tradetime4()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae4 >client_equity_stop) return True;
   }
   return False;
}


bool contorl5(){
   if(run5 && tradetime5()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae5 >client_equity_stop) return True;
   }
   return False;
}



bool contorl6(){
   if(run6 && tradetime6()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae6 >client_equity_stop) return True;
   }
   return False;
}


bool contorl7(){
   if(run7 && tradetime7()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae7 >client_equity_stop) return True;
   }
   return False;
}


bool contorl8(){
   if(run8 && tradetime8()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae8 >client_equity_stop) return True;
   }
   return False;
}


bool contorl9(){
   if(run9 && tradetime9()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae9 >client_equity_stop) return True;
   }
   return False;
}




bool contorl10(){
   if(run10 && tradetime10()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae10 >client_equity_stop) return True;
   }
   return False;
}


bool contorl11(){
   if(run11 && tradetime11()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae11 >client_equity_stop) return True;
   }
   return False;
}


bool contorl12(){
   if(run12 && tradetime12()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae12 >client_equity_stop) return True;
   }
   return False;
}


bool contorl13(){
   if(run13 && tradetime13()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae13 >client_equity_stop) return True;
   }
   return False;
}





bool contorl14(){
   if(run14 && tradetime14()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae14 >client_equity_stop) return True;
   }
   return False;
}


bool contorl15(){
   if(run15 && tradetime15()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae15 >client_equity_stop) return True;
   }
   return False;
}


bool contorl16(){
   if(run16 && tradetime16()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae16 >client_equity_stop) return True;
   }
   return False;
}


bool contorl17(){
   if(run17 && tradetime17()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae17 >client_equity_stop) return True;
   }
   return False;
}



bool contorl18(){
   if(run18 && tradetime18()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae18 >client_equity_stop) return True;
   }
   return False;
}


bool contorl19(){
   if(run19 && tradetime19()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae19 >client_equity_stop) return True;
   }
   return False;
}


bool contorl20(){
   if(run20 && tradetime20()){
      if(!equity_close_switch) return True;
      if(ae>main_equity_stop && ae20 >client_equity_stop) return True;
   }
   return False;
}


bool tradetime1(){
   if(DayOfWeek()==1 && Hour()>p1_start_hour1 && Hour()< p1_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p1_start_hour2 && Hour()< p1_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p1_start_hour3 && Hour()< p1_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p1_start_hour4 && Hour()< p1_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p1_start_hour5 && Hour()< p1_end_hour5){
      return True;
   }
   return False;
}






bool tradetime2(){
   if(DayOfWeek()==1 && Hour()>p2_start_hour1 && Hour()< p2_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p2_start_hour2 && Hour()< p2_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p2_start_hour3 && Hour()< p2_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p2_start_hour4 && Hour()< p2_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p2_start_hour5 && Hour()< p2_end_hour5){
      return True;
   }
   return False;
}


bool tradetime3(){
   if(DayOfWeek()==1 && Hour()>p3_start_hour1 && Hour()< p3_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p3_start_hour2 && Hour()< p3_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p3_start_hour3 && Hour()< p3_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p3_start_hour4 && Hour()< p3_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p3_start_hour5 && Hour()< p3_end_hour5){
      return True;
   }
   return False;
}





bool tradetime4(){
   if(DayOfWeek()==1 && Hour()>p4_start_hour1 && Hour()< p4_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p4_start_hour2 && Hour()< p4_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p4_start_hour3 && Hour()< p4_end_hour3){
      return True;
   }
   if(DayOfWeek()==4 && Hour()>p4_start_hour4 && Hour()< p4_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p4_start_hour5 && Hour()< p4_end_hour5){
      return True;
   }
   return False;
}




bool tradetime5(){
   if(DayOfWeek()==1 && Hour()>p5_start_hour1 && Hour()< p5_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p5_start_hour2 && Hour()< p5_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p5_start_hour3 && Hour()< p5_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p5_start_hour4 && Hour()< p5_end_hour4){
      return True;
   }
   if(DayOfWeek()==5 && Hour()>p5_start_hour5 && Hour()< p5_end_hour5){
      return True;
   }
   return False;
}



bool tradetime6(){
   if(DayOfWeek()==1 && Hour()>p6_start_hour1 && Hour()< p6_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p6_start_hour2 && Hour()< p6_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p6_start_hour3 && Hour()< p6_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p6_start_hour4 && Hour()< p6_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p6_start_hour5 && Hour()< p6_end_hour5){
      return True;
   }
   return False;
}




bool tradetime7(){
   if(DayOfWeek()==1 && Hour()>p7_start_hour1 && Hour()< p7_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p7_start_hour2 && Hour()< p7_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p7_start_hour3 && Hour()< p7_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p7_start_hour4 && Hour()< p7_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p7_start_hour5 && Hour()< p7_end_hour5){
      return True;
   }
   return False;
}



bool tradetime8(){
   if(DayOfWeek()==1 && Hour()>p8_start_hour1 && Hour()< p8_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p8_start_hour2 && Hour()< p8_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p8_start_hour3 && Hour()< p8_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p8_start_hour4 && Hour()< p8_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p8_start_hour5 && Hour()< p8_end_hour5){
      return True;
   }
   return False;
}



bool tradetime9(){
   if(DayOfWeek()==1 && Hour()>p9_start_hour1 && Hour()< p9_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p9_start_hour2 && Hour()< p9_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p9_start_hour3 && Hour()< p9_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p9_start_hour4 && Hour()< p9_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p9_start_hour5 && Hour()< p9_end_hour5){
      return True;
   }
   return False;
}



bool tradetime10(){
   if(DayOfWeek()==1 && Hour()>p10_start_hour1 && Hour()< p10_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p10_start_hour2 && Hour()< p10_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p10_start_hour3 && Hour()< p10_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p10_start_hour4 && Hour()< p10_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p10_start_hour5 && Hour()< p10_end_hour5){
      return True;
   }
   return False;
}



bool tradetime11(){
   if(DayOfWeek()==1 && Hour()>p11_start_hour1 && Hour()< p11_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p11_start_hour2 && Hour()< p11_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p11_start_hour3 && Hour()< p11_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p11_start_hour4 && Hour()< p11_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p11_start_hour5 && Hour()< p11_end_hour5){
      return True;
   }
   return False;
}



bool tradetime12(){
   if(DayOfWeek()==1 && Hour()>p12_start_hour1 && Hour()< p12_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p12_start_hour2 && Hour()< p12_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p12_start_hour3 && Hour()< p12_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p12_start_hour4 && Hour()< p12_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p12_start_hour5 && Hour()< p12_end_hour5){
      return True;
   }
   return False;
}


bool tradetime13(){
   if(DayOfWeek()==1 && Hour()>p13_start_hour1 && Hour()< p13_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p13_start_hour2 && Hour()< p13_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p13_start_hour3 && Hour()< p13_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p13_start_hour4 && Hour()< p13_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p13_start_hour5 && Hour()< p13_end_hour5){
      return True;
   }
   return False;
}



bool tradetime14(){
   if(DayOfWeek()==1 && Hour()>p14_start_hour1 && Hour()< p14_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p14_start_hour2 && Hour()< p14_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p14_start_hour3 && Hour()< p14_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p14_start_hour4 && Hour()< p14_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p14_start_hour5 && Hour()< p14_end_hour5){
      return True;
   }
   return False;
}


bool tradetime15(){
   if(DayOfWeek()==1 && Hour()>p15_start_hour1 && Hour()< p15_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p15_start_hour2 && Hour()< p15_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p15_start_hour3 && Hour()< p15_end_hour3){
      return True;
   }
   if(DayOfWeek()==4 && Hour()>p15_start_hour4 && Hour()< p15_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p15_start_hour5 && Hour()< p15_end_hour5){
      return True;
   }
   return False;
}



bool tradetime16(){
   if(DayOfWeek()==1 && Hour()>p16_start_hour1 && Hour()< p16_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p16_start_hour2 && Hour()< p16_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p16_start_hour3 && Hour()< p16_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p16_start_hour4 && Hour()< p16_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p16_start_hour5 && Hour()< p16_end_hour5){
      return True;
   }
   return False;
}


bool tradetime17(){
   if(DayOfWeek()==1 && Hour()>p17_start_hour1 && Hour()< p17_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p17_start_hour2 && Hour()< p17_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p17_start_hour3 && Hour()< p17_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p17_start_hour4 && Hour()< p17_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p17_start_hour5 && Hour()< p17_end_hour5){
      return True;
   }
   return False;
}



bool tradetime18(){
   if(DayOfWeek()==1 && Hour()>p18_start_hour1 && Hour()< p18_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p18_start_hour2 && Hour()< p18_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p18_start_hour3 && Hour()< p18_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p18_start_hour4 && Hour()< p18_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p18_start_hour5 && Hour()< p18_end_hour5){
      return True;
   }
   return False;
}



bool tradetime19(){
   if(DayOfWeek()==1 && Hour()>p19_start_hour1 && Hour()< p19_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p19_start_hour2 && Hour()< p19_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p19_start_hour3 && Hour()< p19_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p19_start_hour4 && Hour()< p19_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p19_start_hour5 && Hour()< p19_end_hour5){
      return True;
   }
   return False;
}



bool tradetime20(){
   if(DayOfWeek()==1 && Hour()>p20_start_hour1 && Hour()< p20_end_hour1){
      return True;
   }
   if(DayOfWeek()==2 && Hour()>p20_start_hour2 && Hour()< p20_end_hour2){
      return True;
   }
   if(DayOfWeek()==3 && Hour()>p20_start_hour3 && Hour()< p20_end_hour3){
      return True;
   }
   
   if(DayOfWeek()==4 && Hour()>p20_start_hour4 && Hour()< p20_end_hour4){
      return True;
   }
   
   if(DayOfWeek()==5 && Hour()>p20_start_hour5 && Hour()< p20_end_hour5){
      return True;
   }
   return False;
}

