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

# TODO: 15 To Lets, mix per landlord and type
re1 = Rental.create(title: 'New build flat, ideal for sharing',
                    city: 'London',
                    bedrooms: 3,
                    image: image1,
                    daily_rent: dr800pcm,
                    rent_payment_period: :pcm,
                    property_type: pt2,
                    rental_state: rs1,
                    landlord: ll1)

# TODO: 5 Let, 3 in one LL, 2 in others


