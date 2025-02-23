#!/bin/bash
PROJECT_NAME="ia-census"

# Use the Census Reporter API to download updated Census data
URL="http://api.censusreporter.org/1.0/data/show/latest?table_ids"
IA="04000US19"
COUNTIES="050|04000US19"

# Feed topics
# The first variable is the Census table for each topic
# The second is the specific field you want to pull
# For instance, most have a "Total" field we use which is 001 in the data feed
POPULATION="B01003"
FIELD_POPULATION="001"

# If the category is multiple words and you want your variable more readable
# Separate the words with an underscore
MEDIAN_AGE="B01002"
FIELD_MEDIAN_AGE="001"

MEDIAN_HOUSEHOLD_INCOME="B19013"
FIELD_MEDIAN_HOUSEHOLD_INCOME="001"

# In this example, we need to divide the Total field
# With the population field to get the percentage
# So we have included a DIVIDE variable
# To indicate which field we need to divide by
POVERTY="B17001"
FIELD_POVERTY="002"
DIVIDE_POVERTY="001"

# If you a category with many subcategories
# i.e. race with white, black, Asian, etc.
# Include the category at the beginning of the variable
# And the subcategory at the end
# Make sure to separate them with two underscores
RACE__WHITE="B02001"
FIELD_RACE__WHITE="002"
DIVIDE_RACE__WHITE="001"

RACE__BLACK="B02001"
FIELD_RACE__BLACK="003"
DIVIDE_RACE__BLACK="001"

RACE__INDIAN="B02001"
FIELD_RACE__INDIAN="004"
DIVIDE_RACE__INDIAN="001"

RACE__ASIAN="B02001"
FIELD_RACE__ASIAN="005"
DIVIDE_RACE__ASIAN="001"

RACE__OTHER="B02001"
FIELD_RACE__OTHER="007"
DIVIDE_RACE__OTHER="001"

RACE__TWO="B02001"
FIELD_RACE__TWO="008"
DIVIDE_RACE__TWO="001"

EDU__LESS_THAN_HS="B06009"
FIELD_EDU__LESS_THAN_HS="002"
DIVIDE_EDU__LESS_THAN_HS="001"

EDU__HS_GRAD="B06009"
FIELD_EDU__HS_GRAD="003"
DIVIDE_EDU__HS_GRAD="001"

EDU__SOME_COLLEGE="B06009"
FIELD_EDU__SOME_COLLEGE="004"
DIVIDE_EDU__SOME_COLLEGE="001"

EDU__BACHELORS="B06009"
FIELD_EDU__BACHELORS="005"
DIVIDE_EDU__BACHELORS="001"

EDU__GRADUATE="B06009"
FIELD_EDU__GRADUATE="006"
DIVIDE_EDU__GRADUATE="001"

INDUSTRY__AG="B08126"
FIELD_INDUSTRY__AG="002"
DIVIDE_INDUSTRY__AG="001"

INDUSTRY__CONSTRUCTION="B08126"
FIELD_INDUSTRY__CONSTRUCTION="003"
DIVIDE_INDUSTRY__CONSTRUCTION="001"

INDUSTRY__MANUFACTURING="B08126"
FIELD_INDUSTRY__MANUFACTURING="004"
DIVIDE_INDUSTRY__MANUFACTURING="001"

INDUSTRY__RETAIL="B08126"
FIELD_INDUSTRY__RETAIL="006"
DIVIDE_INDUSTRY__RETAIL="001"

INDUSTRY__FINANCE="B08126"
FIELD_INDUSTRY__FINANCE="009"
DIVIDE_INDUSTRY__FINANCE="001"

INDUSTRY__EDUCATION="B08126"
FIELD_INDUSTRY__EDUCATION="011"
DIVIDE_INDUSTRY__EDUCATION="001"

INDUSTRY__ARTS="B08126"
FIELD_INDUSTRY__ARTS="012"
DIVIDE_INDUSTRY__ARTS="001"

# Census topics
CENSUS_TOPICS=("POPULATION" "MEDIAN_AGE" "MEDIAN_HOUSEHOLD_INCOME" "POVERTY" "RACE__WHITE" "RACE__BLACK" "RACE__INDIAN" "RACE__ASIAN" "RACE__OTHER" "RACE__TWO" "EDU__LESS_THAN_HS" "EDU__HS_GRAD" "EDU__SOME_COLLEGE" "EDU__BACHELORS" "EDU__GRADUATE" "INDUSTRY__AG" "INDUSTRY__CONSTRUCTION" "INDUSTRY__MANUFACTURING" "INDUSTRY__RETAIL" "INDUSTRY__FINANCE" "INDUSTRY__EDUCATION" "INDUSTRY__ARTS")
