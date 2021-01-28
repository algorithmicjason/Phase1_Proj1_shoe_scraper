Listing.destroy_all
Candidate.destroy_all
Company.destroy_all
Recruiter.destroy_all
Contract.destroy_all

jason = Candidate.create(name: "Jason", skillset: 'engineer', desired_salary: '120000')
jacob = Candidate.create(name: "Jacob", skillset: 'engineer', desired_salary: '220000')

herrera = Recruiter.create(name: "Herrera", age: 23, experience: 1, gender: 'male')
lepler = Recruiter.create(name: "Lepler", age: 25, experience: 2, gender: 'male')

company1 = Company.create(name: "Chipotle", num_of_employees: '10')
company2 = Company.create(name: "Citi Bank", num_of_employees: '900', year_established: '1980')

listing1= Listing.create(position: 'engineer', salary: 100_000) 
listing2= Listing.create(position: 'chef', description: 'make good food', salary: 20_000) 
