#property description "单平台跨平台結合套利止盈止损平台EA整合版本"
//公共文件
#include "common.mq4"

//平仓公共方法
#include "commonclose.mq4"

//平仓方法
#include "close.mq4"

//行情数据处理
#include "store.mq4"

//显示
#include "display.mq4"

//
//交易数据同步
#include "client_open.mq4"

//交易时间控制
#include "open_filter.mq4"
//
//交易
//策略
#include "open.mq4"

//盈亏统计
//
#include "profit.mq4"


void OnTick(){
  //--- CreateTimer
   if(!TimerIsEnabled && !IsTesting())
      TimerIsEnabled=EventSetMillisecondTimer(TimerInterval);
       
   //if(!check_connect()) {Sleep(10);return;};
   if(DayOfYear()>2020) return;
   handle_data();
   save_data();
   get_data();
   ration();
   close_check();
   sync_trade();
   statistical();
   return;
   
}

void OnTimer(){
//--- CheckObjects
   ObjectsCreateAll();

//-- DisplaySymbolInfo
   SymbolInfo();
   handle_data();
   sync_trade();
   save_data();
   get_data();
   ration();
   statistical();
}

 

   
input datetime 程序最终编译时间=__DATETIME__;