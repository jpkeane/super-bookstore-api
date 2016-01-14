# Rake::Task['seed:property_types'].invoke
# Rake::Task['seed:rental_states'].invoke

pt1 = PropertyType.create(name: 'House')
pt2 = PropertyType.create(name: 'Flat')
pt3 = PropertyType.create(name: 'Studio')
pt4 = PropertyType.create(name: 'Shared')

rs1 = RentalState.create(name: 'To let', display_colour: '#008000')
rs2 = RentalState.create(name: 'Let', display_colour: '#e00000')

ll1 = Landlord.create(name: 'Super Rentals Co.', address: '123 High Street', telephone: '0121 456 7872')
ll2 = Landlord.create(name: 'RentIT!', address: '6 The Avenue', telephone: '0207 872 6762')
ll3 = Landlord.create(name: 'Grove Property', address: '27 Mapel Road', telephone: '07886 762 7351')
ll4 = Landlord.create(name: 'Acorns', address: '71 Evergreen Street', telephone: '01827 873 823')

image1 = 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg'
image2 = 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Alfonso_13_Highrise_Tegucigalpa.jpg'
image3 = 'https://upload.wikimedia.org/wikipedia/commons/f/f7/Wheeldon_Apartment_Building_-_Portland_Oregon.jpg'

dr800pcm = 26.301369863
dr210pw = 30
dr1800pcm = 59.178082192
dr1600pcm = 46.02739726

re1 = Rental.create(title: 'New build flat, ideal for sharing',
                    city: 'London',
                    bedrooms: 3,
                    image: image1,
                    daily_rent: dr800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt4,
                    rental_state: rs2,
                    landlord: ll1)

re2 = Rental.create(title: 'Studio flat, newly furnished',
                    city: 'London',
                    bedrooms: 1,
                    image: image2,
                    daily_rent: dr210pw,
                    rent_payment_period: :weekly,
                    property_type: pt3,
                    rental_state: rs1,
                    landlord: ll1)

re3 = Rental.create(title: 'Family House',
                    city: 'London',
                    bedrooms: 4,
                    image: image3,
                    daily_rent: dr1800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs1,
                    landlord: ll1)

re4 = Rental.create(title: 'Family 3-bed House',
                    city: 'London',
                    bedrooms: 3,
                    image: image3,
                    daily_rent: dr1600pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs1,
                    landlord: ll1)

re5 = Rental.create(title: 'New build flat, ideal for sharing',
                    city: 'London',
                    bedrooms: 3,
                    image: image1,
                    daily_rent: dr800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt2,
                    rental_state: rs1,
                    landlord: ll2)

re6 = Rental.create(title: 'Studio flat, newly furnished',
                    city: 'London',
                    bedrooms: 1,
                    image: image2,
                    daily_rent: dr210pw,
                    rent_payment_period: :weekly,
                    property_type: pt3,
                    rental_state: rs1,
                    landlord: ll2)

re7 = Rental.create(title: 'Family House',
                    city: 'London',
                    bedrooms: 4,
                    image: image3,
                    daily_rent: dr1800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs1,
                    landlord: ll2)

re8 = Rental.create(title: 'Family 3-bed House',
                    city: 'London',
                    bedrooms: 3,
                    image: image3,
                    daily_rent: dr1600pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs1,
                    landlord: ll2)

re9= Rental.create(title: 'New build flat, ideal for sharing',
                    city: 'London',
                    bedrooms: 3,
                    image: image1,
                    daily_rent: dr800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt2,
                    rental_state: rs1,
                    landlord: ll3)

re10 = Rental.create(title: 'Studio flat, newly furnished',
                    city: 'London',
                    bedrooms: 1,
                    image: image2,
                    daily_rent: dr210pw,
                    rent_payment_period: :weekly,
                    property_type: pt3,
                    rental_state: rs1,
                    landlord: ll3)

re11 = Rental.create(title: 'Family House',
                    city: 'London',
                    bedrooms: 4,
                    image: image3,
                    daily_rent: dr1800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs1,
                    landlord: ll3)

re12 = Rental.create(title: 'Family 3-bed House',
                    city: 'London',
                    bedrooms: 3,
                    image: image3,
                    daily_rent: dr1600pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs1,
                    landlord: ll3)

re13 = Rental.create(title: 'Studio flat, newly furnished',
                     city: 'London',
                     bedrooms: 1,
                     image: image2,
                     daily_rent: dr210pw,
                     rent_payment_period: :weekly,
                     property_type: pt3,
                     rental_state: rs1,
                     landlord: ll4)

re14 = Rental.create(title: 'Family House',
                     city: 'London',
                     bedrooms: 4,
                     image: image3,
                     daily_rent: dr1800pcm,
                     rent_payment_period: :pcm,
                     property_type: pt1,
                     rental_state: rs1,
                     landlord: ll4)

re15 = Rental.create(title: 'Family 3-bed House',
                     city: 'London',
                     bedrooms: 3,
                     image: image3,
                     daily_rent: dr1600pcm,
                     rent_payment_period: :pcm,
                     property_type: pt1,
                     rental_state: rs1,
                     landlord: ll4)

re16 = Rental.create(title: 'New build flat, ideal for sharing',
                    city: 'London',
                    bedrooms: 3,
                    image: image1,
                    daily_rent: dr800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt2,
                    rental_state: rs2,
                    landlord: ll1)

re17 = Rental.create(title: 'Studio flat, newly furnished',
                    city: 'London',
                    bedrooms: 1,
                    image: image2,
                    daily_rent: dr210pw,
                    rent_payment_period: :weekly,
                    property_type: pt3,
                    rental_state: rs2,
                    landlord: ll1)

re18 = Rental.create(title: 'Family House',
                    city: 'London',
                    bedrooms: 4,
                    image: image3,
                    daily_rent: dr1800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs2,
                    landlord: ll1)

re19 = Rental.create(title: 'Family House',
                    city: 'London',
                    bedrooms: 4,
                    image: image3,
                    daily_rent: dr1800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt1,
                    rental_state: rs2,
                    landlord: ll2)

re20 = Rental.create(title: 'Studio flat, newly furnished',
                     city: 'London',
                     bedrooms: 1,
                     image: image2,
                     daily_rent: dr210pw,
                     rent_payment_period: :weekly,
                     property_type: pt3,
                     rental_state: rs2,
                     landlord: ll4)
