#import "kernel32.dll"
bool CopyFileW(string lpExistingFileName, string lpNewFileName, bool bFailIfExists);
bool CreateDirectoryW(string a0,int a1);
#import


bool OverWrite = true;
string path1="C:\\EA";



void handle_data(){
   collection_data();
   read_all_data();
   calculation_sp();
   copy_all_data();
}

void calculation_sp(){
   
   if(askbid10 !=0 && askbid11 !=0)sp1 = askbid10-askbid11;
   if(askbid20 !=0 && askbid21 !=0)sp2 = askbid20-askbid21;
   if(askbid30 !=0 && askbid31 !=0)sp3 = askbid30-askbid31;
   if(askbid40 !=0 && askbid41 !=0)sp4 = askbid40-askbid41;
   
   if(askbid50 !=0 && askbid51 !=0)sp5 = askbid50-askbid51;
   if(askbid60 !=0 && askbid61 !=0)sp6 = askbid60-askbid61;
   if(askbid70 !=0 && askbid71 !=0)sp7 = askbid70-askbid71;
   if(askbid80 !=0 && askbid81 !=0)sp8 = askbid80-askbid81;
   
   if(askbid90 !=0 && askbid91 !=0)sp9 = askbid90-askbid91;
   if(askbid100 !=0 && askbid101 !=0)sp10 = askbid100-askbid101;
   if(askbid110 !=0 && askbid111 !=0)sp11 = askbid110-askbid111;
   if(askbid120 !=0 && askbid121 !=0)sp12 = askbid120-askbid121;
   
   if(askbid130 !=0 && askbid131 !=0)sp13 = askbid130-askbid131;
   if(askbid140 !=0 && askbid141 !=0)sp14 = askbid140-askbid141;
   if(askbid150 !=0 && askbid151 !=0)sp15 = askbid150-askbid151;
   if(askbid160 !=0 && askbid161 !=0)sp16 = askbid160-askbid161;
   
   if(askbid170 !=0 && askbid171 !=0)sp17 = askbid170-askbid171;
   if(askbid180 !=0 && askbid181 !=0)sp18 = askbid180-askbid181;
   if(askbid190 !=0 && askbid191 !=0)sp19 = askbid190-askbid191;
   if(askbid200 !=0 && askbid201 !=0)sp20 = askbid200-askbid201;

}

void collection_data(){
   //输出存储
   if(current_platform_num==main_platform_num){
      //主端的存储给客端显示用
      save_data(main_platform_symbol1, main_platform_num, magic1);
      save_data(main_platform_symbol2, main_platform_num, magic2);
      save_data(main_platform_symbol3, main_platform_num, magic3);
      save_data(main_platform_symbol4, main_platform_num, magic4);
      save_data(main_platform_symbol5, main_platform_num, magic5);
      save_data(main_platform_symbol6, main_platform_num, magic6);
      save_data(main_platform_symbol7, main_platform_num, magic7);
      save_data(main_platform_symbol8, main_platform_num, magic8);
      save_data(main_platform_symbol9, main_platform_num, magic9);
      save_data(main_platform_symbol10, main_platform_num, magic10);
      save_data(main_platform_symbol11, main_platform_num, magic11);
      save_data(main_platform_symbol12, main_platform_num, magic12);
      save_data(main_platform_symbol13, main_platform_num, magic13);
      save_data(main_platform_symbol14, main_platform_num, magic14);
      save_data(main_platform_symbol15, main_platform_num, magic15);
      save_data(main_platform_symbol16, main_platform_num, magic16);
      save_data(main_platform_symbol17, main_platform_num, magic17);
      save_data(main_platform_symbol18, main_platform_num, magic18);
      save_data(main_platform_symbol19, main_platform_num, magic19);
      save_data(main_platform_symbol20, main_platform_num, magic20);

   }
   
   if(another_platform_num1==current_platform_num){   
      save_data(another_platform_symbol1, another_platform_num1, magic1);
   }
   
   if(another_platform_num2==current_platform_num){   
      save_data(another_platform_symbol2, another_platform_num2, magic2);
   }
   
   if(another_platform_num3==current_platform_num){   
      save_data(another_platform_symbol3, another_platform_num3, magic3);
   }
   
   if(another_platform_num4==current_platform_num){   
      save_data(another_platform_symbol4, another_platform_num4, magic4);
   } 
   
   if(another_platform_num5==current_platform_num){   
      save_data(another_platform_symbol5, another_platform_num5, magic5);
   }
   
   if(another_platform_num6==current_platform_num){   
      save_data(another_platform_symbol6, another_platform_num6, magic6);
   }
   
   if(another_platform_num7==current_platform_num){   
      save_data(another_platform_symbol7, another_platform_num7, magic7);
   }
   
   if(another_platform_num8==current_platform_num){   
      save_data(another_platform_symbol8, another_platform_num8, magic8);
   }
   
   if(another_platform_num9==current_platform_num){   
      save_data(another_platform_symbol9, another_platform_num9, magic9);
   }
   
   if(another_platform_num10==current_platform_num){   
      save_data(another_platform_symbol10, another_platform_num10, magic10);
   }
   
   if(another_platform_num11==current_platform_num){   
      save_data(another_platform_symbol11, another_platform_num11, magic11);
   }
   if(another_platform_num12==current_platform_num){   
      save_data(another_platform_symbol12, another_platform_num12, magic12);
   }
   
   if(another_platform_num13==current_platform_num){   
      save_data(another_platform_symbol13, another_platform_num13, magic13);
   }
   
   if(another_platform_num14==current_platform_num){   
      save_data(another_platform_symbol14, another_platform_num14, magic14);
   }
   
   if(another_platform_num15==current_platform_num){   
      save_data(another_platform_symbol15, another_platform_num15, magic15);
   }
   if(another_platform_num16==current_platform_num){   
      save_data(another_platform_symbol16, another_platform_num16, magic16);
   }
   
   if(another_platform_num17==current_platform_num){   
      save_data(another_platform_symbol17, another_platform_num17, magic17);
   }
   
   if(another_platform_num18==current_platform_num){   
      save_data(another_platform_symbol18, another_platform_num18, magic18);
   }
   if(another_platform_num19==current_platform_num){   
      save_data(another_platform_symbol19, another_platform_num19, magic19);
   }
   if(another_platform_num20==current_platform_num){   
      save_data(another_platform_symbol20, another_platform_num20, magic20);
   }   
}


void save_data(string sm, int platform_num, int magic){
   RefreshRates();
   double ask=MarketInfo(sm,MODE_ASK);
   double bid=MarketInfo(sm,MODE_BID);
   double askbid=(ask+bid)/2;
   double gprofit=get_sgroup_profit(magic);
   
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic)+".csv";

   int handle;
   handle=FileOpen(filename,FILE_CSV|FILE_WRITE|FILE_SHARE_WRITE|FILE_SHARE_READ,"*");
   
   if(handle>0)
   {
      FileWrite(handle,ask, bid, askbid, gprofit);
      FileClose(handle); 
   }
   string path=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files";
   bool result = CopyFileW(path+"\\"+filename,path1+"\\"+filename,!OverWrite);
   return;
}

void copy_data(string sm, int platform_num, int magic){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic)+".csv";
   string source = path1+"\\"+filename;
   string target = TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files\\"+filename;
   bool result = CopyFileW(source, target,!OverWrite);
   return;
}

void copy_all_data(){
   if(run1){copy_data(main_platform_symbol1, main_platform_num, magic1);copy_data(another_platform_symbol1, another_platform_num1, magic1);};
   if(run2){copy_data(main_platform_symbol2, main_platform_num, magic2);copy_data(another_platform_symbol2, another_platform_num2, magic2);};
   if(run3){copy_data(main_platform_symbol3, main_platform_num, magic3);copy_data(another_platform_symbol3, another_platform_num3, magic3);};
   if(run4){copy_data(main_platform_symbol4, main_platform_num, magic4);copy_data(another_platform_symbol4, another_platform_num4, magic4);};
   if(run5){copy_data(main_platform_symbol5, main_platform_num, magic5);copy_data(another_platform_symbol5, another_platform_num5, magic5);};
   if(run6){copy_data(main_platform_symbol6, main_platform_num, magic6);copy_data(another_platform_symbol6, another_platform_num6, magic6);};
   if(run7){copy_data(main_platform_symbol7, main_platform_num, magic7);copy_data(another_platform_symbol7, another_platform_num7, magic7);};
   if(run8){copy_data(main_platform_symbol8, main_platform_num, magic8);copy_data(another_platform_symbol8, another_platform_num8, magic8);};
   if(run9){copy_data(main_platform_symbol9, main_platform_num, magic9);copy_data(another_platform_symbol9, another_platform_num9, magic9);};
   if(run10){copy_data(main_platform_symbol10, main_platform_num, magic10);copy_data(another_platform_symbol10, another_platform_num10, magic10);};
   if(run11){copy_data(main_platform_symbol11, main_platform_num, magic11);copy_data(another_platform_symbol11, another_platform_num11, magic11);};
   if(run12){copy_data(main_platform_symbol12, main_platform_num, magic12);copy_data(another_platform_symbol12, another_platform_num12, magic12);};
   if(run13){copy_data(main_platform_symbol13, main_platform_num, magic13);copy_data(another_platform_symbol13, another_platform_num13, magic13);};
   if(run14){copy_data(main_platform_symbol14, main_platform_num, magic14);copy_data(another_platform_symbol14, another_platform_num14, magic14);};
   if(run15){copy_data(main_platform_symbol15, main_platform_num, magic15);copy_data(another_platform_symbol15, another_platform_num15, magic15);};
   if(run16){copy_data(main_platform_symbol16, main_platform_num, magic16);copy_data(another_platform_symbol16, another_platform_num16, magic16);};
   if(run17){copy_data(main_platform_symbol17, main_platform_num, magic17);copy_data(another_platform_symbol17, another_platform_num17, magic17);};
   if(run18){copy_data(main_platform_symbol18, main_platform_num, magic18);copy_data(another_platform_symbol18, another_platform_num18, magic18);};
   if(run19){copy_data(main_platform_symbol19, main_platform_num, magic19);copy_data(another_platform_symbol19, another_platform_num19, magic19);};
   if(run20){copy_data(main_platform_symbol20, main_platform_num, magic20);copy_data(another_platform_symbol20, another_platform_num20, magic20);};
   
}




 
void read_all_data(){
   if(run1){read_data1(main_platform_symbol1, main_platform_num);read_data110(another_platform_symbol1, another_platform_num1);};
   if(run2){read_data2(main_platform_symbol2, main_platform_num);read_data21(another_platform_symbol2, another_platform_num2);};
   if(run3){read_data3(main_platform_symbol3, main_platform_num);read_data31(another_platform_symbol3, another_platform_num3);};
   if(run4){read_data4(main_platform_symbol4, main_platform_num);read_data41(another_platform_symbol4, another_platform_num4);};
   if(run5){read_data5(main_platform_symbol5, main_platform_num);read_data51(another_platform_symbol5, another_platform_num5);}; 
   if(run6){read_data6(main_platform_symbol6, main_platform_num);read_data61(another_platform_symbol6, another_platform_num6);}; 
   if(run7){read_data7(main_platform_symbol7, main_platform_num);read_data71(another_platform_symbol7, another_platform_num7);}; 
   if(run8){read_data8(main_platform_symbol8, main_platform_num);read_data81(another_platform_symbol8, another_platform_num8);}; 
   if(run9){read_data9(main_platform_symbol9, main_platform_num);read_data91(another_platform_symbol9, another_platform_num9);}; 
   if(run10){read_data10(main_platform_symbol10, main_platform_num);read_data101(another_platform_symbol10, another_platform_num10);}; 
   if(run11){read_data11(main_platform_symbol11, main_platform_num);read_data111(another_platform_symbol11, another_platform_num11);}; 
   if(run12){read_data12(main_platform_symbol12, main_platform_num);read_data121(another_platform_symbol12, another_platform_num12);}; 
   if(run13){read_data13(main_platform_symbol13, main_platform_num);read_data131(another_platform_symbol13, another_platform_num13);}; 
   if(run14){read_data14(main_platform_symbol14, main_platform_num);read_data141(another_platform_symbol14, another_platform_num14);}; 
   if(run15){read_data15(main_platform_symbol15, main_platform_num);read_data151(another_platform_symbol15, another_platform_num15);}; 
   if(run16){read_data16(main_platform_symbol16, main_platform_num);read_data161(another_platform_symbol16, another_platform_num16);}; 
   if(run17){read_data17(main_platform_symbol17, main_platform_num);read_data171(another_platform_symbol17, another_platform_num17);}; 
   if(run18){read_data18(main_platform_symbol18, main_platform_num);read_data181(another_platform_symbol18, another_platform_num18);};
   if(run19){read_data19(main_platform_symbol19, main_platform_num);read_data191(another_platform_symbol19, another_platform_num19);};
   if(run20){read_data20(main_platform_symbol20, main_platform_num);read_data201(another_platform_symbol20, another_platform_num20);};     
}


void read_data1(string sm, int platform_num){
   
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic1)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask10=StrToDouble(FileReadString(handle));
      bid10=StrToDouble(FileReadString(handle));
      askbid10=StrToDouble(FileReadString(handle));
      gpf10=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data2(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic2)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask20=StrToDouble(FileReadString(handle));
      bid20=StrToDouble(FileReadString(handle));
      askbid20=StrToDouble(FileReadString(handle));
      gpf20=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data3(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic3)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask30=StrToDouble(FileReadString(handle));
      bid30=StrToDouble(FileReadString(handle));
      askbid30=StrToDouble(FileReadString(handle));
      gpf30=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data4(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic4)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask40=StrToDouble(FileReadString(handle));
      bid40=StrToDouble(FileReadString(handle));
      askbid40=StrToDouble(FileReadString(handle)); 
      gpf40=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}


void read_data5(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic5)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask50=StrToDouble(FileReadString(handle));
      bid50=StrToDouble(FileReadString(handle));
      askbid50=StrToDouble(FileReadString(handle));
      gpf50=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}



void read_data6(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic6)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask60=StrToDouble(FileReadString(handle));
      bid60=StrToDouble(FileReadString(handle));
      askbid60=StrToDouble(FileReadString(handle));
      gpf60=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data7(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic7)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask70=StrToDouble(FileReadString(handle));
      bid70=StrToDouble(FileReadString(handle));
      askbid70=StrToDouble(FileReadString(handle));
      gpf70=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data8(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic8)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask80=StrToDouble(FileReadString(handle));
      bid80=StrToDouble(FileReadString(handle));
      askbid80=StrToDouble(FileReadString(handle));
      gpf80=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}


void read_data9(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic9)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask90=StrToDouble(FileReadString(handle));
      bid90=StrToDouble(FileReadString(handle));
      askbid90=StrToDouble(FileReadString(handle)); 
      gpf90=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data10(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic10)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask100=StrToDouble(FileReadString(handle));
      bid100=StrToDouble(FileReadString(handle));
      askbid100=StrToDouble(FileReadString(handle));
      gpf100=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data11(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic11)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask110=StrToDouble(FileReadString(handle));
      bid110=StrToDouble(FileReadString(handle));
      askbid110=StrToDouble(FileReadString(handle)); 
      gpf110=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data12(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic12)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask120=StrToDouble(FileReadString(handle));
      bid120=StrToDouble(FileReadString(handle));
      askbid120=StrToDouble(FileReadString(handle)); 
      gpf120=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data13(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic13)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask130=StrToDouble(FileReadString(handle));
      bid130=StrToDouble(FileReadString(handle));
      askbid130=StrToDouble(FileReadString(handle)); 
      gpf130=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data14(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic14)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask140=StrToDouble(FileReadString(handle));
      bid140=StrToDouble(FileReadString(handle));
      askbid140=StrToDouble(FileReadString(handle));
      gpf140=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data15(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic15)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask150=StrToDouble(FileReadString(handle));
      bid150=StrToDouble(FileReadString(handle));
      askbid150=StrToDouble(FileReadString(handle));
      gpf150=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data16(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic16)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask160=StrToDouble(FileReadString(handle));
      bid160=StrToDouble(FileReadString(handle));
      askbid160=StrToDouble(FileReadString(handle));
      gpf160=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data17(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic17)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask170=StrToDouble(FileReadString(handle));
      bid170=StrToDouble(FileReadString(handle));
      askbid170=StrToDouble(FileReadString(handle));
      gpf170=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data18(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic18)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask180=StrToDouble(FileReadString(handle));
      bid180=StrToDouble(FileReadString(handle));
      askbid180=StrToDouble(FileReadString(handle));
      gpf180=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data19(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic19)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask190=StrToDouble(FileReadString(handle));
      bid190=StrToDouble(FileReadString(handle));
      askbid190=StrToDouble(FileReadString(handle));
      gpf190=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data20(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic20)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask200=StrToDouble(FileReadString(handle));
      bid200=StrToDouble(FileReadString(handle));
      askbid200=StrToDouble(FileReadString(handle));
      gpf200=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}


void read_data110(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic1)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask11=StrToDouble(FileReadString(handle));
      bid11=StrToDouble(FileReadString(handle));
      askbid11=StrToDouble(FileReadString(handle));
      gpf11=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data21(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic2)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask21=StrToDouble(FileReadString(handle));
      bid21=StrToDouble(FileReadString(handle));
      askbid21=StrToDouble(FileReadString(handle));
      gpf21=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}


void read_data31(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic3)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask31=StrToDouble(FileReadString(handle));
      bid31=StrToDouble(FileReadString(handle));
      askbid31=StrToDouble(FileReadString(handle));
      gpf31=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data41(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic4)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask41=StrToDouble(FileReadString(handle));
      bid41=StrToDouble(FileReadString(handle));
      askbid41=StrToDouble(FileReadString(handle));
      gpf41=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data51(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic5)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask51=StrToDouble(FileReadString(handle));
      bid51=StrToDouble(FileReadString(handle));
      askbid51=StrToDouble(FileReadString(handle));
      gpf51=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}


void read_data61(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic6)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask61=StrToDouble(FileReadString(handle));
      bid61=StrToDouble(FileReadString(handle));
      askbid61=StrToDouble(FileReadString(handle));
      gpf61=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data71(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic7)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask71=StrToDouble(FileReadString(handle));
      bid71=StrToDouble(FileReadString(handle));
      askbid71=StrToDouble(FileReadString(handle));
      gpf71=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}


void read_data81(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic8)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask81=StrToDouble(FileReadString(handle));
      bid81=StrToDouble(FileReadString(handle));
      askbid81=StrToDouble(FileReadString(handle));
      gpf81=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}


void read_data91(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic9)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask91=StrToDouble(FileReadString(handle));
      bid91=StrToDouble(FileReadString(handle));
      askbid91=StrToDouble(FileReadString(handle)); 
      gpf91=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}


void read_data101(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic10)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask101=StrToDouble(FileReadString(handle));
      bid101=StrToDouble(FileReadString(handle));
      askbid101=StrToDouble(FileReadString(handle)); 
      gpf101=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}


void read_data111(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic11)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask111=StrToDouble(FileReadString(handle));
      bid111=StrToDouble(FileReadString(handle));
      askbid111=StrToDouble(FileReadString(handle));
      gpf111=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data121(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic12)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask121=StrToDouble(FileReadString(handle));
      bid121=StrToDouble(FileReadString(handle));
      askbid121=StrToDouble(FileReadString(handle));
      gpf121=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data131(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic13)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask131=StrToDouble(FileReadString(handle));
      bid131=StrToDouble(FileReadString(handle));
      askbid131=StrToDouble(FileReadString(handle)); 
      gpf131=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}
void read_data141(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic14)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask141=StrToDouble(FileReadString(handle));
      bid141=StrToDouble(FileReadString(handle));
      askbid141=StrToDouble(FileReadString(handle)); 
      gpf141=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}
void read_data151(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic15)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask151=StrToDouble(FileReadString(handle));
      bid151=StrToDouble(FileReadString(handle));
      askbid151=StrToDouble(FileReadString(handle)); 
      gpf151=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data161(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic16)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask161=StrToDouble(FileReadString(handle));
      bid161=StrToDouble(FileReadString(handle));
      askbid161=StrToDouble(FileReadString(handle));
      gpf161=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data171(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic17)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask171=StrToDouble(FileReadString(handle));
      bid171=StrToDouble(FileReadString(handle));
      askbid171=StrToDouble(FileReadString(handle)); 
      gpf171=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}
void read_data181(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic18)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask181=StrToDouble(FileReadString(handle));
      bid181=StrToDouble(FileReadString(handle));
      askbid181=StrToDouble(FileReadString(handle));
      gpf181=StrToDouble(FileReadString(handle)); 
      FileClose(handle);     
   }
}

void read_data191(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic19)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask191=StrToDouble(FileReadString(handle));
      bid191=StrToDouble(FileReadString(handle));
      askbid191=StrToDouble(FileReadString(handle)); 
      gpf191=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

void read_data201(string sm, int platform_num){
   string filename=IntegerToString(platform_num)+sm+IntegerToString(magic20)+".csv";
   int handle=FileOpen(filename,FILE_READ|FILE_WRITE|FILE_CSV|FILE_SHARE_WRITE|FILE_SHARE_READ, "*"); 
   if(handle>0){
      ask201=StrToDouble(FileReadString(handle));
      bid201=StrToDouble(FileReadString(handle));
      askbid201=StrToDouble(FileReadString(handle)); 
      gpf201=StrToDouble(FileReadString(handle));
      FileClose(handle);     
   }
}

