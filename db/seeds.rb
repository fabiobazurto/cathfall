# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

live = Service.create({name:"Live", service_type:"live", logo: "c6logo.png"})
vod = Service.create({name:"VOD", service_type:"vod", logo: "c6logo.png"})
lives = Content.create([{title:"Live", url:"https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8", protocol:"hls", service: services.first.id}])
vods = Content.create([{title:"Live", url:"https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8", protocol:"hls", service: services.first.id}])
