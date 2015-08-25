
note = Note.create(
                    title: "Grocery List",
                    body: "I need to get eggs, milk, and brownie mix."
                  )
note.tags << Tag.new(name: "food")
note.tags << Tag.new(name: "shopping")
note.tags << Tag.new(name: "meals")

note = Note.create(
                    title: "Sports",
                    body: "I enjoy watching football and soccer, and I play ultimate."
                  )
note.tags << Tag.new(name: "athetics")
note.tags << Tag.new(name: "outdoor")
note.tags << Tag.new(name: "entertainment")

note = Note.create(
                    title: "Apple Products",
                    body: "I own a MacBook Pro, an iPhone, and an iMac."
                  )
note.tags << Tag.new(name: "apple")
note.tags << Tag.new(name: "computers")
note.tags << Tag.new(name: "rule")

note = Note.create(
                    title: "The Iron Yard",
                    body: "An awesome 3-month course to become a web developer."
                  )
note.tags << Tag.new(name: "code")
note.tags << Tag.new(name: "bootcamp")
note.tags << Tag.new(name: "indianapolis")

note = Note.create(
                    title: "Cars",
                    body: "I don't really care about cars actually."
                  )
note.tags << Tag.new(name: "engines")
note.tags << Tag.new(name: "vroom")
note.tags << Tag.new(name: "fast")
