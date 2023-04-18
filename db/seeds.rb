# Create sales managers
5.times do
    SalesManager.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: 'password'
    )
  end
  
  # Create merchandisers
  10.times do
    Merchandiser.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: 'password',
      salesManager_id: SalesManager.all.sample.id,
      route_plan_id: rand(1..5)
    )
  end
  
  # Create outlets
  20.times do
    Outlet.create(
      name: Faker::Company.name,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    )
  end
  
  # Create route plans
  5.times do
    RoutePlan.create(
      salesManager_id: SalesManager.all.sample.id,
      start_date: Faker::Date.between(from: '2022-01-01', to: '2022-12-31'),
      end_date: Faker::Date.between(from: '2023-01-01', to: '2023-12-31')
    )
  end
  
  # Create route plan details
  RoutePlan.all.each do |route_plan|
    Merchandiser.all.each do |merchandiser|
      Outlet.all.sample(rand(1..5)).each do |outlet|
        RoutePlanDetail.create(
          routePlan_id: route_plan.id,
          merchandiser_id: merchandiser.id,
          outlet_id: outlet.id,
          date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31')
        )
      end
    end
  end
  
  # Create GPS logs
  Merchandiser.all.each do |merchandiser|
    rand(10..50).times do
      GpsLog.create(
        merchandiser_id: merchandiser.id,
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude,
        gpsStarted: Faker::Time.between(from: '2022-01-01', to: '2023-12-31'),
        gpsStopped: Faker::Time.between(from: '2022-01-01', to: '2023-12-31')
      )
    end
  end