

void save_data(){
   RefreshRates();
   double pf = get_platform_profit_delay();
   double sw = get_platform_swap_delay();
   double as = get_platform_commission_delay();
   double aeq = AccountEquity();
   double ama = AccountMargin();
   string filename=IntegerToString(main_platform_num)+IntegerToString(current_platform_num)+".csv";

   int handle;
   handle=FileOpen(filename,FILE_CSV|FILE_WRITE|FILE_SHARE_WRITE|FILE_SHARE_READ,"*");
   
   if(handle>0)
   {
      FileWrite(handle,pf, sw, as, aeq, ama);
      FileClose(handle); 
   }
   string path=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files";
   bool result = CopyFileW(path+"\\"+filename,path1+"\\"+filename,!OverWrite);
   return;
}

void get_data(){
   pull_profit();
   pull_profit1();
   pull_profit2();
   pull_profit3();
   pull_profit4();
   pull_profit5();
   pull_profit6();
   pull_profit7();
   pull_profit8();
   pull_profit9();
   pull_profit10();
   pull_profit11();
   pull_profit12();
   pull_profit13();
   pull_profit14();
   pull_profit15();
   pull_profit16();
   pull_profit17();
   pull_profit18();
   pull_profit19();
   pull_profit20();

}


void transmission(string filename){
   string source = path1+"\\"+filename;
   string target = TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files\\"+filename;
   bool result = CopyFileW(source, target,!OverWrite);
}

//浮动盈利
double get_platform_profit(){
   double data=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;  
      data+=OrderProfit() ;
   }
   return data;
}


//浮动盈利去掉延迟平仓的订单
double get_platform_profit_delay(){
   double data=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;  
      if(is_delay(OrderOpenTime())){
         data+=OrderProfit();
      }
   }
   return data;
}

double get_sgroup_profit(int magic){
   double data=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber()!=magic) continue; 
      if(is_delay(OrderOpenTime())){
         data+=OrderProfit();
      }
   }
   return data;
}

//浮动利息去掉延迟平仓的订单
double get_platform_swap_delay(){
   double data=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;  
      if(is_delay(OrderOpenTime())){
         data+=OrderSwap() ;
      } 
   }
   return data;
}


//OrderProfit()+OrderCommission()+OrderSwap()
double get_platform_swap(){
   double data=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;  
      data+=OrderSwap() ;
   }
   return data;
}


//OrderProfit()+OrderCommission()+OrderSwap()
double get_platform_commission_delay(){
   double cs=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(is_delay(OrderOpenTime())){
         cs+=OrderCommission();
      }      
   }
   return cs;
}

//OrderProfit()+OrderCommission()+OrderSwap()
double get_platform_commission(){
   double cs=0;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;  
      cs+=OrderCommission()*OrderLots() ;
   }
   return cs;
}





void statistical(){
   //主平台净利润
   jinp=profit+swap+allcs;
   jinp1=profit1+swap1+allcs1;
   jinp2=profit2+swap2+allcs2;
   jinp3=profit3+swap3+allcs3;
   jinp4=profit4+swap4+allcs4;
   jinp5=profit5+swap5+allcs5;
   jinp6=profit6+swap6+allcs6;
   jinp7=profit7+swap7+allcs7;
   jinp8=profit8+swap8+allcs8;
   jinp9=profit9+swap9+allcs9;
   jinp10=profit10+swap10+allcs10;
   jinp11=profit11+swap11+allcs11;
   jinp12=profit12+swap12+allcs12;
   jinp13=profit13+swap13+allcs13;
   jinp14=profit14+swap14+allcs14;
   jinp15=profit15+swap15+allcs15;
   jinp16=profit16+swap16+allcs16;
   jinp17=profit17+swap17+allcs17;
   jinp18=profit18+swap18+allcs18;
   jinp19=profit19+swap19+allcs19;
   jinp20=profit20+swap20+allcs20;
   
   //if(is_statistical_profit1){jinp1=profit1+swap1-allcs1;};
   //if(is_statistical_profit2){jinp2=profit2+swap2-allcs2;};
   //if(is_statistical_profit3){jinp3=profit3+swap3-allcs3;};
   //if(is_statistical_profit4){jinp4=profit4+swap4-allcs4;};
   
   allprofit=0;
   if(is_statistical_profit1){allprofit+=jinp1;};
   if(is_statistical_profit2){allprofit+=jinp2;};
   if(is_statistical_profit3){allprofit+=jinp3;};
   if(is_statistical_profit4){allprofit+=jinp4;};
   if(is_statistical_profit5){allprofit+=jinp5;};
   if(is_statistical_profit6){allprofit+=jinp6;};
   if(is_statistical_profit7){allprofit+=jinp7;};
   if(is_statistical_profit8){allprofit+=jinp8;};
   if(is_statistical_profit9){allprofit+=jinp9;};
   if(is_statistical_profit10){allprofit+=jinp10;};
   if(is_statistical_profit11){allprofit+=jinp11;};
   if(is_statistical_profit12){allprofit+=jinp12;};
   if(is_statistical_profit13){allprofit+=jinp13;};
   if(is_statistical_profit14){allprofit+=jinp14;};
   if(is_statistical_profit15){allprofit+=jinp15;};
   if(is_statistical_profit16){allprofit+=jinp16;};
   if(is_statistical_profit17){allprofit+=jinp17;};
   if(is_statistical_profit18){allprofit+=jinp18;};
   if(is_statistical_profit19){allprofit+=jinp19;};
   if(is_statistical_profit20){allprofit+=jinp20;};
   allprofit+=jinp;
}


void pull_profit(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(main_platform_num)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit=StrToDouble(FileReadString(handle));
      swap=StrToDouble(FileReadString(handle));
      allcs=StrToDouble(FileReadString(handle));
      ae=StrToDouble(FileReadString(handle));
      am=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}
void pull_profit1(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num1)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit1=StrToDouble(FileReadString(handle));
      swap1=StrToDouble(FileReadString(handle));
      allcs1=StrToDouble(FileReadString(handle));
      ae1=StrToDouble(FileReadString(handle));
      am1=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}


void pull_profit2(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num2)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit2=StrToDouble(FileReadString(handle));
      swap2=StrToDouble(FileReadString(handle));
      allcs2=StrToDouble(FileReadString(handle));
      ae2=StrToDouble(FileReadString(handle));
      am2=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}



void pull_profit3(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num3)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit3=StrToDouble(FileReadString(handle));
      swap3=StrToDouble(FileReadString(handle));
      allcs3=StrToDouble(FileReadString(handle));
      ae3=StrToDouble(FileReadString(handle));
      am3=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}


void pull_profit4(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num4)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit4=StrToDouble(FileReadString(handle));
      swap4=StrToDouble(FileReadString(handle));
      allcs4=StrToDouble(FileReadString(handle));      
      ae4=StrToDouble(FileReadString(handle));
      am4=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}



void pull_profit5(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num5)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit5=StrToDouble(FileReadString(handle));
      swap5=StrToDouble(FileReadString(handle));
      allcs5=StrToDouble(FileReadString(handle));
      ae5=StrToDouble(FileReadString(handle));
      am5=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit6(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num6)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit6=StrToDouble(FileReadString(handle));
      swap6=StrToDouble(FileReadString(handle));
      allcs6=StrToDouble(FileReadString(handle));
      ae6=StrToDouble(FileReadString(handle));
      am6=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit7(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num7)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit7=StrToDouble(FileReadString(handle));
      swap7=StrToDouble(FileReadString(handle));
      allcs7=StrToDouble(FileReadString(handle));
      ae7=StrToDouble(FileReadString(handle));
      am7=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit8(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num8)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit8=StrToDouble(FileReadString(handle));
      swap8=StrToDouble(FileReadString(handle));
      allcs8=StrToDouble(FileReadString(handle));
      ae8=StrToDouble(FileReadString(handle));
      am8=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit9(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num9)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit9=StrToDouble(FileReadString(handle));
      swap9=StrToDouble(FileReadString(handle));
      allcs9=StrToDouble(FileReadString(handle));
      ae9=StrToDouble(FileReadString(handle));
      am9=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit10(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num10)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit10=StrToDouble(FileReadString(handle));
      swap10=StrToDouble(FileReadString(handle));
      allcs10=StrToDouble(FileReadString(handle));
      ae10=StrToDouble(FileReadString(handle));
      am10=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}
void pull_profit11(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num11)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit11=StrToDouble(FileReadString(handle));
      swap11=StrToDouble(FileReadString(handle));
      allcs11=StrToDouble(FileReadString(handle));
      ae11=StrToDouble(FileReadString(handle));
      am11=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit12(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num12)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit12=StrToDouble(FileReadString(handle));
      swap12=StrToDouble(FileReadString(handle));
      allcs12=StrToDouble(FileReadString(handle));
      ae12=StrToDouble(FileReadString(handle));
      am12=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit13(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num13)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit13=StrToDouble(FileReadString(handle));
      swap13=StrToDouble(FileReadString(handle));
      allcs13=StrToDouble(FileReadString(handle));
      ae13=StrToDouble(FileReadString(handle));
      am13=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}
void pull_profit14(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num14)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit14=StrToDouble(FileReadString(handle));
      swap14=StrToDouble(FileReadString(handle));
      allcs14=StrToDouble(FileReadString(handle));
      ae14=StrToDouble(FileReadString(handle));
      am14=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}


void pull_profit15(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num15)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit15=StrToDouble(FileReadString(handle));
      swap15=StrToDouble(FileReadString(handle));
      allcs15=StrToDouble(FileReadString(handle));
      ae15=StrToDouble(FileReadString(handle));
      am15=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}


void pull_profit16(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num16)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit16=StrToDouble(FileReadString(handle));
      swap16=StrToDouble(FileReadString(handle));
      allcs16=StrToDouble(FileReadString(handle));
      ae16=StrToDouble(FileReadString(handle));
      am16=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit17(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num17)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit17=StrToDouble(FileReadString(handle));
      swap17=StrToDouble(FileReadString(handle));
      allcs17=StrToDouble(FileReadString(handle));
      ae17=StrToDouble(FileReadString(handle));
      am17=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}
void pull_profit18(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num18)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit18=StrToDouble(FileReadString(handle));
      swap18=StrToDouble(FileReadString(handle));
      allcs18=StrToDouble(FileReadString(handle));
      ae18=StrToDouble(FileReadString(handle));
      am18=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}

void pull_profit19(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num19)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit19=StrToDouble(FileReadString(handle));
      swap19=StrToDouble(FileReadString(handle));
      allcs19=StrToDouble(FileReadString(handle));
      ae19=StrToDouble(FileReadString(handle));
      am19=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}
void pull_profit20(){
   string filename;
   int handle;
   filename=IntegerToString(main_platform_num)+IntegerToString(another_platform_num20)+".csv";
   transmission(filename);
   handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      profit20=StrToDouble(FileReadString(handle));
      swap20=StrToDouble(FileReadString(handle));
      allcs20=StrToDouble(FileReadString(handle));
      ae20=StrToDouble(FileReadString(handle));
      am20=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   };
}


void ration(){
   if(am !=0)ra = NormalizeDouble(ae/am*100, 3);else ra=1000000;
   if(am1 !=0)ra1 = NormalizeDouble(ae1/am1*100, 3);else ra1=1000000;
   if(am2 !=0)ra2 = NormalizeDouble(ae2/am2*100, 3);else ra2=1000000;
   if(am3 !=0)ra3 = NormalizeDouble(ae3/am3*100, 3);else ra3=1000000;
   if(am4 !=0)ra4 = NormalizeDouble(ae4/am4*100, 3);else ra4=1000000;
   if(am5 !=0)ra5 = NormalizeDouble(ae5/am5*100, 3);else ra5=1000000;
   if(am6 !=0)ra6 = NormalizeDouble(ae6/am6*100, 3);else ra6=1000000;
   if(am7 !=0)ra7 = NormalizeDouble(ae7/am7*100, 3);else ra7=1000000;
   if(am8 !=0)ra8 = NormalizeDouble(ae8/am8*100, 3);else ra8=1000000;
   if(am9 !=0)ra9 = NormalizeDouble(ae9/am9*100, 3);else ra9=1000000;
   
   if(am10 !=0)ra10 = NormalizeDouble(ae10/am10*100, 3);else ra10=1000000;
   if(am11 !=0)ra11 = NormalizeDouble(ae11/am11*100, 3);else ra11=1000000;
   if(am12 !=0)ra12 = NormalizeDouble(ae12/am12*100, 3);else ra12=1000000;
   if(am13 !=0)ra13 = NormalizeDouble(ae13/am13*100, 3);else ra13=1000000;
   if(am14 !=0)ra14 = NormalizeDouble(ae14/am14*100, 3);else ra14=1000000;
   if(am15 !=0)ra15 = NormalizeDouble(ae15/am15*100, 3);else ra15=1000000;
   if(am16 !=0)ra16 = NormalizeDouble(ae16/am16*100, 3); else ra16=1000000; 
   
   
   if(am17 !=0)ra17 = NormalizeDouble(ae17/am17*100, 3);else ra17=1000000;
   if(am18 !=0)ra18 = NormalizeDouble(ae18/am18*100, 3);else ra18=1000000;
   if(am19 !=0)ra19 = NormalizeDouble(ae19/am19*100, 3);else ra19=1000000;
   if(am20 !=0)ra20 = NormalizeDouble(ae20/am20*100, 3);else ra20=1000000;

}