//+------------------------------------------------------------------+
//|                                           StrategiesFunction.mqh |
//|                                  Copyright 2025, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property strict


bool IsBullishCandle(MqlRates& candle)
{
    return candle.close > candle.open;
}

bool IsLastWeeklyCandleCloseBullish() {
    MqlRates latestCandle[];
    if (CopyRates(_Symbol, PERIOD_W1, 1, 1, latestCandle))
    {
        return IsBullishCandle(latestCandle[0]);
    }
    Print("Failed to retrieve the latest weekly candle.");
    return false;
}

bool IsBearishCandle(MqlRates& candle)
{
    return candle.close < candle.open;
}

bool IsLastWeeklyCandleCloseBearish() {
    MqlRates latestCandle[];
    if (CopyRates(_Symbol, PERIOD_W1, 1, 1, latestCandle))
    {
        return IsBearishCandle(latestCandle[0]);
    }
    Print("Failed to retrieve the latest weekly candle.");
    return false;
}