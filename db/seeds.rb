# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
I18n.locale = :ja

def fake_item_name
  headword = [ "がん細胞" , "再生医療" , "遺伝子" , "iPS細胞" , "免疫細胞療法" , "大腸菌" , "タンパク" , "CTC" , "糖鎖" , "DNA"]
  tailword = ["測定装置","製造装置","作成機器","培養装置","処理機器"]
  headword.sample + tailword.sample
end

def fake_item_item_type
  headword = [ 'innovation','business']
  headword.sample
end

def fake_item_webimage_url
  headword = [
    'http://www.beckmancoulter.co.jp/images/press/090330_01.jpg',
    'http://www.nakayama-co.jp/wp-content/uploads/2013/03/attune.png',
    'http://www.sony.co.jp/Products/LifeScience/images/share/EC800.jpg',
    'http://www.sony.co.jp/Products/LifeScience/images/share/sh800z_2x.jpg',
    'http://www.jrc.kindai.ac.jp/nihongo/kiki/honbu/images/%E3%83%95%E3%83%AD%E3%83%BC%E3%82%B5%E3%82%A4%E3%83%88%E3%83%A1%E3%83%BC%E3%82%BF-0.jpg',
    'http://www.jrc.kindai.ac.jp/nihongo/kiki/honbu/images/sims001.jpg',
    'http://www.jrc.kindai.ac.jp/nihongo/kiki/honbu/images/maldi.jpg',
    'http://www.jrc.kindai.ac.jp/nihongo/kiki/honbu/images/saturn70rm.jpg',
    'http://www.jrc.kindai.ac.jp/nihongo/kiki/honbu/images/ekisinm.jpg',
    'http://www.naro.affrc.go.jp/narc/contents/files/ensin07.jpg',
    'http://www.naro.affrc.go.jp/narc/contents/files/meta26.jpg',
    'http://sites.e.frontier.dendai.ac.jp/info/_/rsrc/1268800836983/table/hatoyama054-shr.jpg?height=133&width=200'

  ]
  headword.sample
end
def fake_knowledge_webimage_url
  headword = [
      'http://kenkou-8.org/images/ns_images/MP900433133.jpg',
      'http://www.med.kindai.ac.jp/stemcell/1.jpg',
      'http://www.med.kindai.ac.jp/stemcell/falloidineHP.jpg',
      'https://kids.gakken.co.jp/kagaku/keywords/images/contents/080229_01.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/DNA_Structure%2BKey%2BLabelled.pn_NoBB.png/340px-DNA_Structure%2BKey%2BLabelled.pn_NoBB.png',
      'http://homepage2.nifty.com/kirislab/ss/bSchool/DNAtoProtein2.jpg',
      'http://homepage2.nifty.com/nutriology/right-page/dna/dna-01.gif',
      'https://upload.wikimedia.org/wikipedia/commons/0/0f/Peptide_syn.png',
      'http://jinzoux.up.seesaa.net/image/20120429_2358295-77303.jpg',
      'https://www.funakoshi.co.jp/f_img/ds/Westen_Blotting_01.jpg',
      'https://www.miobs.com/product/tokutei/faspec_western/img/instructions01.gif',
      'http://www.funakoshi.co.jp/f_img/ds/YNK_7893_01.JPG',
      'http://www.ycaster.com/image/saiseinoke.JPG',
      'http://stapsaibouobochan.blog.so-net.ne.jp/_images/blog/_e64/stapsaibouobochan/m_E38390E382ABE383B3E38386E382A3E3839EE382A6E382B9.jpg'
  ]
  headword.sample
end

1000.times do |_n|
  random = Random.new
  num = random.rand(1..2)
  if num == 1
    item_type = 'business'
  elsif num == 2
    item_type = 'innnovation'
  end

  Item.create(
    name: fake_item_name,
    uuid: SecureRandom.uuid,
    message: Forgery(:lorem_ipsum).words(20),
    manufacture_name: Faker::Company.name,
    manufacture_cn: Faker::Code.asin,
    prefecture: ForgeryJa(:address).state,
    company: Faker::University.name,
    address: Gimei.city.kanji + Gimei.town.to_s + Faker::Number.between(1, 5).to_s + '丁目' + Faker::Number.between(1, 10).to_s + '番地',
    user_type: '',
    access_counter: Faker::Number.between(1, 999),
    activity_counter: Faker::Number.between(1, 9999),
    user_id: Faker::Number.between(1, 10),
    webimage_url: fake_item_webimage_url,
    item_type: fake_item_item_type
  )
end

10.times do |n|
  password = 'password'
  User.create!(
    name: Gimei.kanji,
    uuid: SecureRandom.uuid,
    message: Forgery(:lorem_ipsum).words(20),
    email: 'test' + n.to_s + '@fakemail.com',
    password: password,
    password_confirmation: password,
    company: Faker::University.name,
    prefecture: ForgeryJa(:address).state,
    webimage_url: Faker::Avatar.image(fake_item_name),
    address: Gimei.city.kanji + Gimei.town.to_s + Faker::Number.between(1, 5).to_s + '丁目' + Faker::Number.between(1, 10).to_s + '番地',
    user_type: fake_item_item_type
  )
end

10000.times do |_n|
  random = Random.new
  useridnum = random.rand(1..10)
  random = Random.new
  itemidnum = random.rand(1..1000)

  Knowledge.create(
    message: Forgery(:lorem_ipsum).words(100),
    uuid: SecureRandom.uuid,
    user_id: useridnum,
    webimage_url: fake_knowledge_webimage_url,
    item_id: itemidnum,
    access_counter: Faker::Number.between(10, 999)
  )
end
