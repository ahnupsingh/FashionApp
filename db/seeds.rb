# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


employees = Employee.create([{name: "Pravu",emp_type: "Coat Man", address: "Birgunj", contact: "9818311488"},
                             {name: "Meraj",emp_type: "Paint Man", address: "Bara", contact: "9818359382"},
                             {name: "Shyam",emp_type: "Shirt Man", address: "Kalaiya", contact: "9818397382"},
                             {name: "Rajkumar",emp_type: "Paint Man", address: "Pokhara", contact: "9818369382"},
                             {name: "Chandan",emp_type: "Coat Man", address: "Hetauda", contact: "9818459382"}])

bills = Bill.create([{bill_no: "1001",total: "8500", advance: "3000",is_complete: false},
                     {bill_no: "1002",total: "350", advance: "0",is_complete: false},
                     {bill_no: "1003",total: "2600", advance: "500",is_complete: false},
                     {bill_no: "1004",total: "450", advance: "0",is_complete: false},
                     {bill_no: "1005",total: "10000", advance: "5000",is_complete: false},
                     {bill_no: "1006",total: "2200", advance: "1000",is_complete: false},
                     {bill_no: "1007",total: "9500", advance: "3000",is_complete: false},
                     {bill_no: "1008",total: "1950", advance: "0",is_complete: false},
                     {bill_no: "1009",total: "1800", advance: "500",is_complete: false},
                     {bill_no: "1010",total: "9500", advance: "1000",is_complete: false}])

particulars1 = Particular.create([{name: "Coat", quantity: 1, bill_id: 1},
                                  {name: "Paint", quantity: 1, bill_id: 1},
                                  {name: "Shirt", quantity: 1, bill_id: 1}])

particulars2 = Particular.create([{name: "Shirt", quantity: 1, bill_id: 2}])

particulars3 = Particular.create([{name: "Paint", quantity: 2, bill_id: 3}])

particulars4 = Particular.create([{name: "Paint", quantity: 1, bill_id: 4}])

particulars5 = Particular.create([{name: "Coat", quantity: 1, bill_id: 5},
                                  {name: "Paint", quantity: 1, bill_id: 5},
                                  {name: "Shirt", quantity: 1, bill_id: 5},
                                  {name: "Easte Coat", quantity: 1, bill_id: 5}])

particulars6 = Particular.create([{name: "Paint", quantity: 1, bill_id: 6},
                                  {name: "Shirt", quantity: 2, bill_id: 6}])

particulars7 = Particular.create([{name: "Coat", quantity: 1, bill_id: 7},
                                  {name: "Paint", quantity: 1, bill_id: 7},
                                  {name: "Shirt", quantity: 2, bill_id: 7}])

particulars8 = Particular.create([{name: "Shirt", quantity: 2, bill_id: 8}])

particulars9 = Particular.create([{name: "J. Koat", quantity: 1, bill_id: 9}])

particulars10 = Particular.create([{name: "Paint", quantity: 1, bill_id: 5},
                                  {name: "Shirt", quantity: 2, bill_id: 5},
                                  {name: "J. Koat", quantity: 1, bill_id: 5}])


tasks = Task.create([{date: Date.today, employee_id: 1, bill_no: bills[0].bill_no}])
