puts "\n== Seeding the database with fixtures =="

kpmg = Company.create!(name: "KPMG")
kpmg.users.create!(email: "accountant@kpmg.com", password: "password")
kpmg.users.create!(email: "manager@kpmg.com", password: "password")
quote_1 = kpmg.quotes.create!(name: "First quote")
quote_2 = kpmg.quotes.create!(name: "Second quote")
line_item_date_1 = quote_1.line_item_dates.create(date: Date.current)
line_item_date_2 = quote_2.line_item_dates.create(date: Date.current + 1.week)
line_item_date_1.line_items.create(name: "Meeting room", description: "A cosy meeting room for 10 people", quantity: 1, unit_price: 1000)
line_item_date_1.line_items.create(name: "Meal tray", description: "Our delicious meal tray", quantity: 10, unit_price: 25)

line_item_date_2.line_items.create(name: "Meeting room", description: "A cosy meeting room for 10 people", quantity: 1, unit_price: 1000)
line_item_date_2.line_items.create(name: "Meal tray", description: "Our delicious meal tray", quantity: 10, unit_price: 25)

pwc = Company.create!(name: "PwC")
pwc.users.create!(email: "accountant@pwc.com", password: "password")
pwc.users.create!(email: "manager@pwc.com", password: "password")
pwc.quotes.create!(name: "Third quote")
