Code Book
 
 Data Science, Wearable Computing and the Battle for the Throne as World’s Top Sports Brand
By admin on August 23, 2013 in Features, Opinion, wearable technology

ExcaliburIn the past 5 years, we’ve seen unprecedented innovation in data sciences. Previously limited to the largest of large companies processing massive quantities of data with internally purpose-built engines, today’s sophisticated data collection and analysis is democratized through open source data stacks that continue to drive the costs of insights and predictive modeling down. When combined with the enormous amount of data driven from social, mobile, and sensor-driven applications, this new competency in big data is changing the expectations for what is possible at the application level. And it has the potential to create unique business processes that can make – or disrupt — companies.

Every day, 2.5 quintillion (2,500,000,000,000,000) bytes of data are being created.  Through both voluntary and involuntary means we are creating avalanches of data through our cameras, phones, credit cards, web surfing, interaction with GPS and related devices, and sensors in all of our gadgets and apparel which are beginning to monitor and sync our blood pressure, heart rate, and other vitals every 10 minutes of the day. And we are only at the beginning of the wearable computing and activity tracking revolution.

Apps and devices and even prescription medicines that consumers are buying, wearing, and (soon) ingesting on doctor’s orders, are throwing off massive amounts of data.  If intelligently combined with vast repositories of structured and unstructured data that is already available, the combination of advanced real-time analytics, data processing, and decision-making, with emerging sensor technologies should enable new insights and actions that make our lives better. But that is just for consumers.


 Human Activity Recognition Using Smartphones Data Set
Download: Data Folder, Data Set Description

Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
	

Data Set Characteristics:  
	

Multivariate, Time-Series
	

Number of Instances:
	

10299
	

Area:
	

Computer

Attribute Characteristics:
	

N/A
	

Number of Attributes:
	

561
	

Date Donated
	

2012-12-10

Associated Tasks:
	

Classification, Clustering
	

Missing Values?
	

N/A
	

Number of Web Hits:
	

105799

Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
www.smartlab.ws


Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

Relevant Papers:

N/A


Citation Request:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


The same data troves also hold the potential to create insights into new and emerging behaviors, which if the right questions are asked, portend to create new business rules and applications to make business more efficient and create distinct competitive advantages.

MarkdownTake, for instance, the markdown or rebate money a big brand like Adidas or any major brand has to pay its retail partners. It works like this (and I realize that there are still some brands that don’t play the markdown game, so take this for discussion purposes only!): Retailer and Adidas create an agreement with an expected margin on all products sold through that particular channel. Let’s say, Kobe Bryant jerseys. Now let’s pretend Kobe ruptures his Achilles tendon and sits out for an entire year. And instead of flying off the shelves, his jerseys sit on retailer shelves.. The retailer, which had anticipated  $10M of margin for this particular jersey, is stuck with the inventory. The retailer has also probably communicated its forecasts on a roll-up basis to Wall Street or done its corporate planning on those assumptions. So it is stuck. It is a big problem! So one day, with a backlog of Kobe jerseys, the retailer calls Adidas asking for $10M or euphemistically called “margin protection”, with the unsaid (or sometimes said) assumption that if they don’t give them a check, Adidas will have 50% shelf space reduction baked into the next planogram or worse yet, Nike will have 50% more shelf space!  This scenario happens everywhere, around the world, in some form or another.

So what does this have to do with big data and activity tracking?

Adidas wants to move Kobe jerseys and built a loyal following for its brand. The retailer wants to turn its inventory and make its margin. But more importantly, it just wants its margin protected. Adidas would love to continue to sell more product, even at a discount, to Kobe or other fans of Adidas or basketball and has a strong interest in putting jerseys into its most loyal and best customers likely to make more high margin purchases. After all, they are in the business of selling sports apparel, not financing for retailers. Today, Adidas knows very little about the retail consumer who might buy a marked-down jersey, and certainly doesn’t have a police force to ensure that jerseys are getting marked down 50% and put onto the backs of the best customers or most likely customers to buy more Adidas products.

Let’s now play the assumption game: Let’s assume the following: (1) Adidas had 500 million touch points with consumers through its fitness apps like its new miCoach and related performance suite of applications and beyond;  (2) The pace of innovation in sensor technology continues and within 2-3 years sporting goods and apparel is linked to our identities; (3)  These touch points with Adidas are mapped to their Facebook profiles as users signed in through Facebook, giving access (at varying levels) to another trove of valuable Facebook data; and (4) All of this data was also linked to consumer purchase histories made through their direct to consumer business or even god forbid they Starbucked their apps to include a digital wallet to grab more direct consumer transaction data. The available data, the granularity of that data, and ability to draw insights would be staggering. (If you think that this is a scenario for another lifetime, you are wrong!)




Now let’s imagine that Adidas hired a few really competent Silicon Valley type data scientists with competency in real-time analytics, real-time predictive modeling, and complex data processing and a slew of developers and built the right application to be able in real time to ask the right questions of the data. For instance, let’s say the business leader responsible for P&L of the jersey category at Adidas wanted to create new business rule around the insight that there is a massive cohort of consumers with Adidas touch points that: (1) like basketball on FB; (2) Play basketball two or more times/week (from activity tracking data which can use motion sensing to determine what sport is being played); (3) Live within 30 minutes of the retail chain in question; (4) is a fan of Nike, its rival (from FB); (5) is a Millennial; and (6) purchased on average over $250 per year of Adidas product through their direct to consumer business. In theory and if it could attract the right caliber teams to work on these opportunities, Adidas could create an incredibly efficient way to reverse-engineer rebates and markdowns through targeting this cohort for couponing, pushing offers through their apps, through FB, create redemption loops through app barcode scanning at Point-of-Sale, and thereby drive sales to the retailer in question instead of handing them a large inefficient check (from Adidas’ perspective).
The bigger point here is this: When we think about activity tracking and sports, it is shortsighted to think about devices sold. Instead, think about it as potential data created for any vertical.

I’ve spent the past year immersed in conversations with many of the top thinkers and drivers of business and innovation at premier global sports brands and aggressive startups seeking to disrupt them. I’ve also spent plenty of time with some of Silicon Valley’s top data scientists and application developers, including from the The Hive, a co-creation studio for data-driven businesses.  And the more I’m immersed in these conversations, the more I’m convinced that the incumbents are going to struggle to take advantage of this new reality, much like the heavyweights of the music industry took secular digital trends for granted. And from those conversations, it is very clear to me at least, that the line between the two camps is very bright when it comes to big data, why it matters, and how to harness it — not to sell particular devices, but to provide business insights and build actionable applications that drive better business processes.  That is why, in the battle for the throne as king of big sports brands, big data capability is Excalibur.
