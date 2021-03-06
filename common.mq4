
#define Copyright    "Copyright © 2020, btc1688"
#property copyright  Copyright
#property link       "https://www.mql5.com"
#define ExpertName   "单平台跨平台結合套利止盈止损平台EA整合版本"
#define Version      "1.00"
#property version    Version
#property strict      

//当前平台编号
input int current_platform_num = 12340;
//主平台编号
input int main_platform_num = 12340;

//主平台总盈利
double profit=0;
//主平台总利息
double swap=0;

//主平台每手手续费
input double commission=0;
//主平台总手续费
double allcs=0;
//平台净值
double ae=0;
//平台已用预付款
double am=0;
double ra=0;
//停止开单预付款比例
input double ra_stop=30;

//所有平台总盈利
double allprofit=0;

//优先发送信号到客端开关 为True 
input bool priority_sent2client=True;


//延迟开平仓开关
input bool delay_close_switch= True;
input int delay=100;

//延迟开平仓开关
input bool delay_open_switch= True;
input int delay_open=100;

//
input bool equity_close_switch= True;
input bool ration_stop_switch= True;

extern string 所有平台整体止盈止损="-------------------";
//所有平台止盈
input double alltakeprofit=10;
//所有平台止损
input double allstoploss=-10;

//主端平台净值平仓值
input double main_equity_stop=100;
//客端净值平仓点
input double client_equity_stop=100;



extern string 套利设置一="-------------------";
input int another_platform_num1 =23456;
input string main_platform_symbol1 ="EURUSD";
input string another_platform_symbol1="EURUSD";
input double spread1=1;

input double main_lots1=0.01;
input double another_lots1=0.01;
int max_trade_times1=1;

input bool run1 =1;
input bool is_statistical_profit1=True;

input int magic1 = 10000;
string common1 = "holuck1";

//套利一的参数
//本平台货币对
double ask10=0;
double bid10=0;
double askbid10=0;
//另平台货币对
double ask11=0;
double bid11=0;
double askbid11=0;
//本另平台价差
double sp1 =0;

double profit1=0;
double swap1=0;
double allcs1=0;
//平台净值
double ae1=0;
//平台已用预付款
double am1=0;
double ra1=0;

input int p1_start_hour1=0;
input int p1_end_hour1=24;

input int p1_start_hour2=0;
input int p1_end_hour2=24;

input int p1_start_hour3=0;
input int p1_end_hour3=24;

input int p1_start_hour4=0;
input int p1_end_hour4=24;

input int p1_start_hour5=0;
input int p1_end_hour5=24;





extern string 套利设置二="-------------------";
input int another_platform_num2 =23456;
input string main_platform_symbol2 ="USDCHF";
input string another_platform_symbol2="USDCHF";
input double spread2=2;

input double main_lots2=0.01;
input double another_lots2=0.01;
int max_trade_times2=1;

input bool run2 =1;
input bool is_statistical_profit2=FALSE;

input int magic2 = 20000;
string common2 = "holuck2";


//套利二的参数
double ask20=0;
double bid20=0;
double askbid20=0;

double ask21=0;
double bid21=0;
double askbid21=0;

double sp2 =0;

double profit2=0;
double swap2=0;
double allcs2=0;
//平台净值
double ae2=0;
//平台已用预付款
double am2=0;
double ra2=0;


input int p2_start_hour1=0;
input int p2_end_hour1=24;

input int p2_start_hour2=0;
input int p2_end_hour2=24;

input int p2_start_hour3=0;
input int p2_end_hour3=24;

input int p2_start_hour4=0;
input int p2_end_hour4=24;

input int p2_start_hour5=0;
input int p2_end_hour5=24;



extern string 套利设置三="-------------------";
input int another_platform_num3 =23456;
input string main_platform_symbol3 ="USDJPY";
input string another_platform_symbol3="USDJPY";
input double spread3=1;

input double main_lots3=0.01;
input double another_lots3=0.01;
int max_trade_times3=1;

input bool run3 =1;
input bool is_statistical_profit3=FALSE;


input int magic3 = 30000;
string common3 = "holuck3";

//套利三的参数
double ask30=0;
double bid30=0;
double askbid30=0;

double ask31=0;
double bid31=0;
double askbid31=0;

double sp3 =0;

double profit3=0;
double swap3=0;
double allcs3=0;

//平台净值
double ae3=0;
//平台已用预付款
double am3=0;
double ra3=0;

input int p3_start_hour1=0;
input int p3_end_hour1=24;

input int p3_start_hour2=0;
input int p3_end_hour2=24;

input int p3_start_hour3=0;
input int p3_end_hour3=24;

input int p3_start_hour4=0;
input int p3_end_hour4=24;

input int p3_start_hour5=0;
input int p3_end_hour5=24;

extern string 套利设置四="-------------------";
input int another_platform_num4 =23456;
input string main_platform_symbol4 ="GBPUSD";
input string another_platform_symbol4="GBPUSD";
input double spread4=1;

input double main_lots4=0.01;
input double another_lots4=0.01;
int max_trade_times4=1;

input bool run4 =0;
input bool is_statistical_profit4=FALSE;
input int magic4 = 40000;
string common4 = "holuck4";

//套利四的参数
double ask40=0;
double bid40=0;
double askbid40=0;

double ask41=0;
double bid41=0;
double askbid41=0;
double sp4 =0;

double profit4=0;
double swap4=0;
double allcs4=0;

//平台净值
double ae4=0;
//平台已用预付款
double am4=0;
double ra4=0;

input int p4_start_hour1=0;
input int p4_end_hour1=24;

input int p4_start_hour2=0;
input int p4_end_hour2=24;

input int p4_start_hour3=0;
input int p4_end_hour3=24;

input int p4_start_hour4=0;
input int p4_end_hour4=24;

input int p4_start_hour5=0;
input int p4_end_hour5=24;

extern string 套利设置五="-------------------";
input int another_platform_num5 =23456;
input string main_platform_symbol5 ="GBPUSD";
input string another_platform_symbol5="GBPUSD";
input double spread5=1;

input double main_lots5=0.01;
input double another_lots5=0.01;
int max_trade_times5=1;


input bool run5 =1;
input bool is_statistical_profit5=FALSE;
input int magic5 = 400005;
string common5 = "holuck5";

//套利四的参数
double ask50=0;
double bid50=0;
double askbid50=0;

double ask51=0;
double bid51=0;
double askbid51=0;
double sp5 =0;

double profit5=0;
double swap5=0;
double allcs5=0;

//平台净值
double ae5=0;
//平台已用预付款
double am5=0;
double ra5=0;
// 周一到周五开收盘时间
input int p5_start_hour1=0;
input int p5_end_hour1=24;

input int p5_start_hour2=0;
input int p5_end_hour2=24;

input int p5_start_hour3=0;
input int p5_end_hour3=24;

input int p5_start_hour4=0;
input int p5_end_hour4=24;

input int p5_start_hour5=0;
input int p5_end_hour5=24;


extern string 套利设置六="-------------------";
input int another_platform_num6 =23456;
input string main_platform_symbol6 ="GBPUSD";
input string another_platform_symbol6="GBPUSD";
input double spread6=1;

input double main_lots6=0.01;
input double another_lots6=0.01;
int max_trade_times6=1;

input bool run6 =0;
input bool is_statistical_profit6=FALSE;
input int magic6 = 400006;
string common6 = "holuck6";

//套利四的参数
double ask60=0;
double bid60=0;
double askbid60=0;

double ask61=0;
double bid61=0;
double askbid61=0;
double sp6 =0;

double profit6=0;
double swap6=0;
double allcs6=0;

//平台净值
double ae6=0;
//平台已用预付款
double am6=0;
double ra6=0;

// 周一到周五开收盘时间
input int p6_start_hour1=0;
input int p6_end_hour1=24;

input int p6_start_hour2=0;
input int p6_end_hour2=24;

input int p6_start_hour3=0;
input int p6_end_hour3=24;

input int p6_start_hour4=0;
input int p6_end_hour4=24;

input int p6_start_hour5=0;
input int p6_end_hour5=24;


extern string 套利设置七="-------------------";
input int another_platform_num7 =23456;
input string main_platform_symbol7 ="GBPUSD";
input string another_platform_symbol7="GBPUSD";
input double spread7=1;

input double main_lots7=0.01;
input double another_lots7=0.01;
int max_trade_times7=1;

input bool run7 =0;
input bool is_statistical_profit7=FALSE;
input int magic7 = 400007;
string common7 = "holuck7";

//套利四的参数
double ask70=0;
double bid70=0;
double askbid70=0;

double ask71=0;
double bid71=0;
double askbid71=0;
double sp7 =0;

double profit7=0;
double swap7=0;
double allcs7=0;
double ra7=0;

//平台净值
double ae7=0;
//平台已用预付款
double am7=0;


// 周一到周五开收盘时间
input int p7_start_hour1=0;
input int p7_end_hour1=24;

input int p7_start_hour2=0;
input int p7_end_hour2=24;

input int p7_start_hour3=0;
input int p7_end_hour3=24;

input int p7_start_hour4=0;
input int p7_end_hour4=24;

input int p7_start_hour5=0;
input int p7_end_hour5=24;

extern string 套利设置八="-------------------";
input int another_platform_num8 =23456;
input string main_platform_symbol8 ="GBPUSD";
input string another_platform_symbol8="GBPUSD";
input double spread8=1;

input double main_lots8=0.01;
input double another_lots8=0.01;
int max_trade_times8=1;

input bool run8 =0;
input bool is_statistical_profit8=FALSE;
input int magic8 = 800008;
string common8 = "holuck8";

//套利四的参数
double ask80=0;
double bid80=0;
double askbid80=0;

double ask81=0;
double bid81=0;
double askbid81=0;
double sp8 =0;

double profit8=0;
double swap8=0;
double allcs8=0;

//平台净值
double ae8=0;
//平台已用预付款
double am8=0;
double ra8=0;

// 周一到周五开收盘时间
input int p8_start_hour1=0;
input int p8_end_hour1=24;

input int p8_start_hour2=0;
input int p8_end_hour2=24;

input int p8_start_hour3=0;
input int p8_end_hour3=24;

input int p8_start_hour4=0;
input int p8_end_hour4=24;

input int p8_start_hour5=0;
input int p8_end_hour5=24;

extern string 套利设置九="-------------------";
input int another_platform_num9 =23456;
input string main_platform_symbol9 ="GBPUSD";
input string another_platform_symbol9="GBPUSD";
input double spread9=1;

input double main_lots9=0.01;
input double another_lots9=0.01;
int max_trade_times9=1;

input bool run9 =0;
input bool is_statistical_profit9=FALSE;
input int magic9 = 400009;
string common9 = "holuck9";

//套利9的参数
double ask90=0;
double bid90=0;
double askbid90=0;

double ask91=0;
double bid91=0;
double askbid91=0;
double sp9 =0;

double profit9=0;
double swap9=0;
double allcs9=0;

//平台净值
double ae9=0;
//平台已用预付款
double am9=0;
double ra9=0;

// 周一到周五开收盘时间
input int p9_start_hour1=0;
input int p9_end_hour1=24;

input int p9_start_hour2=0;
input int p9_end_hour2=24;

input int p9_start_hour3=0;
input int p9_end_hour3=24;

input int p9_start_hour4=0;
input int p9_end_hour4=24;

input int p9_start_hour5=0;
input int p9_end_hour5=24;

extern string 套利设置十="-------------------";
input int another_platform_num10 =23456;
input string main_platform_symbol10 ="GBPUSD";
input string another_platform_symbol10="GBPUSD";
input double spread10=1;

input double main_lots10=0.01;
input double another_lots10=0.01;
int max_trade_times10=1;

input bool run10 =0;
input bool is_statistical_profit10=FALSE;
input int magic10 = 4000010;
string common10 = "holuck10";

//套利四的参数
double ask100=0;
double bid100=0;
double askbid100=0;

double ask101=0;
double bid101=0;
double askbid101=0;
double sp10 =0;

double profit10=0;
double swap10=0;
double allcs10=0;

//平台净值
double ae10=0;
//平台已用预付款
double am10=0;

double ra10=0;

// 周一到周五开收盘时间
input int p10_start_hour1=0;
input int p10_end_hour1=24;

input int p10_start_hour2=0;
input int p10_end_hour2=24;

input int p10_start_hour3=0;
input int p10_end_hour3=24;

input int p10_start_hour4=0;
input int p10_end_hour4=24;

input int p10_start_hour5=0;
input int p10_end_hour5=24;

extern string 套利设置十一="-------------------";
input int another_platform_num11 =23456;
input string main_platform_symbol11 ="GBPUSD";
input string another_platform_symbol11="GBPUSD";
input double spread11=1;

input double main_lots11=0.01;
input double another_lots11=0.01;
int max_trade_times11=1;

input bool run11 =0;
input bool is_statistical_profit11=FALSE;
input int magic11 = 4000011;
string common11 = "holuck11";

//套利四的参数
double ask110=0;
double bid110=0;
double askbid110=0;

double ask111=0;
double bid111=0;
double askbid111=0;
double sp11 =0;

double profit11=0;
double swap11=0;
double allcs11=0;

//平台净值
double ae11=0;
//平台已用预付款
double am11=0;
double ra11=0;

// 周一到周五开收盘时间
input int p11_start_hour1=0;
input int p11_end_hour1=24;

input int p11_start_hour2=0;
input int p11_end_hour2=24;

input int p11_start_hour3=0;
input int p11_end_hour3=24;

input int p11_start_hour4=0;
input int p11_end_hour4=24;

input int p11_start_hour5=0;
input int p11_end_hour5=24;

extern string 套利设置12="-------------------";
input int another_platform_num12 =23456;
input string main_platform_symbol12 ="GBPUSD";
input string another_platform_symbol12="GBPUSD";
input double spread12=1;

input double main_lots12=0.01;
input double another_lots12=0.01;
int max_trade_times12=1;

input bool run12 =0;
input bool is_statistical_profit12=FALSE;
input int magic12 = 4000012;
string common12 = "holuck12";

//套利四的参数
double ask120=0;
double bid120=0;
double askbid120=0;

double ask121=0;
double bid121=0;
double askbid121=0;
double sp12 =0;

double profit12=0;
double swap12=0;
double allcs12=0;
//平台净值
double ae12=0;
//平台已用预付款
double am12=0;
double ra12=0;


// 周一到周五开收盘时间
input int p12_start_hour1=0;
input int p12_end_hour1=24;

input int p12_start_hour2=0;
input int p12_end_hour2=24;

input int p12_start_hour3=0;
input int p12_end_hour3=24;

input int p12_start_hour4=0;
input int p12_end_hour4=24;

input int p12_start_hour5=0;
input int p12_end_hour5=24;

extern string 套利设置十三="-------------------";
input int another_platform_num13 =23456;
input string main_platform_symbol13 ="GBPUSD";
input string another_platform_symbol13="GBPUSD";
input double spread13=1;

input double main_lots13=0.01;
input double another_lots13=0.01;
int max_trade_times13=1;

input bool run13 =0;
input bool is_statistical_profit13=FALSE;
input int magic13 = 4000013;
string common13 = "holuck13";

//套利四的参数
double ask130=0;
double bid130=0;
double askbid130=0;

double ask131=0;
double bid131=0;
double askbid131=0;
double sp13 =0;

double profit13=0;
double swap13=0;
double allcs13=0;

//平台净值
double ae13=0;
//平台已用预付款
double am13=0;
double ra13=0;

// 周一到周五开收盘时间
input int p13_start_hour1=0;
input int p13_end_hour1=24;

input int p13_start_hour2=0;
input int p13_end_hour2=24;

input int p13_start_hour3=0;
input int p13_end_hour3=24;

input int p13_start_hour4=0;
input int p13_end_hour4=24;

input int p13_start_hour5=0;
input int p13_end_hour5=24;

extern string 套利设置十四="-------------------";
input int another_platform_num14 =23456;
input string main_platform_symbol14 ="GBPUSD";
input string another_platform_symbol14="GBPUSD";
input double spread14=1;

input double main_lots14=0.01;
input double another_lots14=0.01;
int max_trade_times14=1;

input bool run14 =0;
input bool is_statistical_profit14=FALSE;
input int magic14 = 4000014;
string common14 = "holuck14";

//套利四的参数
double ask140=0;
double bid140=0;
double askbid140=0;

double ask141=0;
double bid141=0;
double askbid141=0;
double sp14 =0;

double profit14=0;
double swap14=0;
double allcs14=0;


// 周一到周五开收盘时间
input int p14_start_hour1=0;
input int p14_end_hour1=24;

input int p14_start_hour2=0;
input int p14_end_hour2=24;

input int p14_start_hour3=0;
input int p14_end_hour3=24;

input int p14_start_hour4=0;
input int p14_end_hour4=24;

input int p14_start_hour5=0;
input int p14_end_hour5=24;

//平台净值
double ae14=0;
//平台已用预付款
double am14=0;
double ra14=0;

extern string 套利设置十五="-------------------";
input int another_platform_num15 =23456;
input string main_platform_symbol15 ="GBPUSD";
input string another_platform_symbol15="GBPUSD";
input double spread15=1;

input double main_lots15=0.01;
input double another_lots15=0.01;
int max_trade_times15=1;

input bool run15 =0;
input bool is_statistical_profit15=FALSE;
input int magic15 = 15000015;
string common15 = "holuck15";

//套利四的参数
double ask150=0;
double bid150=0;
double askbid150=0;

double ask151=0;
double bid151=0;
double askbid151=0;
double sp15 =0;

double profit15=0;
double swap15=0;
double allcs15=0;

//平台净值
double ae15=0;
//平台已用预付款
double am15=0;
double ra15=0;


// 周一到周五开收盘时间
input int p15_start_hour1=0;
input int p15_end_hour1=24;

input int p15_start_hour2=0;
input int p15_end_hour2=24;

input int p15_start_hour3=0;
input int p15_end_hour3=24;

input int p15_start_hour4=0;
input int p15_end_hour4=24;

input int p15_start_hour5=0;
input int p15_end_hour5=24;


extern string 套利设置十六="-------------------";
input int another_platform_num16 =23456;
input string main_platform_symbol16 ="GBPUSD";
input string another_platform_symbol16="GBPUSD";
input double spread16=1;

input double main_lots16=0.01;
input double another_lots16=0.01;
int max_trade_times16=1;

input bool run16 =0;
input bool is_statistical_profit16=FALSE;
input int magic16 = 4000016;
string common16 = "holuck16";

//套利四的参数
double ask160=0;
double bid160=0;
double askbid160=0;

double ask161=0;
double bid161=0;
double askbid161=0;
double sp16 =0;

double profit16=0;
double swap16=0;
double allcs16=0;

//平台净值
double ae16=0;
//平台已用预付款
double am16=0;
double ra16=0;

// 周一到周五开收盘时间
input int p16_start_hour1=0;
input int p16_end_hour1=24;

input int p16_start_hour2=0;
input int p16_end_hour2=24;

input int p16_start_hour3=0;
input int p16_end_hour3=24;

input int p16_start_hour4=0;
input int p16_end_hour4=24;

input int p16_start_hour5=0;
input int p16_end_hour5=24;

extern string 套利设置十七="-------------------";
input int another_platform_num17 =23456;
input string main_platform_symbol17 ="GBPUSD";
input string another_platform_symbol17="GBPUSD";
input double spread17=1;

input double main_lots17=0.01;
input double another_lots17=0.01;
int max_trade_times17=1;

input bool run17 =0;
input bool is_statistical_profit17=FALSE;
input int magic17 = 4000017;
string common17 = "holuck17";

//套利四的参数
double ask170=0;
double bid170=0;
double askbid170=0;

double ask171=0;
double bid171=0;
double askbid171=0;
double sp17 =0;

double profit17=0;
double swap17=0;
double allcs17=0;

//平台净值
double ae17=0;
//平台已用预付款
double am17=0;
double ra17=0;

// 周一到周五开收盘时间
input int p17_start_hour1=0;
input int p17_end_hour1=24;

input int p17_start_hour2=0;
input int p17_end_hour2=24;

input int p17_start_hour3=0;
input int p17_end_hour3=24;

input int p17_start_hour4=0;
input int p17_end_hour4=24;

input int p17_start_hour5=0;
input int p17_end_hour5=24;

extern string 套利设置十八="-------------------";
input int another_platform_num18 =23456;
input string main_platform_symbol18 ="GBPUSD";
input string another_platform_symbol18="GBPUSD";
input double spread18=1;

input double main_lots18=0.01;
input double another_lots18=0.01;
int max_trade_times18=1;

input bool run18 =0;
input bool is_statistical_profit18=FALSE;
input int magic18 = 1000018;
string common18 = "holuck18";

//套利四的参数
double ask180=0;
double bid180=0;
double askbid180=0;

double ask181=0;
double bid181=0;
double askbid181=0;
double sp18 =0;

double profit18=0;
double swap18=0;
double allcs18=0;

//平台净值
double ae18=0;
//平台已用预付款
double am18=0;
double ra18=0;

// 周一到周五开收盘时间
input int p18_start_hour1=0;
input int p18_end_hour1=24;

input int p18_start_hour2=0;
input int p18_end_hour2=24;

input int p18_start_hour3=0;
input int p18_end_hour3=24;

input int p18_start_hour4=0;
input int p18_end_hour4=24;

input int p18_start_hour5=0;
input int p18_end_hour5=24;

extern string 套利设置十九="-------------------";
input int another_platform_num19 =23456;
input string main_platform_symbol19 ="GBPUSD";
input string another_platform_symbol19="GBPUSD";
input double spread19=1;

input double main_lots19=0.01;
input double another_lots19=0.01;
int max_trade_times19=1;

input bool run19 =0;
input bool is_statistical_profit19=FALSE;
input int magic19 = 1000019;
string common19 = "holuck19";

//套利四的参数
double ask190=0;
double bid190=0;
double askbid190=0;

double ask191=0;
double bid191=0;
double askbid191=0;
double sp19 =0;

double profit19=0;
double swap19=0;
double allcs19=0;

//平台净值
double ae19=0;
//平台已用预付款
double am19=0;
double ra19=0;

// 周一到周五开收盘时间
input int p19_start_hour1=0;
input int p19_end_hour1=24;

input int p19_start_hour2=0;
input int p19_end_hour2=24;

input int p19_start_hour3=0;
input int p19_end_hour3=24;

input int p19_start_hour4=0;
input int p19_end_hour4=24;

input int p19_start_hour5=0;
input int p19_end_hour5=24;

extern string 套利设置二十="-------------------";
input int another_platform_num20 =23456;
input string main_platform_symbol20 ="GBPUSD";
input string another_platform_symbol20="GBPUSD";
input double spread20=1;

input double main_lots20=0.01;
input double another_lots20=0.01;
int max_trade_times20=1;

input bool run20 =0;
input bool is_statistical_profit20=FALSE;
input int magic20 = 200020;
string common20 = "holuck20";

//套利四的参数
double ask200=0;
double bid200=0;
double askbid200=0;

double ask201=0;
double bid201=0;
double askbid201=0;
double sp20 =0;

double profit20=0;
double swap20=0;
double allcs20=0;

//平台净值
double ae20=0;
//平台已用预付款
double am20=0;
double ra20=0;


// 周一到周五开收盘时间
input int p20_start_hour1=0;
input int p20_end_hour1=24;

input int p20_start_hour2=0;
input int p20_end_hour2=24;

input int p20_start_hour3=0;
input int p20_end_hour3=24;

input int p20_start_hour4=0;
input int p20_end_hour4=24;

input int p20_start_hour5=0;
input int p20_end_hour5=24;








extern string 套利设置结束="-------------------";
//主平台净利润
double jinp=0;
double jinp1=0;
double jinp2=0;
double jinp3=0;
double jinp4=0;

double jinp5=0;
double jinp6=0;
double jinp7=0;
double jinp8=0;


double jinp9=0;
double jinp10=0;
double jinp11=0;
double jinp12=0;

double jinp13=0;
double jinp14=0;
double jinp15=0;
double jinp16=0;
double jinp17=0;
double jinp18=0;
double jinp19=0;
double jinp20=0;


extern string 订单止盈止损="-------------------";
double mtp1=10000000;
double msp1=-10000000;


double mtp2=10000000;
double msp2=-10000000;


double mtp3=10000000;
double msp3=-10000000;

double mtp4=10000000;
double msp4=-10000000;


double mtp5=10000000;
double msp5=-10000000;


double mtp6=10000000;
double msp6=-10000000;



double mtp7=10000000;
double msp7=-10000000;


double mtp8=10000000;
double msp8=-10000000;


double mtp9=10000000;
double msp9=-10000000;


double mtp10=10000000;
double msp10=-10000000;


double mtp11=10000000;
double msp11=-10000000;


double mtp12=10000000;
double msp12=-10000000;


double mtp13=10000000;
double msp13=-10000000;


double mtp14=10000000;
double msp14=-10000000;


double mtp15=10000000;
double msp15=-10000000;


double mtp16=10000000;
double msp16=-10000000;



double mtp17=10000000;
double msp17=-10000000;

double mtp18=10000000;
double msp18=-10000000;


double mtp19=10000000;
double msp19=-10000000;


double mtp20=10000000;
double msp20=-10000000;



extern string 单组止盈止损="-------------------";
input double gtp1=10;
input double gsp1=-10;
input double gtp2=10;
input double gsp2=-10;

input double gtp3=10;
input double gsp3=-10;
input double gtp4=10;
input double gsp4=-10;
input double gtp5=10;
input double gsp5=-10;
input double gtp6=10;
input double gsp6=-10;
input double gtp7=10;
input double gsp7=-10;
input double gtp8=10;
input double gsp8=-10;

input double gtp9=10;
input double gsp9=-10;
input double gtp10=10;
input double gsp10=-10;
input double gtp11=10;
input double gsp11=-10;
input double gtp12=10;
input double gsp12=-10;
input double gtp13=10;
input double gsp13=-10;
input double gtp14=10;
input double gsp14=-10;

input double gtp15=10;
input double gsp15=-10;
input double gtp16=10;
input double gsp16=-10;
input double gtp17=10;
input double gsp17=-10;
input double gtp18=10;
input double gsp18=-10;
input double gtp19=10;
input double gsp19=-10;
input double gtp20=10;
input double gsp20=-10;


extern string 单组盈利="-------------------";
double gpf10;
double gpf20;
double gpf30;
double gpf40;
double gpf50;
double gpf60;
double gpf70;
double gpf80;
double gpf90;
double gpf100;
double gpf110;
double gpf120;
double gpf130;
double gpf140;
double gpf150;
double gpf160;
double gpf170;
double gpf180;
double gpf190;
double gpf200;

double gpf11;
double gpf21;
double gpf31;
double gpf41;
double gpf51;
double gpf61;
double gpf71;
double gpf81;
double gpf91;
double gpf101;
double gpf111;
double gpf121;
double gpf131;
double gpf141;
double gpf151;
double gpf161;
double gpf171;
double gpf181;
double gpf191;
double gpf201;

//主端模式
int mode = 1;

bool TimerIsEnabled        = false;
input int TimerInterval          = 250;


int sliper=6;
double  Max_Spread    = 4.0;
int SpreadSampleSize = 10;  
double Spread[1];
int ErrorInterval = 250;



color TextColor=clrFireBrick;
color bColor=clrFireBrick;

int cnt;
string TextBarString,DotBarString,HLineBarString,VLineBarString; 


double adx(){
   return iADX(Symbol(),0,21,PRICE_TYPICAL,MODE_MAIN,0);
}

int barCount(datetime StartTime){
   int StartPoint=iBarShift(NULL,0,StartTime,True);
   return(StartPoint+1);
}

double Spread(double AddValue=0){
   double LastValue;
   static double ArrayTotal=0;
   
   if (AddValue == 0 && SpreadSampleSize <= 0) return(Ask-Bid);
   if (AddValue == 0 && ArrayTotal == 0) return(Ask-Bid);
   if (AddValue == 0 ) return(ArrayTotal/ArraySize(Spread));
   
   ArrayTotal = ArrayTotal + AddValue;
   ArraySetAsSeries(Spread, true); 
   if (ArraySize(Spread) == SpreadSampleSize)
      {
      LastValue = Spread[0];
      ArrayTotal = ArrayTotal - LastValue;
      ArraySetAsSeries(Spread, false);
      ArrayResize(Spread, ArraySize(Spread)-1 );
      ArraySetAsSeries(Spread, true);
      ArrayResize(Spread, ArraySize(Spread)+1 ); 
      }
   else ArrayResize(Spread, ArraySize(Spread)+1 ); 
//   Print("ArraySize = ",ArraySize(lSpread)," AddedNo. = ",AddValue);
   ArraySetAsSeries(Spread, false);
   Spread[0] = AddValue;
   return(NormalizeDouble(ArrayTotal/ArraySize(Spread), Digits));
}

double PointValue() {
   if (MarketInfo(Symbol(), MODE_DIGITS) == 5.0 || MarketInfo(Symbol(), MODE_DIGITS) == 3.0) return (10.0 * Point);
   if (MarketInfo(Symbol(), MODE_DIGITS) == 2.0) return (10.0 * Point);//Gold
   return (Point);
}

/*
函    数：在屏幕上显示文字标签
输入参数：string LableName 标签名称，如果显示多个文本，名称不能相同
          string LableDoc 文本内容
          int Corner 文本显示角
          int LableX 标签X位置坐标
          int LableY 标签Y位置坐标
          int DocSize 文本字号
          string DocStyle 文本字体
          color DocColor 文本颜色
输出参数：在指定的位置（X,Y）按照指定的字号、字体及颜色显示指定的文本
算法说明：
*/
void iDisplayInfo(string LableName,string LableDoc,int Corner,int LableX,int LableY,int DocSize,string DocStyle,color DocColor)
   {
      if (Corner == -1) return;
      ObjectCreate(LableName, OBJ_LABEL, 0, 0, 0);
      ObjectSetText(LableName, LableDoc, DocSize, DocStyle,DocColor);
      ObjectSet(LableName, OBJPROP_CORNER, Corner);
      ObjectSet(LableName, OBJPROP_XDISTANCE, LableX);
      ObjectSet(LableName, OBJPROP_YDISTANCE, LableY);
      return;
   }
/*
函    数：两点间连线(主图)
输入参数：string myLineName  线段名称
          int myFirstTime  起点时间
          int myFirstPrice  起点价格
          int mySecondTime  终点时间
          int mySecondPrice  终点价格
          int myLineStyle  线型 0-实线 1-断线 2-点线 3-点划线 4-双点划线
          color myLineColor 线色
输出参数：在指定的两点间连线
算法说明：
*/
void iTwoPointsLine(string myLineName,int myFirstTime,double myFirstPrice,int mySecondTime,double mySecondPrice,int myLineStyle,color myLineColor)
   {
      ObjectCreate(myLineName,OBJ_TREND,0,myFirstTime,myFirstPrice,mySecondTime,mySecondPrice);//确定两点坐标
      ObjectSet(myLineName,OBJPROP_STYLE,myLineStyle); //线型
      ObjectSet(myLineName,OBJPROP_COLOR,myLineColor); //线色
      ObjectSet(myLineName,OBJPROP_WIDTH, 1); //线宽
      ObjectSet(myLineName,OBJPROP_BACK,false);
      ObjectSet(myLineName,OBJPROP_RAY,false);
      return;
   }
   
