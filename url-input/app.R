#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidytext) #text tidying
library(dplyr) #manipulating datasets
library(tidyverse) #general tidying
# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Old Faithful Geyser Data"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         textInput("text", "Text: ", "Delete this text and insert article text here. An open pit mine in Burdwan, West Bengal, India. Coal is the single largest source of electricity worldwide. Rebecca Conway for The New York Times

                   Want climate news in your inbox? Sign up here for Climate Fwd:, our email newsletter.
                   
                   HANOI, Vietnam — Coal, the fuel that powered the industrial age, has led the planet to the brink of catastrophic climate change.
                   
                   Scientists have repeatedly warned of its looming dangers, most recently on Friday, when a major scientific report issued by 13 United States government agencies warned that the damage from climate change could knock as much as 10 percent off the size of the American economy by century’s end if significant steps aren’t taken to rein in warming.
                   
                   An October report from the United Nations’ scientific panel on global warming found that avoiding the worst devastation would require a radical transformation of the world economy in just a few years.
                   
                   Central to that transformation: Getting out of coal, and fast.
                   
                   And yet, three years after the Paris agreement, when world leaders promised action, coal shows no sign of disappearing. While coal use looks certain to eventually wane worldwide, according to the latest assessment by the International Energy Agency, it is not on track to happen anywhere fast enough to avert the worst effects of climate change. Last year, in fact, global production and consumption increased after two years of decline.
                   
                   Cheap, plentiful and the most polluting of fossil fuels, coal remains the single largest source of energy to generate electricity worldwide. This, even as renewables like solar and wind power are rapidly becoming more affordable. Soon, coal could make no financial sense for its backers.
                   
                   So, why is coal so hard to quit?
                   
                   Because coal is a powerful incumbent. It’s there by the millions of tons under the ground. Powerful companies, backed by powerful governments, often in the form of subsidies, are in a rush to grow their markets before it is too late. Banks still profit from it. Big national electricity grids were designed for it. Coal plants can be a surefire way for politicians to deliver cheap electricity — and retain their own power. In some countries, it has been a glistening source of graft.
                   
                   And even while renewables are spreading fast, they still have limits: Wind and solar power flow when the breeze blows and the sun shines, and that requires traditional electricity grids to be retooled.
                   
                   “The main reason why coal sticks around is, we built it already,” said Rohit Chandra, who earned a doctoral degree in energy policy at Harvard, specializing in coal in India.
                   
                   The battle over the future of coal is being waged in Asia.
                   
                   A coal-fired power plant under construction in Ramagundam, Telangana State, India. The control room of a power plant in Mancherial, Telangana.
                   
                   The world’s coal juggernaut
                   
                   Home to half the world’s population, Asia accounts for three-fourths of global coal consumption today. More important, it accounts for more than three-fourths of coal plants that are either under construction or in the planning stages — a whopping 1,200 of them, according to Urgewald, a German advocacy group that tracks coal development. Heffa Schücking, who heads Urgewald, called those plants “an assault on the Paris goals.”
                   
                   Indonesia is digging more coal. Vietnam is clearing ground for new coal-fired power plants. Japan, reeling from 2011 nuclear plant disaster, has resurrected coal.
                   
                   The world’s juggernaut, though, is China. The country consumes half the world’s coal. More than 4.3 million Chinese are employed in the country’s coal mines. China has added 40 percent of the world’s coal capacity since 2002, a huge increase for just 16 years. “I had to do the calculation three times,” said Carlos Fernández Alvarez, a senior energy analyst at the International Energy Agency. “I thought it was wrong. It’s crazy.”
                   
                   Spurred by public outcry over air pollution, China is now also the world leader in solar and wind power installation, and its central government has tried to slow down coal plant construction. But an analysis by Coal Swarm, a U.S.-based team of researchers that advocates for coal alternatives, concluded that new plants continue to be built, and other proposed projects have simply been delayed rather than stopped. Chinese coal consumption grew in 2017, though at a far slower pace than before, and is on track to grow again in 2018, after declining in previous years.
                   
                   China’s coal industry is now scrambling to find new markets, from Kenya to Pakistan. Chinese companies are building coal plants in 17 countries, according to Urgewald. Its regional rival, Japan, is in the game too: nearly 60 percent of planned coal projects developed by Japanese companies are outside the country, mostly financed by Japanese banks.
                   
                   That contest is particularly stark in Southeast Asia, one of the world’s last frontiers of coal expansion.
                   
                   An open pit mine in Sindh Province, Pakistan. A cooling tower at a coal-fired plant in Hebei Province, China. More than 4.3 million workers are employed in the country’s coal mines.
                   
                   ‘Even the trees are dying’
                   
                   Nguy Thi Khanh has seen the contest close-up in Vietnam. Born in 1976, a year after the end of the war, she remembers doing homework by the light of a kerosene lamp. In her northern village, the electricity failed several hours a day. When it rained, there was no power at all. When it came, it came from a coal plant not far away. When her mother hung laundry to dry, ash settled on the clothes.
                   
                   Comment of the Moment
                   
                   joyce commented November 24
                   
                   joyce
                   
                   santa feNov. 24
                   
                   Times Pick
                   
                   Don't worry, a few more catastrophic floods, wild fires, hurricanes and tornados, not to mention erupting volcanoes and earthquakes, and we will all sit up and take notice. Much better to start now to do what you can than be forced to retool and refit when destruction is all around you.
                   
                   129 Recommend
                   
                   Flag
                   
                   Today, pretty much every household in Vietnam, population 95 million, has electricity. Hanoi, the capital, where Ms. Nguy now lives, is in a frenzy of new construction, with soaring demand for cement and steel — both energy guzzlers. The economy is galloping. And, up and down the coast, 1,600 kilometers in length, foreign companies, mainly from Japan and China, are building coal plants.
                   
                   One such project is in Nghi Son, a onetime fishing village south of Hanoi and now home to a sprawling industrial zone. The first power plant opened here in 2013. Japan’s overseas aid organization, the Japan International Cooperation Agency, paid for it. The Japanese trading house Marubeni developed it.
                   
                   A second coal-fired power plant, far bigger, is under construction next door. Marubeni is building that too, along with a Korean company. The Japan Bank for International Cooperation, an export credit agency meant to lower financial risk for private lenders, is helping to fund it.
                   
                   In the shadow of the smokestack, Nguyen Thi Thu Thien was drying shrimp on the side of the road and complaining bitterly. She had moved out of her house after the power plant built an ash pond right in front. “The coal dust has blackened my house,” she said. “Even the trees are dying. We can’t live there.”
                   
                   She and the others drying shrimp on the road were doubly angry that the new plant would need a new port, and that would displace their husbands, who tie up their fishing boats there.
                   
                   Trucks rumbled by, throwing up dust, as the women emptied their baskets of shrimp. They kept every bit of themselves covered: wide brimmed hats, face masks, gloves.
                   
                   Coal accounts for 36 percent of the country’s power generation capacity now; it is projected to grow to 42 percent by 2030, according to the government. To feed those plants, Vietnam will need to import 90 million tons of coal by 2030.
                   
                   But coal projects are also sparking community opposition rare in a country that squelches dissent. Villagers blocked a highway in 2015 to protest a Chinese project in the southeast. The provincial authorities quashed another proposed plant in the Mekong Delta.
                   
                   Most plants in Vietnam use old, polluting technologies that many investors, including Marubeni, have recently promised not to back in future projects. A company spokesman said by email that it would continue with the Nghi Son project “to contribute to stable power supply and to economic growth.”
                   
                   Vietnam says it is on track to meet its emissions reductions targets under the Paris accord. So, too, China and India, with far bigger carbon footprints. But those targets were set by the countries themselves, and they will not be enough to keep global temperatures from rising to calamitous levels. The United States has said it will exit the Paris climate pact.
                   
                   Those sobering facts loom over the next round of international climate negotiations, starting Dec. 3 in the heart of Poland’s coal country. The American delegation plans to promote coal at the event, just as it did at last year’s talks in Bonn, Germany.
                   
                   A potent political force
                   
                   A miner in Telegana State, which, until recently, suffered chronic power failures.
                   
                   In the public imagination, the coal miner has long been a symbol of industrial virility, a throwback to an era when hard labor — particularly men’s labor, rather than robots — fueled economic growth.
                   
                   That idea has been central to politics. German coal miners have lifted the fortunes of that country’s far-right party. Poland’s right-wing government has promised to open new coal mines. Australia’s prime minister, Scott Morrison, rose to power as a champion of coal.
                   
                   President Trump has promised, unsuccessfully so far, to revive coal mining jobs and instructed his Environmental Protection Agency to roll back rules to reduce emissions from coal-fired power plants.
                   
                   That message might be welcome in American coal country, but the industry’s future in the United States is not promising. There are cheaper fuels, including natural gas; gas now accounts for around 31 percent of total power generation in the United States, the same share as coal. China has imposed tariffs on coal imports from the United States, in the tit-for-tat trade dispute. More than 200 coal plants have closed since 2010, and coal consumption has continued to decline, contrary to Mr. Trump’s false claims. Coal mining jobs have plummeted over the last decade, despite a modest increase of about 4 percent in the first 18 months of the Trump presidency.
                   
                   ‘We have coal. We are producing more every year.’
                   
                   The economics, and the political calculus, are very different in the world’s biggest democracy: India, population 1.3 billion.
                   
                   Ajay Mishra, the career civil servant in charge of energy in the central Indian state of Telangana, knows firsthand.
                   
                   Five years ago, he said, daily power cuts cursed his state. Ceiling fans cut out on stifling summer afternoons. Factories ran on diesel-guzzling generators. The people of Telangana were furious.
                   
                   State officials had to do something to fix the electricity problem. They harnessed the sun, briefly making Telangana a leading solar power producer in India. They also turned to what government officials have relied on for over a century: the vast vein of coal that sat underground, stretching across the hills and forests of central India.
                   
                   Telangana now has round-the-clock electricity. Its farmers get it free to pump water. It sweetens the re-election bid of Telangana’s top elected official, K. Chandrashekar Rao, in state polls later this year.
                   
                   “We have coal,” Mr. Mishra said. “We are producing more every year. For the next 100 years we have it.”
                   
                   On a warm Tuesday in October, about a four-hour drive from Hyderabad, the capital of Telangana, an army of men in indigo shorts went underground to dig it out.
                   
                   A simple pulley drew them in, a bit like a ski lift, except here, it took them deeper and deeper down a shaft. The creak of the pulley was all you could hear, and water, drip-dripping inside the earth. Here and there, off to the side, stood miners, their forms barely visible in the darkness, except for the belted flashlights that snaked across their bodies.
                   
                   At about 900 feet below the surface, where the air was black and cool and the coal under our feet was squishy, a burst of explosives broke down a wall of coal. Small, sooty chunks were piled into tubs and wheeled out, then loaded onto coal trucks that hurtled down the country roads, sprinkling a layer of ash everywhere.
                   
                   Miners reinforced the roof of a coal pit in Telangana. A power station in Telangana.
                   
                   So deeply is India invested in coal, this, like other mines, is state owned. So are most power plants. Coal subsidizes the country’s vast rail network.
                   
                   That person at the top of that system, India’s prime minister, Narendra Modi, has sought to cast himself as a champion of clean energy.
                   
                   But Mr. Modi has been inaugurating new coal mines, too. His government has made it faster for industry, including mining, to get environmental clearances, rankling environmentalists. India’s state-owned companies are building new coal-fired plants across the country, almost all of them financed by public sector banks.
                   
                   In an interview in the capital, New Delhi, India’s energy secretary, Ajay Bhalla, said some 50 gigawatts of additional coal capacity were under construction. That’s a fraction of what was under development even a decade ago, when India’s energy demand was projected to soar. Many of those plants are meant to replace older, more polluting ones. But coal would not sunset anytime soon, he predicted, not until there’s a cheap and efficient way to store energy from solar and wind energy.
                   
                   Analysts say India must retool its electricity grid for the post-coal era. Battery technology is fast advancing. Microgrids can replace traditional electricity systems. Many existing coal plants are now running below capacity, several are idle, and new energy efficiency standards could slow down demand to the point where there may be a glut of costly coal-fired plants. Left holding this bundle of stranded assets: The public sector banks that financed them.
                   
                   For now, though, coal accounts for 58 percent of India’s energy mix.
                   
                   “It’s not that I’m using the coal very willingly,” Mr. Bhalla said. “But I have to.”
                   
                   A coal worker in Telegana. The state now has round-the-clock power.
                   
                   For more news on climate and the environment, follow @NYTClimate on Twitter.")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         textOutput("text"),
         verbatimTextOutput("sentiment_words")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$text <- renderText({
     input$text
   })
   
   output$sentiment_words <- renderPrint({
     text_df <- data_frame(txt = input$text) %>% 
       mutate(linenumber = row_number()) %>%
       unnest_tokens(word, txt) 
     print(text_df %>% summarise(n_words = n()))
     
     text_df_sent <- text_df %>% 
       inner_join(get_sentiments("afinn"))
     print(text_df_sent)
     
     text_df_summary <- text_df_sent %>% 
       summarise(n_positive = sum(score > 0), n_negative = sum(score < 0), avg_score = sum(score)/(n_negative + n_positive))
     print(text_df_summary)
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

