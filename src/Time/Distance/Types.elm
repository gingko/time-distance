module Time.Distance.Types exposing (Config, DistanceId(..), Locale, Tense(..))

{-|Types to allow you to write your own functions. Note that
if you are doing this yourself (instead of importing translations from a server),
it'd be helpful if you make a PR or a comment on the repo so I can make the
language available for others.

# Time.Distance.Types
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
