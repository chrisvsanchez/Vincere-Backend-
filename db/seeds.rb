# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Order.destroy_all
Item.destroy_all
OrderItem.destroy_all
Event.destroy_all
SignUpForEvent.destroy_all


puts "Creating Users"
User.create({
    name: "Chris Sanchez",
    email: "christiansanchez@gmail.com",
    password: "abc123"
})
User.create({
    name: "Emely Sanchez",
    email: "emelysanchez@gmail.com",
    password: "abc1234"
})
User.create({
    name: "Aidan Dexter",
    email: "aidanDexter@gmail.com",
    password: "abc12345"
})
puts "Users created"
puts "Creating orders"
10.times do 
Order.create(
    user: User.all.sample.id
)
end 
puts "Order Complete"
puts "Creating items"
Item.create({
    quantity:10,
    name:"Mille GT Short Sleeve Jersey - Men's",
    description:" Ideally situated for warm-weather riding, its lightweight and breathable Type.157 Stripe textile is a stretchy circular knit so it's quick to dry while offering UPF35 protection against the sun's rays. If the thermostat is still a little too high on long climbs, the slim, full-length zipper allows you to easily dump heat. It's cut in the refined Assos Regular Fit that offers plenty of range of motion and is extremely comfortable while in the cycling position. Perfect for those long training rides when you don't want or need an aggressive aero jersey and instead value comfort over saving seconds.Made for Men.",
    price: 120,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS009I/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS009I/BLA_D1.jpg "
})
Item.create({
    quantity:10,
    name:"Pro Black Jersey Men's",
    description:"As glibly puts it, 'summer is pretty mindless when it comes to apparel choice.' That's because the typical temperatures of grand tour season are high enough to impose mandatory minimalism in terms of cycling clothing. But the advent of changing leaves and falling temperatures gives the committed kit hound an opportunity to dip into the cycling wardrobe without going full mindless in the winter jacket direction. That means thermal jerseys, and—as frequent visitors to our site will know—many of us have an obsession with thermal jerseys that borders on a fetish. Of course, not everyone in the Competitive family loses their minds over basic, brushed thermal jerseys, but even the most function-first cyclists here feel a tinge of longing for the impressively articulated Assos iJ.intermediate_s7 profBlack Men's Jersey.Made for Men.",
    price:200,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS006U/PROBK.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS006U/PROBK_D4.jpg", 
})
Item.create({
    quantity:10,
    name:"Equipe RS Aero Short-Sleeve Jersey - Men's",
    description:"The majority of the Equipe RS Aero Short-Sleeve Jersey is constructed from the new miniCheck Tex, an open 3D knit fabric to wick away moisture and maintain exceptional breathability. Additionally, it provides quick drying and is extremely lightweight. You'll also enjoy its built-in odorControl allowing you to feel fresher on those long rides. At the rear of the jersey, Stabilizer textile secures the jersey with its limited vertical-stretch composition keeping the fit in check, while the new Push Pull textile with raw + bonded sleeves and pockets provide high UV protection to go along with its quick-drying, two-way stretch properties so it's as flexible and as smooth as possible in the face of the wind. Made for Men.",
    price:190,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00B9/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00B9/BLA_D2.jpg", 
})
Item.create({
    quantity:10,
    name:"Pro Black Jacket Men's",
    description:"If we were to grossly generalize, we might divide the Competitive office into two broad groups. The first group consists of discerning cyclists who self-identify as 'roadies' and exhibit an occasional penchant for sartorial excess; the second, cyclists who insist on function over form, mismatching kit in a kaleidoscope of clash that might be referred to as get-the-damn-job-done chic. One group is particular about the style of what they wear on the bike; the other just wants to get out the door. The key area of overlap is that both groups insist on gear that is effective at its intended purpose, so the Assos iJ.bonkaCENTO.6 profBlack Men's Jacket—which blends style with fit and winter-grade protection—represents the rare instance where everyone in the office is in accord.Made for Men. ",
    price:529,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS006V/PROBK.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS006V/PROBK_D12.jpg", 
})
Item.create({
    quantity:10,
    name:"MilleJacket evo7 Jacket Men's",
    description:"As cyclists, we're obligated to love our morning coffee. It can take a lot to get us away from it, especially when getting away from it involves heading out into an unforgiving winter landscape to log those all-important base miles. Vincere makes it easier to put the cup down and pick the helmet (and gloves, and thermal cap, and shoecovers, etc.) up with its  MilleJacket evo7.",
    price:107,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS006K/VOL.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS006K/VOL_D6.jpg", 
})
Item.create({
    quantity:10,
    name:"Skinfoil Spring/Fall Long-Sleeve Base Layer Men's",
    description:"The ultimate first layer coverage for transition seasons
    Moisture-wicking yarn pulls away sweat, dries quickly, and breathes
    Seamless construction through sleeves and torso for fuss-free fit
    Circular open-mesh weave helps usher sweat away from your skin
    Strategic body compression helps support muscles
    Raglan sleeves help boost free range of motion
    Unisex cut fits next to skin for comfort under your jersey or jacket",
    price:95,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00CE/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00CE/BLA_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"Equipe RS Cap ",
    description:"Built to take over as the new essential cycling cap, the Equipe RS Cap steers away from full-cotton caps of the past to add performance and comfort. Cotton and polyester combine to offer quick-drying properties without sacrificing traditional comfort, while mesh panels increase breathability to keep you cool during long, strenuous rides.
    A classic cycling cap with updated tech to add performance
    Cotton and polyester blend fabric adds comfort and dries quickly
    Terry lining wicks moisture away from your face
    Mesh panels increase airflow to keep you from overheating
    Half-moon construction uses minimal seams to prevent irritation",
    price:40,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AASZ00H/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AASZ00H/BLA_D2.jpg", 
})
Item.create({
    quantity:10,
    name:"CampionissimoJersey_evo7 Jersey - Short Sleeve Men's",
    description:"Taking the all-new SS.campionissimoJersey_evo7 out for a few dozen miles in the heat of summer tells us that, though Assos is often colloquially referred to as 'the shorts company,' the Swiss brand knows a few things about jerseys, too. The SS.campionissimoJersey represents a new level of innovation in cycling tops, and not even Assos' SS.cento jersey pushed the boundaries this far. By combining an integrated skinFoil base layer, a proprietary new fabric, and an asymmetrical design ethos that only Assos could dream up, the SS.campionissimo does to jerseys what the T.campionissimo_S7 bibs did for cycling shorts: completely revolutionize the game, and force every other manufacturer to up their game in order to stay relevant.",
    price:229,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS005O/VOLYL.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS005O/VOLYL_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"MILLE GT Summer Long-Sleeve Jersey - Men's",
    description:"A jacket with a little protection can go a long way—especially in milder conditions and when endowed with windproof and water-resistant fabrics. Built to keep you comfortable on crisp spring mornings and as temperatures rise on late autumnal days, the Mille GT Spring Fall Jacket from Assos has you covered when conditions are fickle. Built with a form fit, it's aerodynamic enough to keep you spinning quickly on the group rides and fit snugly under a rain shell while still offering enough room over baselayers and thermal jerseys.

    Assos' proprietary NEOS 7 fabric is key to the Mille GT Jacket's versatility. It's a 2.5-layer softshell with a weather-blocking membrane on the upper front panel. Despite that protective face, it's highly breathable, making it ideal for ever-changing conditions while keeping your core warm.",
    price:140,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS009N/HOL.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS009N/HOL_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"HaBu.5 Jacket - Men's",
    description:"There's a breaking point when the weather gets cold enough that thermal jerseys alone don't provide enough warmth. The Assos iJ.Habu.5 Men's Jacket is designed to take you beyond that barrier. It wears with the weight and feel of a jersey and is ideally used over one of Assos' three different Interactive Base Layers to vary the total effect of its warmth. The critical design detail that gives the iJ.Habu.5 Jacket the potential to keep you warm into seriously chilly weather is the Stratagon windproof material that Assos places across the front, down the arms, and over the shoulders.
    ",
    price:329,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS001T/RDSWI.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS001T/RDSWI_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"Rapidfire S9 Long-Sleeve Chronosuit - Men's",
    description:"Built to shed off seconds from your race, the Equipe RS Rapidfire S9 Long-Sleeve Chronosuit offers wind-tunnel tested construction to keep you at the head of the pack. The Type.701kompressor material reduces friction and odor while increasing abrasion-resistance and heat management to keep you comfortable and fast, while the Butterfly pattern reduces seams to reduce weight and irritation during long races.",
    price:519,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AASZ00L/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AASZ00L/BLA_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"TiburuJacketLaalalai - Women's",
    description:"Through fall and spring, early morning rides can begin with the harsh chill of winter, only to lighten up to contrasting warm rays of sunshine that send us deep into day-dreams of summer's warmth. These unpredictable days, with massive temperature changes, have us pulling up knee and arm warmers and piling on layers that we'll need to stow away within an hour or two. Understanding the hassle of every changing temperatures and excessive layering, Assos equips us for the shoulder seasons with the TiburuJacketLaalalai. The TiburuJacketLaalalai is a mid-weight jacket for mid-season cycling that offers the insulation you need for frosty mornings, and the breathability that keeps you comfortable long after the sun casts its warm glow on the road, plus an exceptional tailored cut that contours to your curves for a flattering fit.",
    price:150,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS008G/BKSER.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS008G/BKSER_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"UMA GT Wind Jacket Summer - Women's",
    description:"Up front, its ripstop LFoil Ultra textile provides protection from the wind and keeps rain and precipitation from hampering your ride while the side panels use its warp knit Glossy textile for breathability and a high level of stretch, ensuring a comfortable reach to the bars and the cycling-specific coverage you need, when you need it most. The whole lot is treated with DWR (Durable Water Repellency) to keep the material from wetting out in the rain. Its dual-layer collar offers comfort and protection while the raglan sleeves are optimized for a forward facing position and lowering the drag.

    Cut in its body mapped, women’s Long Distance fit, it offers plenty of room and is easy to put over existing base layers and jerseys but still gives a nod to aerodynamics while packing the ideal blend of protection without bulk. If you need to adjust the amount of airflow, a full-length Camlock zipper up front lets you easily adjust it to the conditions while its Stretch net back offers impressive ventilation, preventing you from overheating. One last little detail that you never really appreciate until you experience it is the beauty of its rustle-free fabric and Assos designed this jacket to be as quiet as possible.
    
    A summer jacket for protection from the unexpected
    LFoil Ultra materials create a comfortable microclimate
    The breathable back allows for maximum ventilation
    The low bulk design doesn't take up much pocket space
    Rustle-free fabrics allow for quiet cycling
    Rear reflective tabs enhance your safety in low-light
    ",
    price:149,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00AR/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00AR/BLA_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"UMA GT Wind Vest Summer - Women's",
    description:"If you're looking for a minimal and lightweight vest that provides windproof protection to keep your core warm during milder rides, reach for the UMA GT Wind Vest Summer from Assos. This particular one sports a women’s specific Long Distance cut with a form-fitting design. It uses its Foil Ultra textile up front for protection against the wind and water resistance and its windproof Glossy on the side for more stretch and breathability. At the collar, its double layer construction improves elasticity and keeps the heat in. Everything is treated with DWR to keep any precipitation from soaking through.",
    price:130,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00AQ/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00AQ/BLA_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"UMA GT Winter Bib Tights - Women's",
    description:"Evolution is natural, and in the cycling industry, it comes at an incredibly fast pace. Take Assos for example, and its constant striving for perfection in cycling apparel. The Swiss brand's latest offering is the UMA GT Winter Bib Tight, a redesign of its HabuTights that stretches further into winter protection by holding up against showers and icy gusts. The new UMA features some familiar fabrics, like the RX Heavy insulating and brushed Roubaix material that makes up the majority of the tights, but ads in ECO water-repellent treatment for additional coverage against precipitation and wheelspray.",
    price:219,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00C9/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00C9/BLA_D1.jpg", 
})
Item.create({
    quantity:10,
    name:"UMA GT NS Body Suit - Women's",
    description:"Vincere constructs its UMA GT NS Body Suit for spirited rides in the hottest conditions. This high-performance body suit replaces its summer staple, the tB.Laalalai, and will quickly become your go-to outfit during the weekly summer crits and club time trial efforts. Built of technical fabrics and with a refined, regularFit that prizes speed and comfort, the UMA GT NS Body suit is another home run from the brand known as the 'shorts company'.",
    price:229,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00B7/HOL.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00B7/HOL_D2.jpg", 
})
Item.create({
    quantity:10,
    name:"Mille GT Winter Bib Tight - Men's",
    description:"From the snow-capped mountains of Switzerland comes some of cycling's most elite and stunning threads, and it should be no surprise that brands like Assos excel when it comes to winter-ready cycling clothing to keep you on the tarmac long after the temps take a dive for the winter. With lines like Bonka that take over winter with a head-on attitude, we know we can trust the frost-worthy fabrics of Assos, but sometimes we prefer a fit that's a little more accommodating than the race-worthy Bonka, which is why Assos crafted the Mille GT Winter Tight. These tights blend together warmth, flexibility, protection, and support, with a little more room for comfort than the Bonka, so you can get in your training rides and casual winter spins without skin-tight compression. The Mille GT are designed to pull on fast to eliminate as many barriers between you and your base miles as possible.",
    price:219,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00CV/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00CV/BLA_D4.jpg", 
})
Item.create({
    quantity:10,
    name:"Cento EVO Bib Short - Men's",
    description:"The Cento EVO Bib Short from Assos is the evolution of its iconic Cento, updated with new features and details that further its long-distance-comfort credentials. It's refined fit, materials, and updated insert solidifies this short as a staple from the stalwart short brand.",
    price:329,
    image1:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00C2/BLA.jpg",
    image2:"https://content.competitivecyclist.com/images/items/900/AAS/AAS00C2/BLA_D1.jpg", 
})
puts "Created items"
puts "creating orderitem"
10.times do 
OrderItem.create({
    order_id: Order.all.sample.id, 
    item_id: Item.all.sample.id
})
end 
puts " created orderitems"
puts "creating Events"

Event.create({
    date: "September 15, 2020",
    description: "bli blah blah ",
    name:"Boogie Down Bronx Alley Cat" ,
    location_name:"Vancortlandt Park",
    address:"Broadway and, Van Cortlandt Park S, The Bronx, NY 10471",
    event_time:"5pm"
})
Event.create({
    date: "September 15, 2020",
    description: "bli blah blah ",
    name:"Red Hook Crit" ,
    location_name:"Red Hook",
    address:"214 Conover St Red Hook, Brooklyn",
    event_time:"7pm"
})
Event.create({
    date: "September 15, 2020",
    description: "bli blah blah ",
    name:"Cranks Giving" ,
    location_name:"Times Square",
    address:"Manhattan, NY 10036",
    event_time:"3pm"
})
Event.create({
    date: "September 15, 2020",
    description: "bli blah blah ",
    name:"100 Mile Ride" ,
    location_name:"Vancortlandt Park",
    address:"Broadway and, Van Cortlandt Park S, The Bronx, NY 10471",
    event_time:"3pm"
})
puts "completed creating events"
puts "creating signUp for events"
10.times do 
    SignUpForEvent.create({
    user_id: User.all.sample.id, 
    event_id: Event.all.sample.id
})
end 
puts "completed sign up for events "