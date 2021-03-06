
//持有的单数量
double allLots(string sm, int type, int magic){
   RefreshRates();
   double lot = 0;
   for(int i=0; i<OrdersTotal(); i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderSymbol()==sm && OrderMagicNumber()==magic){
         if(OrderType()==type)  lot+= OrderLots() ;
      }
   }
   
   return lot;
}


//持有的单数量
double allTypeLots(string sm, int magic){
   RefreshRates();
   double lot = 0;
   for(int i=0; i<OrdersTotal(); i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderSymbol()==sm && OrderMagicNumber()==magic){
         lot+= OrderLots();
      }
   }
   return lot;
}

double totalallLots(){
   RefreshRates();
   double lot = 0;
   for(int i=0; i<OrdersTotal(); i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue; 
      lot+= OrderLots();    
   }
   return lot;
}

void closeSell(int magic){
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber()!=magic) continue;
      if(OrderMagicNumber()== magic && OrderType()==OP_SELL ){
         Print("equityclose");
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_ASK),sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
      }
   }
   return;
}

void closeBuy(int magic){
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber()!=magic) continue;
      if(OrderMagicNumber()== magic && OrderType()==OP_BUY ){
         Print("equityclose");
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
      }
   }
   return;
}

void closeSellquickly(){
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderType()==OP_SELL ){
         Print("closeSellquickly");
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_ASK),sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
      }
   }
   return;
}

void closeBuyquickly(){
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderType()==OP_BUY ){
         Print("closeBuyquickly");
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
      }
   }
   return;
}


void closeSellDelay(){
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderType()==OP_SELL && is_delay(OrderOpenTime())){
         Print("allprofitcheckclose");
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_ASK),sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
      }
   }
   return;
}

bool is_delay(datetime opentime){
   datetime current;
   current = TimeCurrent();
   datetime delta = current - opentime;
   int seconds = TimeSeconds(delta) + TimeMinute(delta)*60+TimeHour(delta)*3600;

   if(!delay_close_switch) return True;
   if( seconds > delay && delay_close_switch) return True;
   return False;
}

void closeBuyDelay(){
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;  
      if(OrderType()==OP_BUY && is_delay(OrderOpenTime())){
         Print("allprofitcheckclose");
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
      }
   }
   return;
}


void closeTotal(int magic){
   double price;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber()!= magic) continue;
      for(cnt=0 ;cnt<100; cnt++){
         if(OrderType() == OP_BUY){ price = MarketInfo(OrderSymbol(),MODE_ASK);}else{price=MarketInfo(OrderSymbol(),MODE_BID);};
         Print("close Total");
         if(!OrderClose(OrderTicket(),OrderLots(),price,sliper,clrBlue)){
            Sleep(1);RefreshRates();}else break;
         };

   }
   return;
}
void closeAll(){
   double price;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      //if(OrderMagicNumber()!= magic) continue;
      for(cnt=0 ;cnt<100; cnt++){
         if(OrderType() == OP_BUY){ price = MarketInfo(OrderSymbol(),MODE_ASK);}else{price=MarketInfo(OrderSymbol(),MODE_BID);};
         Print("close all");
         if(!OrderClose(OrderTicket(),OrderLots(),price,sliper,clrBlue)){
            Sleep(1);RefreshRates();}else break;
         };

   }
   return;
}


void clsgroup(int magic){
   double price;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderMagicNumber() == magic && is_delay(OrderOpenTime())){
         for(cnt=0 ;cnt<100; cnt++){
            if(OrderType() == OP_BUY){ price = MarketInfo(OrderSymbol(),MODE_ASK);}else{price=MarketInfo(OrderSymbol(),MODE_BID);};
            Print("clsgroup");
            if(!OrderClose(OrderTicket(),OrderLots(),price,sliper,clrBlue)){
               Sleep(1);RefreshRates();}else break;
            };
          
      }
   }
   return;
}
