void write_data(string sm, int type, int platform_num, double real_lot, int magic){
   RefreshRates();
   int handle;
   string filename=IntegerToString(magic)+IntegerToString(type)+sm+IntegerToString(platform_num)+".csv";
   
   handle=FileOpen(filename,FILE_CSV|FILE_WRITE|FILE_SHARE_WRITE|FILE_SHARE_READ,"*");
   
   if(handle>0){
      FileWrite(handle,real_lot);
      FileClose(handle); 
   }
   
   string path=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files";
   string source=path+"\\"+filename;
   string target=path1+"\\"+filename;
   bool result = CopyFileW(source, target,!OverWrite);
   return;
}


void save_trade_data(string platform_symbol, int platform_num, int magic){
      RefreshRates();
      double lot0=0;
      double lot1=0;  
      lot0=allLots(platform_symbol, OP_SELL, magic);
      lot1=allLots(platform_symbol, OP_BUY, magic);
      write_data(platform_symbol, OP_BUY, platform_num, lot0, magic);
      write_data(platform_symbol, OP_SELL, platform_num, lot1, magic);
}

void sync_trade(){
   //存储主端交易数据
   //主端讲数据copy到中转路径
   if(current_platform_num==main_platform_num){
      if(!priority_sent2client)auto_trade();
      save_trade_data(another_platform_symbol1, another_platform_num1, magic1);
      save_trade_data(another_platform_symbol2, another_platform_num2, magic2);
      save_trade_data(another_platform_symbol3, another_platform_num3, magic3);
      save_trade_data(another_platform_symbol4, another_platform_num4, magic4);
      save_trade_data(another_platform_symbol5, another_platform_num5, magic5);
      save_trade_data(another_platform_symbol6, another_platform_num6, magic6);
      save_trade_data(another_platform_symbol7, another_platform_num7, magic7);
      save_trade_data(another_platform_symbol8, another_platform_num8, magic8);
      save_trade_data(another_platform_symbol9, another_platform_num9, magic9);
      save_trade_data(another_platform_symbol10, another_platform_num10, magic10);
      save_trade_data(another_platform_symbol11, another_platform_num11, magic11);
      save_trade_data(another_platform_symbol12, another_platform_num12, magic12);
      save_trade_data(another_platform_symbol13, another_platform_num13, magic13);
      save_trade_data(another_platform_symbol14, another_platform_num14, magic14);
      save_trade_data(another_platform_symbol15, another_platform_num15, magic15);
      save_trade_data(another_platform_symbol16, another_platform_num16, magic16);
      save_trade_data(another_platform_symbol17, another_platform_num17, magic17);
      save_trade_data(another_platform_symbol18, another_platform_num18, magic18);
      save_trade_data(another_platform_symbol19, another_platform_num19, magic19);
      save_trade_data(another_platform_symbol20, another_platform_num20, magic20);
      if(priority_sent2client)auto_trade();

   }else{
      pull_data(); 
   }
}

void pull_data(){   
   if(another_platform_num1==current_platform_num){   
      client_trade(another_platform_symbol1, another_platform_num1, main_lots1, another_lots1, common1, magic1);
   }
   
   if(another_platform_num2==current_platform_num){   
      client_trade(another_platform_symbol2, another_platform_num2, main_lots2, another_lots2, common2, magic2);
   }
   
   if(another_platform_num3==current_platform_num){   
      client_trade(another_platform_symbol3, another_platform_num3, main_lots3, another_lots3, common3, magic3);
   }
   
   if(another_platform_num4==current_platform_num){   
      client_trade(another_platform_symbol4, another_platform_num4, main_lots4, another_lots4, common4, magic4);
   } 
   
   if(another_platform_num5==current_platform_num){   
      client_trade(another_platform_symbol5, another_platform_num5, main_lots5, another_lots5, common5, magic5);
   }
   
   if(another_platform_num6==current_platform_num){   
      client_trade(another_platform_symbol6, another_platform_num6, main_lots6, another_lots6, common6, magic6);
   }
   
   if(another_platform_num7==current_platform_num){   
      client_trade(another_platform_symbol7, another_platform_num7, main_lots7, another_lots7, common7, magic7);
   }
   
   if(another_platform_num8==current_platform_num){   
      client_trade(another_platform_symbol8, another_platform_num8, main_lots8, another_lots8, common8, magic8);
   }
   
   
   if(another_platform_num9==current_platform_num){   
      client_trade(another_platform_symbol9, another_platform_num9, main_lots9, another_lots9, common9, magic9);
   }
   
   if(another_platform_num10==current_platform_num){   
      client_trade(another_platform_symbol10, another_platform_num10, main_lots10, another_lots10, common10, magic10);
   }
   
   if(another_platform_num11==current_platform_num){   
      client_trade(another_platform_symbol11, another_platform_num11, main_lots11, another_lots11, common11, magic11);
   }
   if(another_platform_num12==current_platform_num){   
      client_trade(another_platform_symbol12, another_platform_num12, main_lots12, another_lots12, common12, magic12);
   }
   
   if(another_platform_num13==current_platform_num){   
      client_trade(another_platform_symbol13, another_platform_num13, main_lots13, another_lots13, common13, magic13);
   }
   
   if(another_platform_num14==current_platform_num){   
      client_trade(another_platform_symbol14, another_platform_num14, main_lots14, another_lots14, common14, magic14);
   }
   
   if(another_platform_num15==current_platform_num){   
      client_trade(another_platform_symbol15, another_platform_num15, main_lots15, another_lots15, common15, magic15);
   }
   if(another_platform_num16==current_platform_num){   
      client_trade(another_platform_symbol16, another_platform_num16, main_lots16, another_lots16, common16, magic16);
   }
   
   if(another_platform_num17==current_platform_num){   
      client_trade(another_platform_symbol17, another_platform_num17, main_lots17, another_lots17, common17, magic17);
   }
   
   if(another_platform_num18==current_platform_num){   
      client_trade(another_platform_symbol18, another_platform_num18, main_lots18, another_lots18, common18, magic18);
   }
   if(another_platform_num19==current_platform_num){   
      client_trade(another_platform_symbol19, another_platform_num19, main_lots19, another_lots19, common19, magic19);
   }
   if(another_platform_num20==current_platform_num){   
      client_trade(another_platform_symbol20, another_platform_num20, main_lots20, another_lots20, common20, magic20);
   } 
}

void client_trade(string platform_symbol, int platform_num, double main_lots, double another_lots,string common, int magic){ 
   item_trade(platform_symbol,platform_num, OP_BUY, main_lots, another_lots, common, magic);
   item_trade(platform_symbol,platform_num, OP_SELL, main_lots, another_lots, common, magic);    
}

//客端交易
void item_trade(string platform_symbol, int platform_num, int type, double main_lots, double another_lots,string common, int magic){    
   RefreshRates();
   double main_real_lot = get_main_lots(platform_symbol, platform_num, type, magic);
   RefreshRates();
   double client_real_lot = allLots(platform_symbol, type, magic);
   
   double trade_lot = NormalizeDouble((main_real_lot*another_lots)/main_lots-client_real_lot, 2);   
   if(trade_lot>0){OrderSend(platform_symbol, type, another_lots, common, magic);}
   if(trade_lot<0){
      int num = MathAbs(trade_lot)/another_lots;
      closetrade(platform_symbol, type, magic, another_lots, num);
   }
}

void closetrade(string sysmbol, int type, int magic, double lots, int times){
   int count=0;
   double price;
   for(int i=0;i<OrdersTotal();i++){
      if(!OrderSelect(i,SELECT_BY_POS,MODE_TRADES)) continue;
      if(OrderType()==type && OrderMagicNumber()==magic && OrderSymbol()==sysmbol){
         Print("trade close");
         if(OrderType() == OP_BUY){ price = MarketInfo(OrderSymbol(),MODE_ASK);}else{price=MarketInfo(OrderSymbol(),MODE_BID);};
         for(cnt=0 ;cnt<100; cnt++){if(!OrderClose(OrderTicket(),OrderLots(),price,sliper,clrBlue)){Sleep(1);RefreshRates();}else break;};
         count++;
         if(count>=times)break;
      }
   }
   return;
}

// 读取主端的交易数据
double get_main_lots(string platform_symbol, int platform_num, int type, int magic){
   double lots=0;
   string filename =get_trade_file(platform_symbol, platform_num, IntegerToString(type), magic);
   int file_handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(file_handle>0){
      lots=StrToDouble(FileReadString(file_handle));
      FileClose(file_handle); 
   };
   return lots;
}

// 从中转路径拉取数据
string get_trade_file(string sm,int platform_num, string type, int magic){
   string filename=IntegerToString(magic)+IntegerToString(type)+sm+IntegerToString(platform_num)+".csv";;
   string source = path1+"\\"+filename;
   string target = TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files\\"+filename;;
   bool result = CopyFileW(source, target,!OverWrite);
   return filename;
}

//+------------------------------------------------------------------+
//| OrderSend                                                        |
//+------------------------------------------------------------------+
void OrderSend(string sm, const int type, double lots, string expername, int magic)
{
   //--
   int op_tkt=0;
   uint tick=0;
   uint ex_time=0;
   //--
   double rq_price=0;
   double slippage=100;
   //--- reset the error value
   ResetLastError();

   //-- SellOrders
   if(type==OP_SELL){
      tick=GetTickCount();//GetTime
      rq_price=MarketInfo(sm,MODE_BID);//GetPrice
      op_tkt=OrderSend(sm,OP_SELL,lots,rq_price,slippage,0,0,expername,magic,0,COLOR_SELL);//SendOrder
      
      if(op_tkt<0){
         //-- Error
         Print("OrderSend failed with error1 #",GetLastError(),"xxx", rq_price,sm,lots);
         //--
         Sleep(ErrorInterval);
         return;
        }
    }
   //-- BuyOrders
   if(type==OP_BUY){
      tick=GetTickCount();//GetTime
      rq_price=MarketInfo(sm,MODE_ASK);//GetPrice
      op_tkt=OrderSend(sm,OP_BUY,lots,rq_price,slippage,0,0,expername,magic,0,COLOR_BUY);//SendOrder
      
      if(op_tkt<0){
         //-- Error
         Print("OrderSend failed with error2 #",GetLastError(),"xxx", rq_price,sm,lots);
         //--
         Sleep(ErrorInterval);
         return;
      }
   };

   return;
}


bool check_connect(){
//-- CheckOrdCloseRequirements
   if(IsTradeAllowed() && !IsTradeContextBusy() && IsConnected()){
      return true;
   }
   else{
      //-- RequirementsNotFulfilled
      if(!IsConnected())
         MessageBox("No Internet connection found! Please check your network connection and try again.");
      if(IsTradeContextBusy())
         MessageBox("Trade context is busy, Please wait...");
      if(!IsTradeAllowed())
         MessageBox("Check if automated trading is allowed in the terminal / program settings and try again.");
      Sleep(ErrorInterval);
      return false;
   }
}