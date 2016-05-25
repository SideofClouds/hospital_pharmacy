namespace :db do
  desc 'Fill dummy DB'
  task populate: :environment do
    doctor_role = Role.create(name: 'doctor')
    pharmacist_role = Role.create(name: 'pharmacist')
    print "#{Role.count} roles created\n"

    20.times do |n|
      user = User.new(
        first_name: Faker::Name.first_name,
        last_name:  Faker::Name.last_name,
        email:     Faker::Internet.email,
        password:  'password'
      )
      user.save
      UserRole.create(user: user, role: [doctor_role, pharmacist_role].sample)
    end

    print "#{User.count} users created\n"
  end

  desc 'Add some dummy medicine'
  task add_medicine: :environment do
    35.times do
      medicine = Medicine.new(
        name: Faker::Lorem.words(3),
        description: Faker::Lorem.paragraph,
        capacity: Faker::Number.between(100, 1000)
      )
      medicine.save
    end

    print "There are #{Medicine.count} medicines in the database\n"
  end

  desc 'Remove all data'
  task drop_data: :environment do
    users = User.destroy_all
    print "#{users.size} users removed\n"
    roles = Role.destroy_all
    print "#{roles.size} roles removed\n"
  end
end
