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
//---
    // Get the latest candle - 1 in weekly timeframe
    MqlRates latestCandle[];
    if (CopyRates(_Symbol, PERIOD_W1, 1, 1, latestCandle))
    {
        if (IsLastWeeklyCandleCloseBullish(latestCandle[0]))
        {
            Alert("The latest weekly candle is bullish.");
        }
        else
        {
            Alert("The latest weekly candle is bearish.");
        }
    }
  }
//+------------------------------------------------------------------+
