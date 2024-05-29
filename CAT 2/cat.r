library(jsonlite)
path="dataset.json"

matches=fromJSON(path)
calculate_win_rate=function(team,format) {
  wins=sum(matches[matches$team1==team&matches$format==format,]$winner==team)
  total=sum(matches$team1==team&matches$format==format)
  
  if (total==0) {
    return(0)
  } else {
    return(wins/total)
  }
}

ind_matches=matches[matches$team1=="India",]
opponent_counts=table(ind_matches$team2)
freq_opponents=sort(opponent_counts,decreasing=TRUE)

print("Most frequent opponent teams for India:")
print(freq_opponents)

win_rates_format=sapply(unique(matches$team1),function(x) {
  c(Test=calculate_win_rate(x,"Test"),ODI=calculate_win_rate(x,"ODI"),T20=calculate_win_rate(x,"T20"))
})

win_rates_df=data.frame(Team=names(win_rates_format),t(win_rates_format))

print("Win rates by team across formats:")
print(win_rates_df)

venue_counts=table(matches$venue)

print("Distribution of matches by venue:")
print(venue_counts)

calculate_players=function(gender) {
  if (gender=="Male") {
    return(22)
  } else {
    return(22)
  }
}
male=sum(sapply(matches$gender,function(gender) if (gender=="Male") calculate_players(gender) else 0))
female=sum(sapply(matches$gender,function(gender) if (gender=="Female") calculate_players(gender) else 0))

cat("Total male players:",male,"\n")
cat("Total female players:",female,"\n")
matches <- jsonlite::fromJSON('[{"date":"2024-05-01","team1":"India","team2":"Australia","venue":"Eden Gardens","format":"ODI","winner":"India","gender":"Male","runs_scored":578},{"date":"2024-05-05","team1":"India","team2":"England","venue":"Oval","format":"Test","winner":"England","gender":"Female","runs_scored":1003},{"date":"2024-05-10","team1":"India","team2":"Pakistan","venue":"Dubai","format":"T20","winner":"Pakistan","gender":"Male","runs_scored":408},{"date":"2024-05-15","team1":"India","team2":"Australia","venue":"Sydney","format":"ODI","winner":"Australia","gender":"Male","runs_scored":555},{"date":"2024-05-20","team1":"India","team2":"South Africa","venue":"Johannesburg","format":"Test","winner":"India","gender":"Female","runs_scored":1035},{"date":"2024-05-25","team1":"India","team2":"Pakistan","venue":"Chepauk","format":"ODI","winner":"India","gender":"Male","runs_scored":490},{"date":"2024-05-30","team1":"India","team2":"New Zealand","venue":"Auckland","format":"T20","winner":"New Zealand","gender":"Female","runs_scored":378}]')
calculate_win_rate <- function(team, format) {
  wins <- sum(matches[matches$team1 == team & matches$format == format, ]$winner == team)
  total <- sum(matches$team1 == team & matches$format == format)
  
  if (total == 0) {
    return(0)
  } else {
    return(wins/ total)
  }
}
unique_teams <- unique(matches$team1)
unique_formats <- unique(matches$format)
win_rates <- sapply(unique_teams, function(team) {
  sapply(unique_formats, function(format) {
    calculate_win_rate(team, format)
  })
})
barplot(win_rates, beside = TRUE, col = rainbow(length(unique_formats)),
        names.arg = unique_teams, main = "Win Rate by Team Across Formats",
        xlab = "Team", ylab = "Win Rate")
legend("topright", legend = unique_formats, fill = rainbow(length(unique_formats)))
venue_counts <- table(matches$venue)
pie(venue_counts, main = "Distribution of Matches by Venue", col = rainbow(length(venue_counts)),
    labels = paste(names(venue_counts), "(", venue_counts, ")", sep = ""))
matches$date <- as.Date(matches$date)
plot(matches$date, matches$runs_scored, type = "o", col = "blue", xlab = "Date", ylab = "Runs Scored",
     main = "Runs Scored vs. Date of the Match")