User.create!([
  {email: "matt@test.com", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2018-04-16 01:32:55", last_sign_in_at: "2018-04-15 17:51:44", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Category.create!([
  {name: "Flyfishing"},
  {name: "Rainbow Trout"},
  {name: "Brown Trout"},
  {name: "Outdoors"},
  {name: "Girls Fly Fishing"},
  {name: "Brook Trout"},
  {name: "Chum"},
  {name: "Grayling"},
  {name: "Fly Rod"},
  {name: "Char"},
  {name: "Tiger Trout"},
  {name: "Stream Fishing"},
  {name: "Utah Fly Fishing"},
  {name: "Fish Flop Friday"},
  {name: "Gear Review"},
  {name: "Dry Flies"},
  {name: "Fishing With Dogs"},
  {name: "Nymph Fishing"},
  {name: "Gear"},
  {name: "Salmon"},
  {name: "Pocket Water"},
  {name: "Night Fly Fishing"},
  {name: "Fly On The Mountain"},
  {name: "Simms"},
  {name: "Streamer Fishing"}
])
Hashtag.create!([
  {name: "flyfishing", category: nil},
  {name: "trout", category: nil},
  {name: "raibowtrout", category: nil},
  {name: "tightlines", category: nil},
  {name: "troutfishing", category: nil},
  {name: "browntrout", category: nil},
  {name: "outdoorsman", category: nil},
  {name: "flyfishingjunkie", category: nil},
  {name: "flygirl", category: nil},
  {name: "flyfish", category: nil},
  {name: "freshwaterfishing", category: nil},
  {name: "keepemwet", category: nil},
  {name: "flyfishingnation", category: nil},
  {name: "dryfly", category: nil},
  {name: "brooktrout", category: nil},
  {name: "flyfishingaddict", category: nil},
  {name: "fishpond", category: nil},
  {name: "fishingbuddy", category: nil},
  {name: "flyfishingphotography", category: nil},
  {name: "brookie", category: nil},
  {name: "slipperywhenwet", category: nil},
  {name: "chum", category: nil},
  {name: "grayling", category: nil},
  {name: "fishingspot", category: nil},
  {name: "flyrod", category: nil},
  {name: "fishingseason", category: nil},
  {name: "arcticchar", category: nil},
  {name: "letthemgosotheycangrow", category: nil},
  {name: "flyfishing_flygirls", category: nil},
  {name: "flyfishing_feature", category: nil},
  {name: "flylords", category: nil},
  {name: "nymphs", category: nil},
  {name: "brookies", category: nil},
  {name: "wadeforit", category: nil},
  {name: "fishingbuddies", category: nil},
  {name: "dryflyfishing", category: nil},
  {name: "flyfishinglife", category: nil},
  {name: "flyfisherman", category: nil},
  {name: "tigertrout", category: nil},
  {name: "flyfishingwoken", category: nil},
  {name: "flyfishinggear", category: nil},
  {name: "flyfishingjunky", category: nil},
  {name: "flyfishingisrad", category: nil},
  {name: "streams", category: nil},
  {name: "flyfishingporn", category: nil},
  {name: "flyfishingutah", category: nil},
  {name: "fishflopfriday", category: nil},
  {name: "flyfishinggirls", category: nil},
  {name: "flyfishingfanatic", category: nil},
  {name: "rainbowtroutfishing", category: nil},
  {name: "gearreview", category: nil},
  {name: "flyfishingadventures", category: nil},
  {name: "graylingfishing", category: nil},
  {name: "flyfishingforlife", category: nil},
  {name: "flyfishingdaily", category: nil},
  {name: "chumsalmon", category: nil},
  {name: "flyfishinggirl", category: nil},
  {name: "flyfishingbum", category: nil},
  {name: "flyfishingtrout", category: nil},
  {name: "browntroutfishing", category: nil},
  {name: "flyaddict", category: nil},
  {name: "flyfishingislife", category: nil},
  {name: "slipperyfish", category: nil},
  {name: "pocketwater", category: nil},
  {name: "graylingparade", category: nil},
  {name: "nightflyfishing", category: nil},
  {name: "flyonthemountain", category: nil},
  {name: "repyourwater", category: nil},
  {name: "optoutside", category: nil},
  {name: "troutbum", category: nil},
  {name: "goatworthy", category: nil},
  {name: "seewhatsoutthere", category: nil},
  {name: "fishinglife", category: nil},
  {name: "fishingdaily", category: nil},
  {name: "instafishing", category: nil},
  {name: "findyourwater", category: nil},
  {name: "simms", category: nil},
  {name: "fishexploreconserve", category: nil},
  {name: "mountainangler", category: nil},
  {name: "cheekyflyfishing", category: nil},
  {name: "teamwhyknot", category: nil},
  {name: "whyknotfishing", category: nil},
  {name: "steamers", category: nil},
  {name: "onthefly", category: nil},
  {name: "meateater", category: nil},
  {name: "ontheswing", category: nil},
  {name: "", category: nil}
])
UserHashtagCategory.create!([
  {user_id: 1, hashtag_id: 1, category_id: 1},
  {user_id: 1, hashtag_id: 2, category_id: 1},
  {user_id: 1, hashtag_id: 3, category_id: 2},
  {user_id: 1, hashtag_id: 4, category_id: 1},
  {user_id: 1, hashtag_id: 5, category_id: 1},
  {user_id: 1, hashtag_id: 6, category_id: 3},
  {user_id: 1, hashtag_id: 7, category_id: 4},
  {user_id: 1, hashtag_id: 8, category_id: 1},
  {user_id: 1, hashtag_id: 9, category_id: 5},
  {user_id: 1, hashtag_id: 10, category_id: 1},
  {user_id: 1, hashtag_id: 11, category_id: 1},
  {user_id: 1, hashtag_id: 12, category_id: 1},
  {user_id: 1, hashtag_id: 13, category_id: 1},
  {user_id: 1, hashtag_id: 14, category_id: 6},
  {user_id: 1, hashtag_id: 15, category_id: 7},
  {user_id: 1, hashtag_id: 16, category_id: 1},
  {user_id: 1, hashtag_id: 17, category_id: 1},
  {user_id: 1, hashtag_id: 18, category_id: 8},
  {user_id: 1, hashtag_id: 18, category_id: 1},
  {user_id: 1, hashtag_id: 19, category_id: 1},
  {user_id: 1, hashtag_id: 20, category_id: 7},
  {user_id: 1, hashtag_id: 21, category_id: 1},
  {user_id: 1, hashtag_id: 22, category_id: 9},
  {user_id: 1, hashtag_id: 23, category_id: 10},
  {user_id: 1, hashtag_id: 24, category_id: 1},
  {user_id: 1, hashtag_id: 25, category_id: 11},
  {user_id: 1, hashtag_id: 25, category_id: 1},
  {user_id: 1, hashtag_id: 26, category_id: 1},
  {user_id: 1, hashtag_id: 27, category_id: 12},
  {user_id: 1, hashtag_id: 28, category_id: 1},
  {user_id: 1, hashtag_id: 29, category_id: 5},
  {user_id: 1, hashtag_id: 30, category_id: 1},
  {user_id: 1, hashtag_id: 31, category_id: 1},
  {user_id: 1, hashtag_id: 32, category_id: 13},
  {user_id: 1, hashtag_id: 33, category_id: 7},
  {user_id: 1, hashtag_id: 34, category_id: 1},
  {user_id: 1, hashtag_id: 35, category_id: 1},
  {user_id: 1, hashtag_id: 35, category_id: 8},
  {user_id: 1, hashtag_id: 36, category_id: 6},
  {user_id: 1, hashtag_id: 37, category_id: 1},
  {user_id: 1, hashtag_id: 38, category_id: 1},
  {user_id: 1, hashtag_id: 39, category_id: 14},
  {user_id: 1, hashtag_id: 40, category_id: 5},
  {user_id: 1, hashtag_id: 41, category_id: 15},
  {user_id: 1, hashtag_id: 42, category_id: 1},
  {user_id: 1, hashtag_id: 43, category_id: 1},
  {user_id: 1, hashtag_id: 44, category_id: 1},
  {user_id: 1, hashtag_id: 44, category_id: 16},
  {user_id: 1, hashtag_id: 45, category_id: 1},
  {user_id: 1, hashtag_id: 46, category_id: 17},
  {user_id: 1, hashtag_id: 47, category_id: 18},
  {user_id: 1, hashtag_id: 48, category_id: 5},
  {user_id: 1, hashtag_id: 49, category_id: 1},
  {user_id: 1, hashtag_id: 50, category_id: 2},
  {user_id: 1, hashtag_id: 51, category_id: 15},
  {user_id: 1, hashtag_id: 51, category_id: 19},
  {user_id: 1, hashtag_id: 52, category_id: 1},
  {user_id: 1, hashtag_id: 53, category_id: 10},
  {user_id: 1, hashtag_id: 54, category_id: 1},
  {user_id: 1, hashtag_id: 55, category_id: 1},
  {user_id: 1, hashtag_id: 22, category_id: 21},
  {user_id: 1, hashtag_id: 56, category_id: 21},
  {user_id: 1, hashtag_id: 56, category_id: 9},
  {user_id: 1, hashtag_id: 57, category_id: 5},
  {user_id: 1, hashtag_id: 60, category_id: 3},
  {user_id: 1, hashtag_id: 58, category_id: 1},
  {user_id: 1, hashtag_id: 59, category_id: 1},
  {user_id: 1, hashtag_id: 61, category_id: 1},
  {user_id: 1, hashtag_id: 62, category_id: 1},
  {user_id: 1, hashtag_id: 63, category_id: 1},
  {user_id: 1, hashtag_id: 64, category_id: 24},
  {user_id: 1, hashtag_id: 65, category_id: 10},
  {user_id: 1, hashtag_id: 66, category_id: 25},
  {user_id: 1, hashtag_id: 67, category_id: 26},
  {user_id: 1, hashtag_id: 68, category_id: 1},
  {user_id: 1, hashtag_id: 69, category_id: 4},
  {user_id: 1, hashtag_id: 70, category_id: 1},
  {user_id: 1, hashtag_id: 71, category_id: 4},
  {user_id: 1, hashtag_id: 72, category_id: 4},
  {user_id: 1, hashtag_id: 73, category_id: 1},
  {user_id: 1, hashtag_id: 74, category_id: 1},
  {user_id: 1, hashtag_id: 75, category_id: 1},
  {user_id: 1, hashtag_id: 76, category_id: 1},
  {user_id: 1, hashtag_id: 77, category_id: 1},
  {user_id: 1, hashtag_id: 77, category_id: 27},
  {user_id: 1, hashtag_id: 78, category_id: 1},
  {user_id: 1, hashtag_id: 79, category_id: 1},
  {user_id: 1, hashtag_id: 80, category_id: 1},
  {user_id: 1, hashtag_id: 81, category_id: 1},
  {user_id: 1, hashtag_id: 82, category_id: 1},
  {user_id: 1, hashtag_id: 83, category_id: 28},
  {user_id: 1, hashtag_id: 84, category_id: 1},
  {user_id: 1, hashtag_id: 85, category_id: 1},
  {user_id: 1, hashtag_id: 85, category_id: 28},
  {user_id: 1, hashtag_id: 86, category_id: 28},
  {user_id: 1, hashtag_id: 87, category_id: 29}
])
