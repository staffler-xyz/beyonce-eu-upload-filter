# Beyoncé Upload Filter

Remove unflattering photos of Beyoncé.

## History

1. In 2013 Beyoncé's publicist ask to remove unflattering images from an internet article. Unfortunately, once they are on the internet, they are on the internet.
3. To get rid of the images, Beyoncé's publicist asked the EU if they could make a law to finally remove the unflattering images from the web. 
4. In 2018 the EU approves the controversial EU copyright directive and the "upload filter" to fight against copyright violations, terrorism and bad photos of Beyoncé.
5. After the final vote in 2019 every online portal has to implement a scanning system and connect to the official *Beyoncé Upload Filter*.

## Setup

Run the server with:
```
bundle install
rails s
```

Send a POST-multipart-request with an `image` parameter to the server for image validation. 
