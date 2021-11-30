connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021_group13_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021_group13_default_datagroup

explore: companies {}

explore: bnbcheckins {}

explore: aib_bnbs_nyc {}

explore: bnbreservations {}

explore: appearance {}

explore: ages {}

explore: company_employees {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}

explore: events {}

explore: nationalities {}

explore: people {}

explore: financial_status {}

explore: gender {}

explore: locations {}

explore: physical_characteristics {}

explore: religions {}

explore: ride_passengers {}

explore: ride_info {}

explore: roles {}

explore: taxis {}

explore: sub_departments {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}
