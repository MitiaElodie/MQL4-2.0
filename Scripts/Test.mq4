//+------------------------------------------------------------------+
//|                                                         Test.mq4 |
//|                                  Copyright 2025, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#include <CandleFunctions.mqh>
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
      if (IsLastWeeklyCandleCloseBullish())
      {
          Alert("The last weekly candle closed bullish.");
      }
      else if (IsLastWeeklyCandleCloseBearish())
      {
          Alert("The last weekly candle closed bearish.");
      }
  }
//+------------------------------------------------------------------+
