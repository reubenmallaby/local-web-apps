u = User.create(
    :firstname => "Admin",
    :lastname => "Admin",
    :email => "admin@example.com",
    :password => "admin"
)

u.admin = true
u.save

sy1 = SchoolYear.create(
  :value => 2011,
  :semestre => 2
)
sy2 = SchoolYear.create(
  :value => 2012,
  :semestre => 1
)
sy3 = SchoolYear.create(
  :value => 2012,
  :semestre => 2
)

u1 = User.create(
  :firstname => "Nicolas",
  :lastname => "Zannini",
  :email => "Nicolas@example.com",
  :password => "Nicolas"
)
u2 = User.create(
  :firstname => "Julien",
  :lastname => "Wolflisberg",
  :email => "Julien@example.com",
  :password => "Julien"
)
u3 = User.create(
  :firstname => "Christophe",
  :lastname => "Magri",
  :email => "Christophe@example.com",
  :password => "Christophe"
)
u4 = User.create(
  :firstname => "Anthony",
  :lastname => "Geiser",
  :email => "Anthony@example.com",
  :password => "Anthony"
)
u5 = User.create(
  :firstname => "Aime-Elom",
  :lastname => "Djagba",
  :email => "Aime-Elom@example.com",
  :password => "Aime-Elom"
)
u6 = User.create(
  :firstname => "Florian",
  :lastname => "Guerdat",
  :email => "Florian@example.com",
  :password => "Florian"
)
u7 = User.create(
  :firstname => "Alexis",
  :lastname => "Cramatte",
  :email => "Alexis@example.com",
  :password => "Alexis"
)

p1 = Project.create(
  :name => "LastFM API",
  :description => "Last FM API",
  :url => "http://myfm.isicdev.he-arc.ch/",
  :school_year_id => sy1.id
)
p2 = Project.create(
  :name => "Musicshare",
  :description => "Musicshare",
  :url => "http://weatheronmap.isicdev.he-arc.ch/",
  :school_year_id => sy1.id
)
p3 = Project.create(
  :name => "Weather on map",
  :description => "Weather on map",
  :url => "http://musicshare.isicdev.he-arc.ch/",
  :school_year_id => sy1.id
)
p4 = Project.create(
  :name => "Arcbook",
  :description => "Arcbook",
  :url => "http://arcbook.isicdev.he-arc.ch/",
  :school_year_id => sy2.id
)
p5 = Project.create(
  :name => "Jebuzz",
  :description => "Jebuzz",
  :url => "http://jebuzz.isicdev.he-arc.ch/",
  :school_year_id => sy2.id
)
p6 = Project.create(
  :name => "LightBoard",
  :description => "LightBoard",
  :url => "http://lightboard.isicdev.he-arc.ch/",
  :school_year_id => sy2.id
)

UserProject.create(
  :user_id => u2.id,
  :project_id => p1.id
)
UserProject.create(
    :user_id => u4.id,
    :project_id => p1.id
)
UserProject.create(
    :user_id => u7.id,
    :project_id => p1.id
)
UserProject.create(
    :user_id => u3.id,
    :project_id => p2.id
)
UserProject.create(
    :user_id => u5.id,
    :project_id => p2.id
)
UserProject.create(
    :user_id => u1.id,
    :project_id => p3.id
)
UserProject.create(
    :user_id => u6.id,
    :project_id => p3.id
)
UserProject.create(
    :user_id => u1.id,
    :project_id => p4.id
)
UserProject.create(
    :user_id => u2.id,
    :project_id => p4.id
)
UserProject.create(
    :user_id => u3.id,
    :project_id => p4.id
)
UserProject.create(
    :user_id => u4.id,
    :project_id => p5.id
)
UserProject.create(
    :user_id => u5.id,
    :project_id => p5.id
)
UserProject.create(
    :user_id => u6.id,
    :project_id => p6.id
)
UserProject.create(
    :user_id => u7.id,
    :project_id => p6.id
)
