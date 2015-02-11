module FinancialSeries

# if VERSION < v"0.4-"
#   using Dates
# else
#   using Base.Dates
# end
using Reexport
@reexport using TimeSeries

import Base: show, getindex#, add!

export AbstractInstrument, AbstractCurrency, AbstractFinancialID,
       Stock, Currency, CurrencyPair,
       Ticker, CUSIP, BloombergID, ReutersID,
       FinancialTimeSeries, TickData,
       USD, EUR, GBP, AUD, JPY, EURUSD, EURJPY, USDGBP, USDAUD, USDNZD, USDJPY, F, G, H, J, K, M, N, Q, U, V, X, Z,
       add!, merge, parsedatetime, parsedatetime1, parsedatetime_from_TOS, makedatetime, datetolastsecond, discretesignal
       # yahoo, fred


include("instruments.jl")
include("financialtimeseries.jl")
#include("tickdata.jl")
include("show.jl")
#include("getindex.jl")
#include("utilities.jl")
include("readwrite.jl")

end
