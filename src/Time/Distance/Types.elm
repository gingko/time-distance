module Time.Distance.Types exposing (Config, DistanceId(..), Locale, Tense(..))

{-|
    @docs DistanceId, Tense, Config, Locale
-}

{-|All available time intervals.
-}
type DistanceId
    = LessThanXSeconds Int
    | HalfAMinute
    | LessThanXMinutes Int
    | XMinutes Int
    | AboutXHours Int
    | XDays Int
    | AboutXMonths Int
    | XMonths Int
    | AboutXYears Int
    | OverXYears Int
    | AlmostXYears Int

{-|Is this a time in the past, or the future?
-}
type Tense
    = Past
    | Future


{-|Should we include affix ("... ago", "in ...")?
-}
type alias Config =
    { withAffix : Bool }


{-|Main function type : take all the above, return a string.
-}
type alias Locale =
    Config -> Tense -> DistanceId -> String
