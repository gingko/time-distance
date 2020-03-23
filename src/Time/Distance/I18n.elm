module Time.Distance.I18n exposing (en, es, fr, sv, nl)

{-| Language functions to take `DistanceId` and other settings, and return
a localized string

If you'd like to add more languages, pasting this into a translation app
would be a start:

```text
"in 10 minutes"

"10 minutes ago"

less than 1 second

less than X seconds

half a minute

less than a minute

less than X minutes

1 minute

X minutes

about 1 hour

about X hours

1 day

X days

about 1 month

about X months

1 month

X months

about 1 year

about X years

over 1 year

over X years

almost 1 year

almost X years
```


# Language Functions

@docs en, es, fr, sv, nl

-}

import Time.Distance.Types exposing (DistanceId(..), Locale, Tense(..))


{-| English version.

`Config` is a type alias for `{withAffix : Bool}`

-}
en : Locale
en { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    str ++ " ago"

                ( True, Future ) ->
                    "in " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "less than 1 second"

            else
                "less than " ++ toStr i ++ " seconds"

        HalfAMinute ->
            "half a minute"

        LessThanXMinutes i ->
            if i == 1 then
                "less than a minute"

            else
                "less than " ++ toStr i ++ " minutes"

        XMinutes i ->
            if i == 1 then
                "1 minute"

            else
                toStr i ++ " minutes"

        AboutXHours i ->
            if i == 1 then
                "about 1 hour"

            else
                "about " ++ toStr i ++ " hours"

        XDays i ->
            if i == 1 then
                "1 day"

            else
                toStr i ++ " days"

        AboutXMonths i ->
            if i == 1 then
                "about 1 month"

            else
                "about " ++ toStr i ++ " months"

        XMonths i ->
            if i == 1 then
                "1 month"

            else
                toStr i ++ " months"

        AboutXYears i ->
            if i == 1 then
                "about 1 year"

            else
                "about " ++ toStr i ++ " years"

        OverXYears i ->
            if i == 1 then
                "over 1 year"

            else
                "over " ++ toStr i ++ " years"

        AlmostXYears i ->
            if i == 1 then
                "almost 1 year"

            else
                "almost " ++ toStr i ++ " years"
    )
        |> maybeAffix


{-| Spanish version.

`Config` is a type alias for `{withAffix : Bool}`

-}
es : Locale
es { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    "hace " ++ str

                ( True, Future ) ->
                    "en " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "menos de un segundo"

            else
                "menos de " ++ toStr i ++ " segundos"

        HalfAMinute ->
            "medio minuto"

        LessThanXMinutes i ->
            if i == 1 then
                "menos de un minuto"

            else
                "menos de " ++ toStr i ++ " minutos"

        XMinutes i ->
            if i == 1 then
                "1 minuto"

            else
                toStr i ++ " minutos"

        AboutXHours i ->
            if i == 1 then
                "alrededor de una hora"

            else
                "alrededor de " ++ toStr i ++ " horas"

        XDays i ->
            if i == 1 then
                "1 día"

            else
                toStr i ++ " días"

        AboutXMonths i ->
            if i == 1 then
                "alrededor de un mes"

            else
                "alrededor " ++ toStr i ++ " meses"

        XMonths i ->
            if i == 1 then
                "1 mes"

            else
                toStr i ++ " meses"

        AboutXYears i ->
            if i == 1 then
                "alrededor de un año"

            else
                "alrededor de " ++ toStr i ++ " años"

        OverXYears i ->
            if i == 1 then
                "más de un año"

            else
                "más de " ++ toStr i ++ " años"

        AlmostXYears i ->
            if i == 1 then
                "casi un año"

            else
                "casi " ++ toStr i ++ " años"
    )
        |> maybeAffix


{-| French version.

`Config` is a type alias for `{withAffix : Bool}`

-}
fr : Locale
fr { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    "il y a " ++ str

                ( True, Future ) ->
                    "dans " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "moins d'une seconde"

            else
                "menos de " ++ toStr i ++ " secondes"

        HalfAMinute ->
            "une demi-minute"

        LessThanXMinutes i ->
            if i == 1 then
                "moins d'une minute"

            else
                "moins de " ++ toStr i ++ " minutes"

        XMinutes i ->
            if i == 1 then
                "1 minute"

            else
                toStr i ++ " minutes"

        AboutXHours i ->
            if i == 1 then
                "environ une heure"

            else
                "environ " ++ toStr i ++ " heures"

        XDays i ->
            if i == 1 then
                "1 jour"

            else
                toStr i ++ " jours"

        AboutXMonths i ->
            if i == 1 then
                "environ un mois"

            else
                "alrededor " ++ toStr i ++ " mois"

        XMonths i ->
            if i == 1 then
                "1 mois"

            else
                toStr i ++ " mois"

        AboutXYears i ->
            if i == 1 then
                "environ un an"

            else
                "environ " ++ toStr i ++ " ans"

        OverXYears i ->
            if i == 1 then
                "plus d'un an"

            else
                "plus de " ++ toStr i ++ " ans"

        AlmostXYears i ->
            if i == 1 then
                "près d'un an"

            else
                "près de " ++ toStr i ++ " ans"
    )
        |> maybeAffix


{-| Swedish version.

`Config` is a type alias for `{withAffix : Bool}`

-}
sv : Locale
sv { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    str ++ " sedan"

                ( True, Future ) ->
                    "om " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "mindre än 1 sekund"

            else
                "mindre än" ++ toStr i ++ " seconds"

        HalfAMinute ->
            "en halv minut"

        LessThanXMinutes i ->
            if i == 1 then
                "mindre än en minut"

            else
                "mindre än " ++ toStr i ++ " minuter"

        XMinutes i ->
            if i == 1 then
                "1 minut"

            else
                toStr i ++ " minuter"

        AboutXHours i ->
            if i == 1 then
                "ungefär 1 timme"

            else
                "ungefär " ++ toStr i ++ " timmar"

        XDays i ->
            if i == 1 then
                "1 dag"

            else
                toStr i ++ " dagar"

        AboutXMonths i ->
            if i == 1 then
                "ungefär 1 månad"

            else
                "ungefär " ++ toStr i ++ " månader"

        XMonths i ->
            if i == 1 then
                "1 månad"

            else
                toStr i ++ " månader"

        AboutXYears i ->
            if i == 1 then
                "ungefär 1 år"

            else
                "ungefär " ++ toStr i ++ " år"

        OverXYears i ->
            if i == 1 then
                "över 1 år"

            else
                "över " ++ toStr i ++ " år"

        AlmostXYears i ->
            if i == 1 then
                "nästan 1 år"

            else
                "nästan " ++ toStr i ++ " år"
    )
        |> maybeAffix


{-| Dutch version.

`Config` is a type alias for `{withAffix : Bool}`

-}
nl : Locale
nl { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    str ++ " geleden"

                ( True, Future ) ->
                    "over " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "minder dan 1 seconde"

            else
                "minder dan " ++ toStr i ++ " seconden"

        HalfAMinute ->
            "een halve minuut"

        LessThanXMinutes i ->
            if i == 1 then
                "minder dan een minuut"

            else
                "minder dan " ++ toStr i ++ " minuten"

        XMinutes i ->
            if i == 1 then
                "1 minuut"

            else
                toStr i ++ " minuten"

        AboutXHours i ->
            if i == 1 then
                "meer dan 1 uur"

            else
                "meer dan  " ++ toStr i ++ " uur"

        XDays i ->
            if i == 1 then
                "1 dag"

            else
                toStr i ++ " dagen"

        AboutXMonths i ->
            if i == 1 then
                "over 1 maand"

            else
                "over " ++ toStr i ++ " maanden"

        XMonths i ->
            if i == 1 then
                "1 maand"

            else
                toStr i ++ " maanden"

        AboutXYears i ->
            if i == 1 then
                "over 1 jaar"

            else
                "over " ++ toStr i ++ " jaren"

        OverXYears i ->
            if i == 1 then
                "meer dan 1 jaar"

            else
                "meer dan " ++ toStr i ++ " jaar"

        AlmostXYears i ->
            if i == 1 then
                "bijna 1 jaar"

            else
                "bijna " ++ toStr i ++ " jaar"
    )
        |> maybeAffix
