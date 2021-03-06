
//--
#define INDENT_TOP         15
#define INDENT_RIGHT       100
#define INDENT_BOTTOM      30
//--
#define CLIENT_BG_X        1
#define CLIENT_BG_Y        5
//--
#define CLIENT_BG_WIDTH    1500
#define CLIENT_BG_HEIGHT   800
//--
#define BUTTON_WIDTH       45
#define BUTTON_HEIGHT      20
//--
#define BUTTON_GAP_X       5
#define BUTTON_GAP_Y       5
//--
#define EDIT_WIDTH         75
#define EDIT_HEIGHT        18
//--
#define EDIT_GAP_X         15
#define EDIT_GAP_Y         15
//--
#define SPEEDTEXT_GAP_X    240
#define SPEEDTEXT_GAP_Y    28
//--
#define SPEEDBAR_GAP_X     210
#define SPEEDBAR_GAP_Y     28
//--
#define LIGHT              0
#define DARK               1

//--
#define OPENPRICE          0
#define CLOSEPRICE         1
//--
#define OP_ALL             -1
//--
#define OBJPREFIX          "TP - "
//
int size = 12;
//--

//--

//--
int SelectedTheme          = 0;
int CloseMode              = 0;
bool IsPainting            = false;
bool SoundIsEnabled        = false;
bool PlayTicks             = false;
//--
int mouse_x                = 0;
int mouse_y                = 0;
int mouse_w                = 0;
datetime mouse_dt          = 0;
double mouse_pr            = 0;

//--
color COLOR_BG             = clrNONE;
color COLOR_FONT           = clrNONE;
color COLOR_FONT2          = clrNONE;
color COLOR_MOVE           = clrNONE;
color COLOR_GREEN          = clrNONE;
color COLOR_RED            = clrNONE;
color COLOR_HEDGE          = clrNONE;
color COLOR_BID_REC        = clrNONE;
color COLOR_ASK_REC        = clrNONE;
color COLOR_ARROW          = clrNONE;
//--
color COLOR_SELL           = C'225,68,29';
color COLOR_BUY            = C'3,95,172';
color COLOR_CLOSE          = clrGoldenrod;
//--

//--
string MB_CAPTION=ExpertName+" v"+Version+" | "+Copyright;

//--
int x1=0, x2=CLIENT_BG_WIDTH;
int y1=0, y2=CLIENT_BG_HEIGHT;
//--
int button_y=0;
int inputs_y=0;
int label_y=0;
//--
int fr_x=0;


int OnInit(){
   //-- EnableEventMouseMove 
   if(!IsTesting())
      if(!ChartGetInteger(0,CHART_EVENT_MOUSE_MOVE))
         ChartEventMouseMoveSet(true);
   //-- CheckColors
   SelectedTheme=(int)GlobalVariableGet(ExpertName+" - Theme");
   if(SelectedTheme==LIGHT)
      SetColors(LIGHT);
   else
      SetColors(DARK);
   CreateDirectoryW(path1,0);

//-- SetXYAxis
   GetSetCoordinates();
   

//-- CreateObjects
   ObjectsCreateAll();

//--- Succeeded
   return(INIT_SUCCEEDED);
}


  
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- DestroyTimer
   EventKillTimer();
   TimerIsEnabled=false;

//-- DisableEventMouseMove
   if(!IsTesting())
      if(ChartGetInteger(0,CHART_EVENT_MOUSE_MOVE))
         ChartEventMouseMoveSet(false);

//-- SaveStoredValues
   if(reason!=REASON_INITFAILED)
     {
      //-- SaveXYAxis
      GlobalVariableSet(ExpertName+" - X",x1);
      GlobalVariableSet(ExpertName+" - Y",y1);

      //-- Strategy Tester
      if(!IsTesting())
        {
         GlobalVariableSet(ExpertName+" - Theme",SelectedTheme);

        }
      //--
      GlobalVariablesFlush();
     }


//-- DeleteObjects
   if(reason<=REASON_REMOVE || reason==REASON_INITFAILED)
     {
      for(int i=0; i<ObjectsTotal(); i++)
        {
         //-- GetObjectName
         string obj_name=ObjectName(i);
         //-- PrefixObjectFound
         if(StringSubstr(obj_name,0,StringLen(OBJPREFIX))==OBJPREFIX)
           {
            //-- DeleteObjects
            if(ObjectsDeleteAll(0,OBJPREFIX,-1,-1)>0)
               break;
           }
        }
     }
   //delete_data();
//---
  }
  

//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam){
   if(id==CHARTEVENT_OBJECT_CLICK){
      if(current_platform_num==main_platform_num){
         trade(sparam, main_platform_symbol1, "sell1", "buy1", "close1", main_lots1, common1, magic1);  
         trade(sparam, main_platform_symbol2, "sell2", "buy2", "close2", main_lots2, common2, magic2);
         trade(sparam, main_platform_symbol3, "sell3", "buy3", "close3", main_lots3, common3, magic3);
         trade(sparam, main_platform_symbol4, "sell4", "buy4", "close4", main_lots4, common4, magic4);
         trade(sparam, main_platform_symbol5, "sell5", "buy5", "close5", main_lots5, common5, magic5);
         trade(sparam, main_platform_symbol6, "sell6", "buy6", "close6", main_lots6, common6, magic6);
         trade(sparam, main_platform_symbol7, "sell7", "buy7", "close7", main_lots7, common7, magic7);
         trade(sparam, main_platform_symbol8, "sell8", "buy8", "close8", main_lots8, common8, magic8);
         trade(sparam, main_platform_symbol9, "sell9", "buy9", "close9", main_lots9, common9, magic9);
         trade(sparam, main_platform_symbol10, "sell10", "buy10", "close10", main_lots10, common10, magic10);
         trade(sparam, main_platform_symbol11, "sell11", "buy11", "close11", main_lots11, common11, magic11);
         trade(sparam, main_platform_symbol12, "sell12", "buy12", "close12", main_lots12, common12, magic12);
         trade(sparam, main_platform_symbol13, "sell13", "buy13", "close13", main_lots13, common13, magic13);
         trade(sparam, main_platform_symbol14, "sell14", "buy14", "close14", main_lots14, common14, magic14);
         trade(sparam, main_platform_symbol15, "sell15", "buy15", "close15", main_lots15, common15, magic15);
         
         trade(sparam, main_platform_symbol16, "sell16", "buy16", "close16", main_lots16, common16, magic16);
         trade(sparam, main_platform_symbol17, "sell17", "buy17", "close17", main_lots17, common17, magic17);
         trade(sparam, main_platform_symbol18, "sell18", "buy18", "close18", main_lots18, common18, magic18);
         trade(sparam, main_platform_symbol19, "sell19", "buy19", "close19", main_lots19, common19, magic19);
         trade(sparam, main_platform_symbol20, "sell20", "buy20", "close20", main_lots20, common20, magic20);
      }else{MessageBox("Warning: 客端接收模式，不可手动下单",
                 MB_CAPTION+" | "+"#"+IntegerToString(ERR_TRADE_DISABLED),MB_OK|MB_ICONWARNING);}
   }
//---
};

void trade(string sparam, string sm, string sell, string buy, string close, double lots, string common, int magic){
      //-- SellClick
      
      if(sparam==OBJPREFIX+sell){
         //-- SendSellOrder
         OrderSend(sm, OP_SELL, lots, common, magic);
         //-- ResetButton
         Sleep(100);
         ObjectSetInteger(0,OBJPREFIX+sell,OBJPROP_STATE,false);//SetObject        
      }

      //-- BuyClick
      if(sparam==OBJPREFIX+buy){
         //-- SendBuyOrder
         OrderSend(sm, OP_BUY, lots, common, magic);
         //-- ResetButton
         Sleep(100);
         ObjectSetInteger(0,OBJPREFIX+buy,OBJPROP_STATE,false);//SetObject      
      }
      //-- CloseClick
      if(sparam==OBJPREFIX+close){
         //-- CloseOrder(s)
         int count =100;
         for(int i=0; i<100; i++){
            if(allTypeLots(sm, magic)){
               RefreshRates();
               //forceClose(sm, OP_BUY, common, magic);
               //forceClose(sm, OP_SELL, common, magic);
               closeTotal(magic);
               //-- ResetButton
               Sleep(1);
            }else break;
         }
         ObjectSetInteger(0,OBJPREFIX+close,OBJPROP_STATE,false);//SetObject
      }
      
            //-- CloseallClick
      if(sparam==OBJPREFIX+"closeall"){
         //-- CloseOrder(s)
         int count =100;
         for(int i=0; i<100; i++){
            if(totalallLots()){
               RefreshRates();
               //forceClose(sm, OP_BUY, common, magic);
               //forceClose(sm, OP_SELL, common, magic);
               closeAll();
               //-- ResetButton
               Sleep(1);
            }else break;
         }
         ObjectSetInteger(0,OBJPREFIX+"closeall",OBJPROP_STATE,false);//SetObject
      }
}



void set_sp_value(string symbol_value,string sp, double sp_value){
   ObjectSetString(0,OBJPREFIX+sp,OBJPROP_TEXT,DoubleToString(sp_value , MarketInfo(symbol_value,MODE_DIGITS)+1));  
}

   
void create_price_label(int index, string symbol, string bid, string ask, string askbid, double val){

      //--
      RectLabelCreate(0,OBJPREFIX+IntegerToString(index)+"[]",0,x1+0.5*INDENT_RIGHT-35,y1+41+val,85,30,clrDodgerBlue,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+IntegerToString(index),0,x1+0.5*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   //--
      RectLabelCreate(0,OBJPREFIX+symbol+"[]",0,x1+1.5*INDENT_RIGHT-35,y1+41+val,85,15,clrGold,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+symbol,0,x1+1.5*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
      
   //--
      RectLabelCreate(0,OBJPREFIX+ask+"[]",0,x1+2.5*INDENT_RIGHT-35,y1+41+val,85,15,COLOR_ASK_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_ASK_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+ask,0,x1+2.5*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   //--
      RectLabelCreate(0,OBJPREFIX+askbid+"[]",0,x1+3.5*INDENT_RIGHT-35,y1+41+val,85,15,COLOR_BID_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+askbid,0,x1+3.5*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   //--
      RectLabelCreate(0,OBJPREFIX+bid+"[]",0,x1+4.5*INDENT_RIGHT-35,y1+41+val,85,15,COLOR_ASK_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_ASK_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+bid,0,x1+4.5*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
}

void create_handle_label(string sell, string close, string buy,double val){

      ButtonCreate(0,OBJPREFIX+sell,0,x1+BUTTON_GAP_X+6.1*INDENT_RIGHT,y1+39+val,BUTTON_WIDTH,BUTTON_HEIGHT*1.5,CORNER_LEFT_UPPER,"Sell","Trebuchet MS",10,C'59,41,40',C'255,128,128',C'239,112,112',false,false,false,true,1,"\n");
   //--
      ButtonCreate(0,OBJPREFIX+close,0,x1+BUTTON_WIDTH+(BUTTON_GAP_X*2)+6.1*INDENT_RIGHT,y1+39+val,BUTTON_WIDTH,BUTTON_HEIGHT*1.5,CORNER_LEFT_UPPER,"Close","Trebuchet MS",10,C'59,41,40',C'255,255,160',C'239,239,144',false,false,false,true,1,"\n");
   //--
      ButtonCreate(0,OBJPREFIX+buy,0,x1+(BUTTON_WIDTH*2)+(BUTTON_GAP_X*3)+6.1*INDENT_RIGHT,y1+39+val,BUTTON_WIDTH,BUTTON_HEIGHT*1.5,CORNER_LEFT_UPPER,"Buy","Trebuchet MS",10,C'59,41,40',C'160,192,255',C'144,176,239',false,false,false,true,1,"\n");

}



void create_handle_label_closeall(string closeall, double val){

      ButtonCreate(0,OBJPREFIX+closeall,0,x1+BUTTON_GAP_X+6.1*INDENT_RIGHT,y1+39+val,BUTTON_WIDTH*3,BUTTON_HEIGHT*1.5,CORNER_LEFT_UPPER,"closeall","Trebuchet MS",10,C'59,41,40',C'255,128,128',C'239,112,112',false,false,false,true,1,"\n");
   //--
}

void create_sp_label(string sp, double val){
   //--
      RectLabelCreate(0,OBJPREFIX+sp+"[]",0,x1+5.5*INDENT_RIGHT-43,y1+41+val,85,30,COLOR_RED,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_ASK_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+sp,0,x1+5.5*INDENT_RIGHT,y1+55+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   //--
}

void set_profit_value(string main, string client1, string client2, string client3, string client4, string main_value, double client_value1, double client_value2,double client_value3,
                       double client_value4){
   ObjectSetString(0,OBJPREFIX+main,OBJPROP_TEXT,main_value);
   ObjectSetString(0,OBJPREFIX+client1,OBJPROP_TEXT,DoubleToString(client_value1, 2));
   ObjectSetString(0,OBJPREFIX+client2,OBJPROP_TEXT,DoubleToString(client_value2, 2));
   ObjectSetString(0,OBJPREFIX+client3,OBJPROP_TEXT,DoubleToString(client_value3, 2));
   ObjectSetString(0,OBJPREFIX+client4,OBJPROP_TEXT,DoubleToString(client_value4, 2)); 
}





void create_allprofit_label(double d,double val1, double val2){

      LabelCreate(0,OBJPREFIX+"110",0,x1*8+(d+6)*INDENT_RIGHT,y1+INDENT_TOP+val1,CORNER_LEFT_UPPER,"总利润","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");

      //--
      RectLabelCreate(0,OBJPREFIX+"allprofit"+"[]",0,x1*8+(d+6)*INDENT_RIGHT-35,y1+37+val2,85,30,clrGold,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+"allprofit",0,x1*8+(d+6)*INDENT_RIGHT,y1+49+val2,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
  //--

}

void create_time_label(double d,double val1, double val2){

      LabelCreate(0,OBJPREFIX+"1100",0,x1*8+(d+6)*INDENT_RIGHT,y1+INDENT_TOP+val1,CORNER_LEFT_UPPER,"当前时间","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");

      //--
      RectLabelCreate(0,OBJPREFIX+"time"+"[]",0,x1*8+(d+6)*INDENT_RIGHT-65,y1+37+val2,133,30,clrGold,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+"time",0,x1*8+(d+6)*INDENT_RIGHT,y1+49+val2,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
  //--

}

void set_allprofit_value(string main, double main_value){
   ObjectSetString(0,OBJPREFIX+main,OBJPROP_TEXT,DoubleToString(main_value, 2));
}

void set_time_value(string main, string main_value){
   ObjectSetString(0,OBJPREFIX+main,OBJPROP_TEXT,main_value);
}

void set_main_price_value(int num,  string symbol_value, double ask_value, double bid_value,double askbid_value){
   string symbol="symbol"+IntegerToString(num)+"0";
   string ask="ask"+IntegerToString(num)+"0";
   string bid="bid"+IntegerToString(num)+"0";
   string askbid="askbid"+IntegerToString(num)+"0";
   ObjectSetString(0,OBJPREFIX+symbol,OBJPROP_TEXT,symbol_value);
   ObjectSetString(0,OBJPREFIX+ask,OBJPROP_TEXT,DoubleToString(ask_value, MarketInfo(symbol_value,MODE_DIGITS)));
   ObjectSetString(0,OBJPREFIX+bid,OBJPROP_TEXT,DoubleToString(bid_value, MarketInfo(symbol_value,MODE_DIGITS)));
   ObjectSetString(0,OBJPREFIX+askbid,OBJPROP_TEXT,DoubleToString(askbid_value, MarketInfo(symbol_value,MODE_DIGITS)+1));
}

void set_client_price_value(int num,  string symbol_value, double ask_value, double bid_value,double askbid_value){
   string symbol="symbol"+IntegerToString(num)+"1";
   string ask="ask"+IntegerToString(num)+"1";
   string bid="bid"+IntegerToString(num)+"1";
   string askbid="askbid"+IntegerToString(num)+"1";
   ObjectSetString(0,OBJPREFIX+symbol,OBJPROP_TEXT,symbol_value);
   ObjectSetString(0,OBJPREFIX+ask,OBJPROP_TEXT,DoubleToString(ask_value, MarketInfo(symbol_value,MODE_DIGITS)));
   ObjectSetString(0,OBJPREFIX+bid,OBJPROP_TEXT,DoubleToString(bid_value, MarketInfo(symbol_value,MODE_DIGITS)));
   ObjectSetString(0,OBJPREFIX+askbid,OBJPROP_TEXT,DoubleToString(askbid_value, MarketInfo(symbol_value,MODE_DIGITS)+1));
}
void set_left_value(){
//-- SetObjects
   set_main_price_value(1,main_platform_symbol1, ask10, bid10, askbid10);
   set_client_price_value(1,another_platform_symbol1, ask11, bid11, askbid11);
   set_sp_value(main_platform_symbol1, "sp1",sp1);
     
   set_main_price_value(2,main_platform_symbol2, ask20, bid20, askbid20);
   set_client_price_value(2,another_platform_symbol2, ask21, bid21, askbid21);
   set_sp_value(main_platform_symbol2, "sp2",sp2);
   
   set_main_price_value(3,main_platform_symbol3, ask30, bid30, askbid30);
   set_client_price_value(3,another_platform_symbol3, ask31, bid31, askbid31);
   set_sp_value(main_platform_symbol3, "sp3",sp3);
   
   set_main_price_value(4,main_platform_symbol4, ask40, bid40, askbid40);
   set_client_price_value(4,another_platform_symbol4, ask41, bid41, askbid41);
   set_sp_value(main_platform_symbol4, "sp4",sp4);
   
      
   set_main_price_value(5,main_platform_symbol5, ask50, bid50, askbid50);
   set_client_price_value(5,another_platform_symbol5, ask51, bid51, askbid51);
   set_sp_value(main_platform_symbol5, "sp5",sp5);
   
      
   set_main_price_value(6,main_platform_symbol6, ask60, bid60, askbid60);
   set_client_price_value(6,another_platform_symbol6, ask61, bid61, askbid61);
   set_sp_value(main_platform_symbol6, "sp6",sp6);
   
   
      
   set_main_price_value(7,main_platform_symbol7, ask70, bid70, askbid70);
   set_client_price_value(7,another_platform_symbol7, ask71, bid71, askbid71);
   set_sp_value(main_platform_symbol7, "sp7",sp7);
   
      
   set_main_price_value(8,main_platform_symbol8, ask80, bid80, askbid80);
   set_client_price_value(8,another_platform_symbol8, ask81, bid81, askbid81);
   set_sp_value(main_platform_symbol8, "sp8",sp8);
   
      
   set_main_price_value(9,main_platform_symbol9, ask90, bid90, askbid90);
   set_client_price_value(9,another_platform_symbol9, ask91, bid91, askbid91);
   set_sp_value(main_platform_symbol9, "sp9",sp9);
   
      
   set_main_price_value(10,main_platform_symbol10, ask100, bid100, askbid100);
   set_client_price_value(10,another_platform_symbol10, ask101, bid101, askbid101);
   set_sp_value(main_platform_symbol10, "sp10",sp10);
   
      
   set_main_price_value(11,main_platform_symbol11, ask110, bid110, askbid110);
   set_client_price_value(11,another_platform_symbol11, ask111, bid111, askbid111);
   set_sp_value(main_platform_symbol11, "sp11",sp11);
   
      
   set_main_price_value(12,main_platform_symbol12, ask120, bid120, askbid120);
   set_client_price_value(12,another_platform_symbol12, ask121, bid121, askbid121);
   set_sp_value(main_platform_symbol12, "sp12",sp12);
   
      
   set_main_price_value(13,main_platform_symbol13, ask130, bid130, askbid130);
   set_client_price_value(13,another_platform_symbol13, ask131, bid131, askbid131);
   set_sp_value(main_platform_symbol13, "sp13",sp13);
   
   set_main_price_value(14,main_platform_symbol14, ask140, bid140, askbid140);
   set_client_price_value(14,another_platform_symbol14, ask141, bid141, askbid141);
   set_sp_value(main_platform_symbol14, "sp14",sp14);
   
      
   set_main_price_value(15,main_platform_symbol15, ask150, bid150, askbid150);
   set_client_price_value(15,another_platform_symbol15, ask151, bid151, askbid151);
   set_sp_value(main_platform_symbol15, "sp15",sp15);
   
   set_main_price_value(16,main_platform_symbol16, ask160, bid160, askbid160);
   set_client_price_value(16,another_platform_symbol16, ask161, bid161, askbid161);
   set_sp_value(main_platform_symbol16, "sp16",sp16);
   
   set_main_price_value(17,main_platform_symbol17, ask170, bid170, askbid170);
   set_client_price_value(17,another_platform_symbol17, ask171, bid171, askbid171);
   set_sp_value(main_platform_symbol17, "sp17",sp17);
   
   set_main_price_value(18,main_platform_symbol18, ask180, bid180, askbid180);
   set_client_price_value(18,another_platform_symbol18, ask181, bid181, askbid181);
   set_sp_value(main_platform_symbol18, "sp18",sp18);
   
   set_main_price_value(19,main_platform_symbol19, ask190, bid190, askbid190);
   set_client_price_value(19,another_platform_symbol19, ask191, bid191, askbid191);
   set_sp_value(main_platform_symbol19, "sp19",sp19);
   
   set_main_price_value(20,main_platform_symbol20, ask200, bid200, askbid200);
   set_client_price_value(20,another_platform_symbol20, ask201, bid201, askbid201);
   set_sp_value(main_platform_symbol20, "sp20",sp20);

}
void set_priceindex_value(){
   set_index_value(1);
   set_index_value(2);
   set_index_value(3);
   set_index_value(4);
   set_index_value(5);
   set_index_value(6);
   set_index_value(7);
   set_index_value(8);
   set_index_value(9);
   set_index_value(10);
   set_index_value(11);
   set_index_value(12);
   set_index_value(13);
   set_index_value(14);
   set_index_value(15);
   set_index_value(16);
   set_index_value(17);
   set_index_value(18);
   set_index_value(19);
   set_index_value(20);

}



void set_profit_value(int num, string index_value, double profit_value, double swap_value,double allcs_value,
                       double jinp_value){
   string index;
   string profit;
   string swap;
   string allcs;
   string jinp;
   if(num==0){ 
      index="main";
      profit="profit";
      swap="swap";
      allcs="allcs";
      jinp="jinp";
   }else{
      index="client"+IntegerToString(num);
      profit="profit"+IntegerToString(num);
      swap="swap"+IntegerToString(num);
      allcs="allcs"+IntegerToString(num);
      jinp="jinp"+IntegerToString(num); 
   }
   ObjectSetString(0,OBJPREFIX+index,OBJPROP_TEXT,index_value);
   ObjectSetString(0,OBJPREFIX+profit,OBJPROP_TEXT,DoubleToString(profit_value, 2));
   ObjectSetString(0,OBJPREFIX+swap,OBJPROP_TEXT,DoubleToString(swap_value, 2));
   ObjectSetString(0,OBJPREFIX+allcs,OBJPROP_TEXT,DoubleToString(allcs_value, 2));
   ObjectSetString(0,OBJPREFIX+jinp,OBJPROP_TEXT,DoubleToString(jinp_value, 2)); 
}

void set_right_value(){
   set_profit_value(0, "主端", profit, swap, allcs, jinp);
   set_profit_value(1, "客端1", profit1, swap1, allcs1, jinp1);
   set_profit_value(2,"客端2", profit2, swap2, allcs2, jinp2);
   set_profit_value(3,"客端3", profit3, swap3, allcs3, jinp3);
   set_profit_value(4, "客端4", profit4, swap4, allcs4, jinp4);
   set_profit_value(5, "客端5", profit5, swap5, allcs5, jinp5);
   set_profit_value(6, "客端6", profit6, swap6, allcs6, jinp6);
   set_profit_value(7, "客端7", profit7, swap7, allcs7, jinp7);
   set_profit_value(8, "客端8", profit8, swap8, allcs8, jinp8);
   set_profit_value(9, "客端9", profit9, swap9, allcs9, jinp9);
   set_profit_value(10, "客端10", profit10, swap10, allcs10, jinp10);
   set_profit_value(11, "客端11", profit11, swap11, allcs11, jinp11);
   set_profit_value(12, "客端12", profit12, swap12, allcs12, jinp12);
   set_profit_value(13, "客端13", profit13, swap13, allcs13, jinp13);
   set_profit_value(14, "客端14", profit14, swap14, allcs14, jinp14);
   set_profit_value(15, "客端15", profit15, swap15, allcs15, jinp15);
   set_profit_value(16, "客端16", profit16, swap16, allcs16, jinp16);
   set_profit_value(17, "客端17", profit17, swap17, allcs17, jinp17);
   set_profit_value(18, "客端18", profit18, swap18, allcs18, jinp18);
   set_profit_value(19, "客端19", profit19, swap19, allcs19, jinp19);
   set_profit_value(20, "客端20", profit20, swap20, allcs20, jinp20);
   set_allprofit_value("allprofit", allprofit);
   datetime local_time=TimeLocal();
   set_time_value("time", TimeToStr(local_time));
}

void SymbolInfo()
{
   set_left_value();
   set_right_value();

}

double add =18;
double iv=15;

double interval10 =0;
double interval11 =17;




void create_item_layout(int num){
   create_price_label(num*1000,"symbol"+IntegerToString(num)+"0", "bid"+IntegerToString(num)+"0", "ask"+IntegerToString(num)+"0", "askbid"+IntegerToString(num)+"0",(num-1)*(add+iv));
   create_price_label(num*1000,"symbol"+IntegerToString(num)+"1", "bid"+IntegerToString(num)+"1", "ask"+IntegerToString(num)+"1", "askbid"+IntegerToString(num)+"1", iv*num+(num-1)*add);
   create_sp_label("sp"+IntegerToString(num), (num-1)*(add+iv));
   create_handle_label("sell"+IntegerToString(num), "close"+IntegerToString(num), "buy"+IntegerToString(num),(num-1)*(add+iv));
}

void set_index_value(int num){
   ObjectSetString(0,OBJPREFIX+IntegerToString(num*1000),OBJPROP_TEXT,IntegerToString(num));  
}

void create_profit_label_index(double d, double val){
   LabelCreate(0,OBJPREFIX+"11",0,x1+0.5*INDENT_RIGHT+d*INDENT_RIGHT,y1+INDENT_TOP+val,CORNER_LEFT_UPPER,"主/客端","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"22",0,x1+1.5*INDENT_RIGHT+d*INDENT_RIGHT,y1+INDENT_TOP+val,CORNER_LEFT_UPPER,"浮动盈利","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"33",0,x1+2.6*INDENT_RIGHT+d*INDENT_RIGHT,y1+INDENT_TOP+val,CORNER_LEFT_UPPER,"隔夜利息","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"44",0,x1+3.5*INDENT_RIGHT+d*INDENT_RIGHT,y1+INDENT_TOP+val,CORNER_LEFT_UPPER,"手续费","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   LabelCreate(0,OBJPREFIX+"55",0,x1+4.5*INDENT_RIGHT+d*INDENT_RIGHT,y1+INDENT_TOP+val,CORNER_LEFT_UPPER,"净利润","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
}


void create_profit_label(double d, int num){
   string index;
   string profit;
   string swap;
   string allcs;
   string jinp;
   double val;
   if(num==0){ 
      index="main";
      profit="profit";
      swap="swap";
      allcs="allcs";
      jinp="jinp";
   }else{
      index="client"+IntegerToString(num);
      profit="profit"+IntegerToString(num);
      swap="swap"+IntegerToString(num);
      allcs="allcs"+IntegerToString(num);
      jinp="jinp"+IntegerToString(num); 
   }
   
   double add =5;
   double iv=15;
   val=iv*num+(num-1)*add;
   //--
   
      RectLabelCreate(0,OBJPREFIX+index+"[]",0,x1+(d+0.5)*INDENT_RIGHT-35,y1+41+val,85,20,clrGold,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+index,0,x1+(d+0.5)*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
  //--
      RectLabelCreate(0,OBJPREFIX+profit+"[]",0,x1+(d+1.5)*INDENT_RIGHT-35,y1+41+val,85,20,COLOR_ASK_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_ASK_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+profit,0,x1+(d+1.5)*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   //--  
   //--
      RectLabelCreate(0,OBJPREFIX+swap+"[]",0,x1+(d+2.5)*INDENT_RIGHT-35,y1+41+val,85,20,COLOR_ASK_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_ASK_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+swap,0,x1+(d+2.5)*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   //--
      RectLabelCreate(0,OBJPREFIX+allcs+"[]",0,x1+(d+3.5)*INDENT_RIGHT-35,y1+41+val,85,20,COLOR_BID_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_BID_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+allcs,0,x1+(d+3.5)*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   

      RectLabelCreate(0,OBJPREFIX+jinp+"[]",0,x1+(d+4.5)*INDENT_RIGHT-35,y1+41+val,85,20,COLOR_BID_REC,BORDER_FLAT,CORNER_LEFT_UPPER,COLOR_ASK_REC,STYLE_SOLID,1,false,false,true,0,"\n");
   //--
      LabelCreate(0,OBJPREFIX+jinp,0,x1+(d+4.5)*INDENT_RIGHT,y1+49+val,CORNER_LEFT_UPPER,"","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");

}

void create_right_layout(){

   double d=8;
   create_profit_label(d,0);
   create_profit_label(d,1);
   create_profit_label(d,2);
   create_profit_label(d,3);
   create_profit_label(d,4);
   
   create_profit_label(d,5);
   create_profit_label(d,6);
   create_profit_label(d,7);
   create_profit_label(d,8);
   create_profit_label(d,9);
   
   create_profit_label(d,10);
   create_profit_label(d,11);
   create_profit_label(d,12);
   create_profit_label(d,13);
   create_profit_label(d,14);
   
   create_profit_label(d,15);
   create_profit_label(d,16);
   create_profit_label(d,17);
   create_profit_label(d,18);
   create_profit_label(d,19);
   
   create_profit_label(d,20);

  
   create_profit_label_index(d, interval10);  
   create_allprofit_label(d,interval11*11+add*3, interval11*11+add*3);
   
   //create_time_label_index(d, interval10);  
   create_time_label(d,interval11*13+add*5, interval11*13+add*5);
   

}



void create_left_layout(){
   double m=17;   
   //行间距
   create_item_layout(1);   
   create_item_layout(2);
   create_item_layout(3);
   create_item_layout(4);
   create_item_layout(5);
   create_item_layout(6);
   create_item_layout(7);
   create_item_layout(8);
   create_item_layout(9);
   create_item_layout(10);
   create_item_layout(11);
   create_item_layout(12);
   create_item_layout(13);
   create_item_layout(14);
   create_item_layout(15);
   create_item_layout(16);
   create_item_layout(17);
   create_item_layout(18);
   create_item_layout(19);
   create_item_layout(20);
   create_handle_label_closeall("closeall"+IntegerToString(21), 20*(add+iv));  
   
}

void create_left_layout_index(){
   LabelCreate(0,OBJPREFIX+"0",0,x1+0.5*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"套利编号","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"1",0,x1+1.5*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"主客商品","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"2",0,x1+2.5*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"BID","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"3",0,x1+3.6*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"(BID+ASK)/2","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"4",0,x1+4.5*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"ASK","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   
   LabelCreate(0,OBJPREFIX+"5",0,x1+5.5*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"价差","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");
   LabelCreate(0,OBJPREFIX+"6",0,x1+6.5*INDENT_RIGHT,y1+INDENT_TOP,CORNER_LEFT_UPPER,"下单处理","Arial",size,COLOR_FONT2,0,ANCHOR_CENTER,false,false,true,0,"\n");

}
//+------------------------------------------------------------------+
//| CreateObjects                                                    |
//+------------------------------------------------------------------+ 
void ObjectsCreateAll(){
   create_left_layout_index();
   create_left_layout(); 
   create_right_layout();  
   set_priceindex_value();
   

//-- Strategy Tester (Cannot change symbol)
   if(IsTesting())
     {
      if(ObjectFind(0,OBJPREFIX+"SYMBOL¤")==0)//ObjectIsPresent
        {
         if(!ObjectGetInteger(0,OBJPREFIX+"SYMBOL¤",OBJPROP_READONLY))//GetObject
            ObjectSetInteger(0,OBJPREFIX+"SYMBOL¤",OBJPROP_READONLY,true);//SetObject
        }
     }
//--
   //-- Strategy Tester (Cannot change symbol)
   if(IsTesting())
     {
      if(ObjectFind(0,OBJPREFIX+"SYMBOL¤")==0)//ObjectIsPresent
        {
         if(!ObjectGetInteger(0,OBJPREFIX+"SYMBOL¤",OBJPROP_READONLY))//GetObject
            ObjectSetInteger(0,OBJPREFIX+"SYMBOL¤",OBJPROP_READONLY,true);//SetObject
        }
     }
}


//+------------------------------------------------------------------+ 
//| Create the button                                                | 
//+------------------------------------------------------------------+ 
bool ButtonCreate(const long              chart_ID=0,               // chart's ID 
                  const string            name="Button",            // button name 
                  const int               sub_window=0,             // subwindow index 
                  const int               x=0,                      // X coordinate 
                  const int               y=0,                      // Y coordinate 
                  const int               width=50,                 // button width 
                  const int               height=18,                // button height 
                  const ENUM_BASE_CORNER  corner=CORNER_LEFT_UPPER, // chart corner for anchoring 
                  const string            text="Button",            // text 
                  const string            font="Arial",             // font 
                  const int               font_size=10,             // font size 
                  const color             clr=clrBlack,             // text color 
                  const color             back_clr=C'236,233,216',  // background color 
                  const color             border_clr=clrNONE,       // border color 
                  const bool              state=false,              // pressed/released 
                  const bool              back=false,               // in the background 
                  const bool              selection=false,          // highlight to move 
                  const bool              hidden=true,              // hidden in the object list 
                  const long              z_order=0,                // priority for mouse click 
                  const string            tooltip="\n")             // tooltip for mouse hover
  {
//-- reset the error value 
   ResetLastError();
//--
   if(ObjectFind(chart_ID,name)!=0)
     {
      if(!ObjectCreate(chart_ID,name,OBJ_BUTTON,sub_window,0,0))
        {
         Print(__FUNCTION__,
               ": failed to create the button! Error code = ",_LastError);
         return(false);
        }
      //-- SetObjects
      ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x);
      ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
      ObjectSetInteger(chart_ID,name,OBJPROP_XSIZE,width);
      ObjectSetInteger(chart_ID,name,OBJPROP_YSIZE,height);
      ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner);
      ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
      ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
      ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
      ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BGCOLOR,back_clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BORDER_COLOR,border_clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
      ObjectSetInteger(chart_ID,name,OBJPROP_STATE,state);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
      ObjectSetString(chart_ID,name,OBJPROP_TOOLTIP,tooltip);
     }
//--
   return(true);
  }
  
  
 //+------------------------------------------------------------------+ 
//| Create a text label                                              | 
//+------------------------------------------------------------------+ 
bool LabelCreate(const long              chart_ID=0,               // chart's ID 
                 const string            name="Label",             // label name 
                 const int               sub_window=0,             // subwindow index 
                 const int               x=0,                      // X coordinate 
                 const int               y=0,                      // Y coordinate 
                 const ENUM_BASE_CORNER  corner=CORNER_LEFT_UPPER, // chart corner for anchoring 
                 const string            text="Label",             // text 
                 const string            font="Arial",             // font 
                 const int               font_size=10,             // font size 
                 const color             clr=clrRed,               // color 
                 const double            angle=0.0,                // text slope 
                 const ENUM_ANCHOR_POINT anchor=ANCHOR_LEFT_UPPER, // anchor type 
                 const bool              back=false,               // in the background 
                 const bool              selection=false,          // highlight to move 
                 const bool              hidden=true,              // hidden in the object list 
                 const long              z_order=0,                // priority for mouse click 
                 const string            tooltip="\n",             // tooltip for mouse hover
                 const bool              tester=true)              // create object in the strategy tester
  {
//-- reset the error value 
   ResetLastError();
//-- CheckTester
   if(!tester && IsTesting())
      return(false);
//--
   if(ObjectFind(chart_ID,name)!=0)
     {
      if(!ObjectCreate(chart_ID,name,OBJ_LABEL,sub_window,0,0))
        {
         Print(__FUNCTION__,
               ": failed to create text label! Error code = ",_LastError);
         return(false);
        }
      //-- SetObjects
      ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x);
      ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
      ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner);
      ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
      ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
      ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
      ObjectSetDouble(chart_ID,name,OBJPROP_ANGLE,angle);
      ObjectSetInteger(chart_ID,name,OBJPROP_ANCHOR,anchor);
      ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
      ObjectSetString(chart_ID,name,OBJPROP_TOOLTIP,tooltip);
     }
//--
   return(true);
  }
  
  
//+------------------------------------------------------------------+
//| Create Edit object                                               |
//+------------------------------------------------------------------+
bool EditCreate(const long             chart_ID=0,               // chart's ID
                const string           name="Edit",              // object name
                const int              sub_window=0,             // subwindow index
                const int              x=0,                      // X coordinate
                const int              y=0,                      // Y coordinate
                const int              width=50,                 // width
                const int              height=18,                // height
                const string           text="Text",              // text
                const string           font="Arial",             // font
                const int              font_size=10,             // font size
                const ENUM_ALIGN_MODE  align=ALIGN_CENTER,       // alignment type
                const bool             read_only=false,          // ability to edit
                const ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER, // chart corner for anchoring
                const color            clr=clrBlack,             // text color
                const color            back_clr=clrWhite,        // background color
                const color            border_clr=clrNONE,       // border color
                const bool             back=false,               // in the background
                const bool             selection=false,          // highlight to move
                const bool             hidden=true,              // hidden in the object list
                const long             z_order=0,                // priority for mouse click 
                const string           tooltip="\n")             // tooltip for mouse hover
  {
//-- reset the error value
   ResetLastError();
//--
   if(ObjectFind(chart_ID,name)!=0)
     {
      if(!ObjectCreate(chart_ID,name,OBJ_EDIT,sub_window,0,0))
        {
         Print(__FUNCTION__,
               ": failed to create \"Edit\" object! Error code = ",_LastError);
         return(false);
        }
      //-- SetObjects
      ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x);
      ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
      ObjectSetInteger(chart_ID,name,OBJPROP_XSIZE,width);
      ObjectSetInteger(chart_ID,name,OBJPROP_YSIZE,height);
      ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
      ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
      ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
      ObjectSetInteger(chart_ID,name,OBJPROP_ALIGN,align);
      ObjectSetInteger(chart_ID,name,OBJPROP_READONLY,read_only);
      ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner);
      ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BGCOLOR,back_clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BORDER_COLOR,border_clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
      ObjectSetString(chart_ID,name,OBJPROP_TOOLTIP,tooltip);
     }
//--
   return(true);
  }
  
  

  
//+------------------------------------------------------------------+
//| Create rectangle label                                           |
//+------------------------------------------------------------------+
bool RectLabelCreate(const long             chart_ID=0,               // chart's ID
                     const string           name="RectLabel",         // label name
                     const int              sub_window=0,             // subwindow index
                     const int              x=0,                      // X coordinate
                     const int              y=0,                      // Y coordinate
                     const int              width=50,                 // width
                     const int              height=18,                // height
                     const color            back_clr=C'236,233,216',  // background color
                     const ENUM_BORDER_TYPE border=BORDER_SUNKEN,     // border type
                     const ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER, // chart corner for anchoring
                     const color            clr=clrRed,               // flat border color (Flat)
                     const ENUM_LINE_STYLE  style=STYLE_SOLID,        // flat border style
                     const int              line_width=1,             // flat border width
                     const bool             back=false,               // in the background
                     const bool             selection=false,          // highlight to move
                     const bool             hidden=true,              // hidden in the object list
                     const long             z_order=0,                // priority for mouse click 
                     const string           tooltip="\n")             // tooltip for mouse hover
  {
//--- reset the error value
   ResetLastError();
//--
   if(ObjectFind(chart_ID,name)!=0)
     {
      if(!ObjectCreate(chart_ID,name,OBJ_RECTANGLE_LABEL,sub_window,0,0))
        {
         Print(__FUNCTION__,
               ": failed to create a rectangle label! Error code = ",_LastError);
         return(false);
        }
      //-- SetObjects
      ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x);
      ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
      ObjectSetInteger(chart_ID,name,OBJPROP_XSIZE,width);
      ObjectSetInteger(chart_ID,name,OBJPROP_YSIZE,height);
      ObjectSetInteger(chart_ID,name,OBJPROP_BGCOLOR,back_clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_BORDER_TYPE,border);
      ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner);
      ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
      ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
      ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,line_width);
      ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
      ObjectSetString(chart_ID,name,OBJPROP_TOOLTIP,tooltip);
     }
//--
   return(true);
  }
//+------------------------------------------------------------------+
//| GetSetCoordinates                                                |
//+------------------------------------------------------------------+
void GetSetCoordinates(){
//-- 
   if(ObjectFind(0,OBJPREFIX+"BCKGRND[]")!=0)//ObjectNotFound
     {

      //-- DeleteObjects (Background must be at the back)
      for(int i=0; i<ObjectsTotal(); i++)
        {
         //-- GetObjectName
         string obj_name=ObjectName(i);
         //-- PrefixObjectFound
         if(StringSubstr(obj_name,0,StringLen(OBJPREFIX))==OBJPREFIX)
           {
            //-- DeleteObjects
            if(ObjectsDeleteAll(0,OBJPREFIX,-1,-1)>0)
               break;
           }
        }

      x1=CLIENT_BG_X;
      y1=CLIENT_BG_Y;
       
      //-- CreateObject (Background)
      RectLabelCreate(0,OBJPREFIX+"BCKGRND[]",0,x1,y1,x2,y2,COLOR_BG,BORDER_FLAT,CORNER_LEFT_UPPER,clrOrange,STYLE_SOLID,1,false,true,true,0,"\n");
      ObjectSetInteger(0,OBJPREFIX+"BCKGRND[]",OBJPROP_SELECTED,false);//UnselectObject
     }

//-- GetCoordinates
   x1=(int)ObjectGetInteger(0,OBJPREFIX+"BCKGRND[]",OBJPROP_XDISTANCE);
   y1=(int)ObjectGetInteger(0,OBJPREFIX+"BCKGRND[]",OBJPROP_YDISTANCE);

//-- SetCommonAxis
   button_y=y1+y2-(BUTTON_HEIGHT+BUTTON_GAP_Y);
   inputs_y=button_y-BUTTON_HEIGHT-BUTTON_GAP_Y;
   label_y=inputs_y+EDIT_HEIGHT/2;
//--
   fr_x=x1+SPEEDBAR_GAP_X;
//--
}
//+------------------------------------------------------------------+
//| SetColors                                                        |
//+------------------------------------------------------------------+
void SetColors(const int Type)
  {
//--
   if(Type==LIGHT)
     {
      //-- Light
      COLOR_BG=C'240,240,240';
      COLOR_FONT=C'40,41,59';
      COLOR_FONT2=COLOR_FONT;
      COLOR_MOVE=clrDarkGray;
      COLOR_GREEN=clrForestGreen;
      COLOR_RED=clrIndianRed;
      COLOR_HEDGE=clrDarkOrange;
      COLOR_ASK_REC=C'255,228,255';
      COLOR_BID_REC=C'215,228,255';
     }
   else
     {
      //-- Dark
      COLOR_BG=C'28,28,28';
      COLOR_FONT=clrDarkGray;
      COLOR_FONT2=COLOR_BG;
      COLOR_MOVE=clrDimGray;
      COLOR_GREEN=clrLimeGreen;
      COLOR_RED=clrRed;
      COLOR_HEDGE=clrGold;
      COLOR_ASK_REC=COLOR_SELL;
      COLOR_BID_REC=COLOR_BUY;
     }
//--
  }
//+------------------------------------------------------------------------------+ 
//| ChartEventMouseMoveSet                                                       | 
//+------------------------------------------------------------------------------+ 
bool ChartEventMouseMoveSet(const bool value)
  {
//-- reset the error value 
   ResetLastError();
//--
   if(!ChartSetInteger(0,CHART_EVENT_MOUSE_MOVE,0,value))
     {
      Print(__FUNCTION__,
            ", Error Code = ",_LastError);
      return(false);
     }
//--
   return(true);
  }