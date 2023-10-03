# HPCC Hackathon - Find Your Paradise
# Problem Statement
Have you ever thought about creating an application that empowers individuals to discover places to live that optimize their quality of life and happiness?

Challenge Objective:
The objective of this challenge is to analyze a diverse array of datasets across various categories and establish correlations using the HPCC Systems platform. Following the analysis, participants are tasked with the following:
Design an interface to query this data and assign it a scoring system, then deliver it to the user via ROXIE and show the user where they should most likely want to live. Users should be given choices in an easy-to-use form that when submitted will generate a unique set of scores based on locations (Example: By State).
Defining Happiness Factors:
The concept of happiness varies greatly from one person to another, influenced by several factors. For this challenge, consider these categories:

Crime: Utilize a dataset covering crimes between 2018-2021, categorized by US State. This dataset includes data points such as the number of crimes and violent crimes by state.

Environment (Weather): Access a dataset comprising Storm Data in the US from the past decade. Data points include the number of storms by state, as well as injuries and fatalities resulting from weather incidents.

Health: Utilize a dataset containing mortality rates by state from 1980 to 2020. Data points include total mortality and/or average mortality by year and state.

Education: Incorporate a dataset detailing the number of public and private schools by state. Data points encompass total schools by state, the percentage of private schools relative to total schools, and additional factors such as enrollment and student-to-teacher ratios.

This challenge invites participants to leverage these datasets to create a comprehensive solution that empowers users to make informed decisions about where to live based on their unique preferences and priorities.
# Team Believers - Problem Solving Strategy
Our methodology involves a comprehensive examination of five datasets associated with Education, Health, Crime, Weather, and Population. The process can be broken down as follows:

We initiate the analysis by carefully scrutinizing datasets related to Education, Health, Crime, Weather, and Population.

Next, we meticulously curate these datasets, retaining only the essential parameters crucial for a comprehensive analysis.

Following this, we calculate weighted scores for vital parameters, with a keen emphasis on factors that significantly contribute to an enhanced quality of life.

Subsequently, we derive an overall cumulative score for each state based on the parameters chosen by the user, ensuring personalized recommendations.

Our approach also includes the design of a dynamic ROXIE query that adapts to user input, enabling us to determine the parameters necessary for the final score calculation.

Additionally, we introduce a new dataset that takes into account the population of states, enabling the calculation of population density, which is incorporated as an additional weighted factor.

In conclusion, our analysis leads us to the determination that New York emerges with the highest score, signifying it as the most desirable state to reside in within the United States.
# Video Solution
[Video Demo](https://youtu.be/VYjG0QSOrVU)
# Certificate
![View]([Certificat.jpg](https://github.com/CS-1289/HPCC-Hackathon/blob/main/Certificate.jpg)https://github.com/CS-1289/HPCC-Hackathon/blob/main/Certificate.jpg)



