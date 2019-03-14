# Time.Distance

Get the relative distance between two `Time.Posix` values, in words. For instance:
* "less than 5 seconds ago"
* "in 3 months"
* "about 1 hour ago"

Most of this is taken from the 0.18 package [alpacaaa/elm-date-distance](https://github.com/alpacaaa/elm-date-distance).


## Example


With the default settings, you get an English string, with either ".. ago" (for past) or "in ..." (for the future):
```elm
import Time.Distance exposing (inWords)
import Time exposing (millisToPosix)


exampleMillis : Int
exampleMillis = 1552573958904


exampleTime : Time.Posix
exampleTime = millisToPosix exampleMillis


inWords
  (millisToPosix (exampleMillis - 1000*60))
  exampleTime
-- "1 minute ago"


inWords
  (millisToPosix (exampleMillis - 1000*60*65))
  exampleTime
-- "about 1 hour ago"


inWords
  (millisToPosix (exampleMillis - 1000*60*60*24*30))
  exampleTime
-- "about 1 month ago"


inWords
  (millisToPosix (exampleMillis + 1000*60*60*24*30*5))
  exampleTime
-- "in 5 months"
```


## Examples with Configuration


To remove the affixes ("ago"/"in"), or to use a different language, use `inWordsWithConfig`:
```elm
import Time.Distance exposing (inWordsWithConfig)
import Time.Distance.I18n as I18n
import Time exposing (millisToPosix)


exampleMillis : Int
exampleMillis = 1552573958904


exampleTime : Time.Posix
exampleTime = millisToPosix exampleMillis


monthBack : Time.Posix
monthBack =
  exampleMillis - 1000*60*60*24*30
    |> millisToPosix


inWordsSpanish =
  inWordsWithConfig { withAffix = True } I18n.spanish


inWordsSpanishNoAffix =
  inWordsWithConfig { withAffix = False } I18n.spanish


inWordsSpanish monthBack exampleTime
-- "hace alrededor de un mes"


inWordsSpanishNoAffix monthBack exampleTime
-- "alrededor de un mes"
```
