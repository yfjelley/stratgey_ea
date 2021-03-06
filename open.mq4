
//若 A商品中间价(mid)差价大于B商品(mid)设定值,则A平台(空)/B平台(多)；若 A商品中间价(mid)差价小于B商品(mid)设定值,则A平台(多)/B平台(空)

bool is_open(int magic){
   bool flag=True;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber()!=magic) continue; 
      if(is_delay(OrderOpenTime())){
         return False;
      }
   }
   for(int i=0;i<OrdersHistoryTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)) continue;
      if(OrderMagicNumber()!=magic) continue; 
      if(is_delay(OrderCloseTime())){
         return False;
      }
   }
   return flag;
}

 
int order_count(int magic){
   int num=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber()!=magic) continue; 
      num++;
   }
   return num;
}

void auto_trade(){
   //主端交易逻辑
   //主端讲数据copy到中转路径
   if(current_platform_num==main_platform_num){
   //+----------------------------开仓--------------------------------------+
      if(ration_stop_switch){
         if(ra>ra_stop)auto_trade_open();
      }else auto_trade_open();
      //auto_trade_close();
          
   }
   
}

void auto_trade_open(){
   //+----------------------------1-4--------------------------------------+
      //Print(run1, "xxx", contorl1(), "xxx", ra1, "xxx", ration_stop_switch);
      if(run1 && contorl1() && MathAbs(sp1)>spread1 && (ra1> ra_stop || !ration_stop_switch)){
         int type;
         if(sp1>0 ){type=OP_SELL;}else{type=OP_BUY;};
         //Print(run1, "xxxopenxxx", contorl1(), "xxx", ra, "xxx", ration_stop_switch);
         if(is_open(magic1) && order_count(magic1)<max_trade_times1) OrderSend(main_platform_symbol1, type, main_lots1, common1, magic1);
      };
      
      if(run2 && contorl2() && MathAbs(sp2)>spread2 &&( ra2> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp2>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic2)&& order_count(magic2)<max_trade_times2) OrderSend(main_platform_symbol2, type, main_lots2, common2, magic2);
      };
      
      if(run3 && contorl3() && MathAbs(sp3)>spread3 &&( ra3> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp3>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic3)&& order_count(magic3)<max_trade_times3)OrderSend(main_platform_symbol3, type, main_lots3, common3, magic3);
      };
      
      
      if(run4 && contorl4() && MathAbs(sp4)>spread4 &&( ra4> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp4>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic4)&& order_count(magic4)<max_trade_times4)OrderSend(main_platform_symbol4, type, main_lots4, common4, magic4);
      };
      
      //+----------------------------开仓--------------------------------------+
     //+----------------------------5-8--------------------------------------+
      if(run5 && contorl5() && MathAbs(sp5)>spread5 &&( ra5> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp5>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic5)&& order_count(magic5)<max_trade_times5)OrderSend(main_platform_symbol5, type, main_lots5, common5, magic5);
      };
      
      if(run6 && contorl6() && MathAbs(sp6)>spread6 &&( ra6> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp6>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic6)&& order_count(magic6)<max_trade_times6) OrderSend(main_platform_symbol6, type, main_lots6, common6, magic6);
      };
      
      if(run7 && contorl7() && MathAbs(sp7)>spread7 &&( ra7> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp7>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic7)&& order_count(magic7)<max_trade_times7) OrderSend(main_platform_symbol7, type, main_lots7, common7, magic7);
      };
      
      if(run8 && contorl8() && MathAbs(sp8)>spread8 &&( ra8> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp8>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic8)&& order_count(magic8)<max_trade_times8) OrderSend(main_platform_symbol8, type, main_lots8, common8, magic8);
      };
      //+----------------------------开仓--------------------------------------+
      //+----------------------------9-12--------------------------------------+
      if(run9 && contorl9() && MathAbs(sp9)>spread9 &&( ra9> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp9>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic9)&& order_count(magic9)<max_trade_times9) OrderSend(main_platform_symbol9, type, main_lots9, common9, magic9);
      };
      
      if(run10 && contorl10() && MathAbs(sp10)>spread10 &&( ra10> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp10>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic10)&& order_count(magic10)<max_trade_times10) OrderSend(main_platform_symbol10, type, main_lots10, common10, magic10);
      };
      if(run11 && contorl11() && MathAbs(sp11)>spread11 &&( ra11> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp11>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic11)&& order_count(magic11)<max_trade_times11) OrderSend(main_platform_symbol11, type, main_lots11, common11, magic11);
      };
      
      if(run12 && contorl12() && MathAbs(sp12)>spread12 &&( ra12> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp12>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic12)&& order_count(magic12)<max_trade_times12) OrderSend(main_platform_symbol12, type, main_lots12, common12, magic12);
      };
      //+----------------------------开仓--------------------------------------+
      //+----------------------------13-16--------------------------------------+
      if(run13 && contorl13() && MathAbs(sp13)>spread13 &&( ra13> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp13>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic13)&& order_count(magic13)<max_trade_times13) OrderSend(main_platform_symbol13, type, main_lots13, common13, magic13);
      };
      
      if(run14 && contorl14() && MathAbs(sp14)>spread14 &&( ra14> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp14>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic14)&& order_count(magic14)<max_trade_times14) OrderSend(main_platform_symbol14, type, main_lots14, common14, magic14);
      };
      
      if(run15 && contorl15() && MathAbs(sp15)>spread15 &&( ra15> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp15>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic15)&& order_count(magic15)<max_trade_times15) OrderSend(main_platform_symbol15, type, main_lots15, common15, magic15);
      };
      
      if(run16 && contorl16() && MathAbs(sp16)>spread16 &&( ra16> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp16>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic16)&& order_count(magic16)<max_trade_times16) OrderSend(main_platform_symbol16, type, main_lots16, common16, magic16);
      };
      
     //+----------------------------开仓--------------------------------------+
      //+----------------------------17-20--------------------------------------+
      if(run17 && contorl17() && MathAbs(sp17)>spread17 &&( ra17> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp17>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic17)&& order_count(magic17)<max_trade_times17) OrderSend(main_platform_symbol17, type, main_lots17, common17, magic17);
      };
      
      if(run18 && contorl18() && MathAbs(sp18)>spread18 &&( ra18> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp18>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic18)&& order_count(magic18)<max_trade_times18) OrderSend(main_platform_symbol18, type, main_lots18, common18, magic18);
      };
      
      if(run19 && contorl19() && MathAbs(sp19)>spread19 && (ra19> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp19>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic19)&& order_count(magic19)<max_trade_times19) OrderSend(main_platform_symbol19, type, main_lots19, common19, magic19);
      };
      
      if(run20 && contorl20() && MathAbs(sp20)>spread20 && (ra20> ra_stop|| !ration_stop_switch)){
         int type;
         if(sp20>0 ){type=OP_SELL;}else{type=OP_BUY;};
         if(is_open(magic20)&& order_count(magic20)<max_trade_times20) OrderSend(main_platform_symbol20, type, main_lots20, common20, magic20);
      };
      
    //+---------------------------平仓---------------------------------------+


}




