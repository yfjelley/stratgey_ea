void close_check(){
   //singlecheck();
   allprofitcheckclose();
   gpfprofitcheckclose();
   if(equity_close_switch && current_platform_num==main_platform_num)equityclose();
}



//所有平台盈利平仓
void allprofitcheckclose(){
   if(current_platform_num==main_platform_num){
      if(allprofit>=alltakeprofit || allprofit <= allstoploss){
         closeSellDelay();
         closeBuyDelay();  
      }
      return;
   }
}

//净值平仓
void equityclose(){
   if(ae<main_equity_stop){
      closeSellquickly();
      closeBuyquickly(); 
   }
   
   if(ae1<client_equity_stop){
      closeSell(magic1);
      closeBuy(magic1);
   }
    
   if(ae2<client_equity_stop){
      closeSell(magic2);
      closeBuy(magic2);
   }


   if(ae3<client_equity_stop){
      closeSell(magic3);
      closeBuy(magic3);
   }


   if(ae4<client_equity_stop){
      closeSell(magic4);
      closeBuy(magic4);
   }


   if(ae5<client_equity_stop){
      closeSell(magic5);
      closeBuy(magic5);
   }


   if(ae6<client_equity_stop){
      closeSell(magic6);
      closeBuy(magic6);
   }


   if(ae7<client_equity_stop){
      closeSell(magic7);
      closeBuy(magic7);
   }

   if(ae8<client_equity_stop){
      closeSell(magic8);
      closeBuy(magic8);
   }

   if(ae9<client_equity_stop){
      closeSell(magic9);
      closeBuy(magic9);
   }

   if(ae10<client_equity_stop){
      closeSell(magic10);
      closeBuy(magic10);
   }


   if(ae11<client_equity_stop){
      closeSell(magic11);
      closeBuy(magic11);
   }

   if(ae12<client_equity_stop){
      closeSell(magic12);
      closeBuy(magic12);
   }

   if(ae13<client_equity_stop){
      closeSell(magic13);
      closeBuy(magic13);
   }

   if(ae14<client_equity_stop){
      closeSell(magic14);
      closeBuy(magic14);
   }

   if(ae15<client_equity_stop){
      closeSell(magic15);
      closeBuy(magic15);
   }

   if(ae16<client_equity_stop){
      closeSell(magic16);
      closeBuy(magic16);
   }

   if(ae17<client_equity_stop){
      closeSell(magic17);
      closeBuy(magic17);
   }

   if(ae18<client_equity_stop){
      closeSell(magic18);
      closeBuy(magic18);
   }


   if(ae19<client_equity_stop){
      closeSell(magic19);
      closeBuy(magic19);
   }


   if(ae20<client_equity_stop){
      closeSell(magic20);
      closeBuy(magic20);
   }

   return;
}

//单组货币对盈利平仓
void gpfprofitcheckclose(){
   if(current_platform_num==main_platform_num){
      Print(contorl1(),"xxx", calgpf1(), "xxx", gtp1,"xxxx", calgpf1(),"xxx", gsp1);
      if(run1 && contorl1() && (calgpf1()> gtp1 || calgpf1() < gsp1))clsgroup(magic1);
      if(run2 && contorl2() && (calgpf2()> gtp2 || calgpf2() < gsp2))clsgroup(magic2);
      if(run3 && contorl3() && (calgpf3()> gtp3 || calgpf3() < gsp3))clsgroup(magic3);
      if(run4 && contorl4() && (calgpf4()> gtp4 || calgpf4() < gsp4))clsgroup(magic4);
      if(run5 && contorl5() && (calgpf5()> gtp5 || calgpf5() < gsp5))clsgroup(magic5);
      if(run6 && contorl6() && (calgpf6()> gtp6 || calgpf6() < gsp6))clsgroup(magic6);
      if(run7 && contorl7() && (calgpf7()> gtp7 || calgpf7() < gsp7))clsgroup(magic7);
      if(run8 && contorl8() && (calgpf8()> gtp8 || calgpf8() < gsp8))clsgroup(magic8);
      if(run9 && contorl9() && (calgpf9()> gtp9 || calgpf9() < gsp9))clsgroup(magic9);
      if(run10 && contorl10() && (calgpf10()> gtp10 || calgpf10() < gsp10))clsgroup(magic10);
      if(run11 && contorl11() && (calgpf11()> gtp11 || calgpf11() < gsp11))clsgroup(magic11);
      if(run12 && contorl12() && (calgpf12()> gtp12 || calgpf12() < gsp12))clsgroup(magic12);
      if(run13 && contorl13() && (calgpf13()> gtp13 || calgpf13() < gsp13))clsgroup(magic13);
      if(run14 && contorl14() && (calgpf14()> gtp14 || calgpf14() < gsp14))clsgroup(magic14);
      if(run15 && contorl15() && (calgpf15()> gtp15 || calgpf15() < gsp15))clsgroup(magic15);
      if(run16 && contorl16() && (calgpf16()> gtp16 || calgpf16() < gsp16))clsgroup(magic16);
      if(run17 && contorl17() && (calgpf17()> gtp17 || calgpf17() < gsp17))clsgroup(magic17);
      if(run18 && contorl18() && (calgpf18()> gtp18 || calgpf18() < gsp18))clsgroup(magic18);
      if(run19 && contorl19() && (calgpf19()> gtp19 || calgpf19() < gsp19))clsgroup(magic19);
      if(run20 && contorl20() && (calgpf20()> gtp20 || calgpf20() < gsp20))clsgroup(magic20);
   };

}

double calgpf1(){
   double data; 
   //输出存储
   if(another_platform_num1==main_platform_num){
      //主端的存储给客端显示用
      data=gpf10;
   }else{data=gpf10+gpf11;};
   return data;
}


double calgpf2(){
   double data; 
   //输出存储
   if(another_platform_num2==main_platform_num){
      //主端的存储给客端显示用
      data=gpf20;
   }else{data=gpf20+gpf21;};
   return data;
}

double calgpf3(){
   double data; 
   //输出存储
   if(another_platform_num3==main_platform_num){
      //主端的存储给客端显示用
      data=gpf30;
   }else{data=gpf30+gpf31;};
   return data;
}

double calgpf4(){
   double data; 
   //输出存储
   if(another_platform_num4==main_platform_num){
      //主端的存储给客端显示用
      data=gpf40;
   }else{data=gpf40+gpf41;};
   return data;
}


double calgpf5(){
   double data; 
   //输出存储
   if(another_platform_num5==main_platform_num){
      //主端的存储给客端显示用
      data=gpf50;
   }else{data=gpf50+gpf51;};
   return data;
}

double calgpf6(){
   double data; 
   //输出存储
   if(another_platform_num6==main_platform_num){
      //主端的存储给客端显示用
      data=gpf60;
   }else{data=gpf60+gpf61;};
   return data;
}

double calgpf7(){
   double data; 
   //输出存储
   if(another_platform_num7==main_platform_num){
      //主端的存储给客端显示用
      data=gpf70;
   }else{data=gpf70+gpf71;};
   return data;
}

double calgpf8(){
   double data; 
   //输出存储
   if(another_platform_num8==main_platform_num){
      //主端的存储给客端显示用
      data=gpf80;
   }else{data=gpf80+gpf81;};
   return data;
}


double calgpf9(){
   double data; 
   //输出存储
   if(another_platform_num9==main_platform_num){
      //主端的存储给客端显示用
      data=gpf90;
   }else{data=gpf90+gpf91;};
   return data;
}

double calgpf10(){
   double data; 
   //输出存储
   if(another_platform_num10==main_platform_num){
      //主端的存储给客端显示用
      data=gpf100;
   }else{data=gpf100+gpf101;};
   return data;
}

double calgpf11(){
   double data; 
   //输出存储
   if(another_platform_num11==main_platform_num){
      //主端的存储给客端显示用
      data=gpf110;
   }else{data=gpf110+gpf111;};
   return data;
}

double calgpf12(){
   double data; 
   //输出存储
   if(another_platform_num12==main_platform_num){
      //主端的存储给客端显示用
      data=gpf120;
   }else{data=gpf120+gpf121;};
   return data;
}
double calgpf13(){
   double data; 
   //输出存储
   if(another_platform_num13==main_platform_num){
      //主端的存储给客端显示用
      data=gpf130;
   }else{data=gpf130+gpf131;};
   return data;
}

double calgpf14(){
   double data; 
   //输出存储
   if(another_platform_num14==main_platform_num){
      //主端的存储给客端显示用
      data=gpf140;
   }else{data=gpf140+gpf141;};
   return data;
}

double calgpf15(){
   double data; 
   //输出存储
   if(another_platform_num15==main_platform_num){
      //主端的存储给客端显示用
      data=gpf150;
   }else{data=gpf150+gpf151;};
   return data;
}

double calgpf16(){
   double data; 
   //输出存储
   if(another_platform_num16==main_platform_num){
      //主端的存储给客端显示用
      data=gpf160;
   }else{data=gpf160+gpf161;};
   return data;
}

double calgpf17(){
   double data; 
   //输出存储
   if(another_platform_num17==main_platform_num){
      //主端的存储给客端显示用
      data=gpf170;
   }else{data=gpf170+gpf171;};
   return data;
}

double calgpf18(){
   double data; 
   //输出存储
   if(another_platform_num18==main_platform_num){
      //主端的存储给客端显示用
      data=gpf180;
   }else{data=gpf180+gpf181;};
   return data;
}

double calgpf19(){
   double data; 
   //输出存储
   if(another_platform_num19==main_platform_num){
      //主端的存储给客端显示用
      data=gpf190;
   }else{data=gpf190+gpf191;};
   return data;
}

double calgpf20(){
   double data; 
   //输出存储
   if(another_platform_num20==main_platform_num){
      //主端的存储给客端显示用
      data=gpf200;
   }else{data=gpf200+gpf201;};
   return data;
}

