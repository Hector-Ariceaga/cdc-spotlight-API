articles = Article.create([{
    title: 'Um, is this the boring, peaceful kind of taking to the streets?', author: 'My fellow Earthicans',  
    content: "Now Fry, it's been a few years since medical school, so remind me. Disemboweling in your species: fatal or non-fatal? With a warning label this big, you know they gotta be fun! You know the worst thing about being a slave? They make you work, but they don't pay you or let you go.

    Why would a robot need to drink? Who said that? SURE you can die! You want to die?! Leela, are you alright? You got wanged on the head. I guess because my parents keep telling me to be more ladylike. As though!
    
    Fry, you can't just sit here in the dark listening to classical music. Goodbye, cruel world. Goodbye, cruel lamp. Goodbye, cruel velvet drapes, lined with what would appear to be some sort of cruel muslin and the cute little pom-pom curtain pull cords. Cruel though they may be…
    
    No! The cat shelter's on to me. Hey, what kinda party is this? There's no booze and only one hooker. Moving along… Hey, guess what you're accessories to. Would you censor the Venus de Venus just because you can see her spewers?
    
    Oh, you're a dollar naughtier than most. Bender, we're trying our best. Hey, guess what you're accessories to. No! Don't jump!
    
    Good news, everyone! I've taught the toaster to feel love! Hello Morbo, how's the family? Bender, quit destroying the universe! Say it in Russian! Ah, yes! John Quincy Adding Machine. He struck a chord with the voters when he pledged not to go on a killing spree.
    
    Shut up and get to the point! Negative, bossy meat creature! Bender, I didn't know you liked cooking. That's so cute. Why am I sticky and naked? Did I miss something fun? Okay, I like a challenge. I'm sorry, guys. I never meant to hurt you. Just to destroy everything you ever believed in.
    
    Spare me your space age technobabble, Attila the Hun! Humans dating robots is sick. You people wonder why I'm still single? It's 'cause all the fine robot sisters are dating humans! Bender, you risked your life to save me!", description: "Hey, what kinda party is this? There's no booze and only one hooker. Also Zoidberg.", 
    url: 'testurl.com'}, 
    
    {title: "Kif might! Good news, everyone! There's a report on TV with some very bad news! I'm sure those windmills will keep them cool.", 
    author: 'Also dark wizards',     
    content: "I haven't felt much of anything since my guinea pig died. You can see how I lived before I met you. Why yes! Thanks for noticing. Oh, I don't have time for this. I have to go and buy a single piece of fruit with a coupon and then return it, making people wait behind me while I complain.

    And from now on you're all named Bender Jr. Goodbye, friends. I never thought I'd die like this. But I always really hoped. You know, I was God once. Hey! I'm a porno-dealing monster, what do I care what you think?
    
    Stop it, stop it. It's fine. I will 'destroy' you! We'll need to have a look inside you with this camera. Good man. Nixon's pro-war and pro-family. When will that be? I could if you hadn't turned on the light and shut off my stereo.
    
    Kids don't turn rotten just from watching TV. Humans dating robots is sick. You people wonder why I'm still single? It's 'cause all the fine robot sisters are dating humans! I don't know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas.", 
    description: "That's not soon enough! I love you, buddy!", 
    url: 'testurl2.com'}, 
    
    {title: "I don't want to be rescued. Yeah. Give a little credit to our public schools.", 
    author: "I'm a thing.", 
    content: "I'm just glad my fat, ugly mama isn't alive to see this day. Oh, you're a dollar naughtier than most. And why did 'I' have to take a cab? When I was first asked to make a film about my nephew, Hubert Farnsworth, I thought 'Why should I?' Then later, Leela made the film. But if I did make it, you can bet there would have been more topless women on motorcycles. Roll film!

    You're going to do his laundry? Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood! Or a guy who burns down a bar for the insurance money! There's no part of that sentence I didn't like!
    
    And remember, don't do anything that affects anything, unless it turns out you were supposed to, in which case, for the love of God, don't not do it! Ah, computer dating. It's like pimping, but you rarely have to use the phrase 'upside your head.'
    
    THE BIG BRAIN AM WINNING AGAIN! I AM THE GREETEST! NOW I AM LEAVING EARTH, FOR NO RAISEN! There's no part of that sentence I didn't like! Who said that? SURE you can die! You want to die?! I'm Santa Claus!
    
    Can we have Bender Burgers again? What's with you kids? Every other day it's food, food, food. Alright, I'll get you some stupid food. Is today's hectic lifestyle making you tense and impatient? I don't want to be rescued.
    
    Now that the, uh, garbage ball is in space, Doctor, perhaps you can help me with my sexual inhibitions? Yes, I saw. You were doing well, until everyone died. With a warning label this big, you know they gotta be fun!
    
    Whoa a real live robot; or is that some kind of cheesy New Year's costume? It's just like the story of the grasshopper and the octopus. All year long, the grasshopper kept burying acorns for winter, while the octopus mooched off his girlfriend and watched TV. But then the winter came, and the grasshopper died, and the octopus ate all his acorns. Also he got a race car. Is any of this getting through to you?", 
    description: "The cat shelter's on to me. Do a flip!", 
    url: 'testurl.com3'}])

articles.first.comments.create([{username: 'Mike', content: 'OK, this has gotta stop.', review: true},{username: 'Molly', content: 'In our darkest hour, we can stand erect, with proud upthrust bosoms', review: false},{username: 'Sam', content: "Calculon is gonna kill us and it's all everybody else's fault!", review: true}])


articles.last.comments.create([{username: 'Paul', content: "I had more, but you go ahead. Why am I sticky and naked? Did I miss something fun?", review: true},{username: 'Jan', content: "Stop! Don't shoot fire stick in space canoe! Cause explosive decompression!", review: false},{username: 'Phil', content: "Incidentally, you have a dime up your nose. I didn't ask for a completely reasonable excuse! I asked you to get busy! This is the worst kind of discrimination: the kind against me!", review: true}])