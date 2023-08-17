# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'httparty'

BARROS_PLANTS = [
  "Agastache rugosa",
  "Akebia quinata",
  "Allium ramosum",
  "Allium schoenoprasum",
  "Allium ursinum",
  "Alnus cordata",
  "Althea officinalis",
  "Amaranthus caudatus",
  "Amelanchier lamarckii",
  "Angelica keiskei",
  "Aralia cordata",
  "Arbutus unedo",
  "Armoracia rusticana",
  "Basella alba",
  "Buddleja davidii",
  "Caragana arborescens",
  "Casuarina equisetifolia",
  "Celtis australis",
  "Centella asiatica",
  "Ceratonia siliqua",
  "Chaenomeles speciosa",
  "Cichorium intybus",
  "Citrus aurantifolia",
  "Citrus limon",
  "Citrus sinensis",
  "Cornus mas",
  "Corylus avelana",
  "Corylus avelana",
  "Crambe maritima",
  "Crataegus monogyna",
  "Crithmum maritimum",
  "Cydonia oblonga",
  "Diospyros kaki",
  "Elaeagnus angustifolia",
  "Elaeagnus multiflora",
  "Elaeagnus umbellata",
  "Elaeagnus ebbingei",
  "Eryobotrea japonica",
  "Feijoa sellowiana",
  "Ficus carica",
  "Ficus habrophyla",
  "Fragaria ananassa",
  "Fragaria moschata",
  "Fragaria vesca",
  "Fraxinus angustifolia",
  "Galium odoratum" ,
  "Gunnera manicata",
  "Halesia carolina",
  "Hippophae rhamnoides",
  "Jacaranda mimosifoila",
  "Juglans cinerea",
  "Laurus nobilis",
  "Ligustrum vulgare",
  "Lonicera caerulea",
  "Lycium ruthenicum",
  "Malus domestica",
  "Matteuccia struthiopteris",
  "Medicago sativa",
  "Mentha requienii",
  "Metrosideros excelsa",
  "Morus alba",
  "Olea europaea",
  "Passiflora manicata",
  "Passiflora morifolia",
  "Passiflotra edulis",
  "Paulownia elongata",
  "Paulownia tomentosa",
  "Perilla frutescens",
  "Persea americana",
  "Petasites japonicus",
  "Phillyrea angustifolia",
  "Pistacia lentiscus",
  "Plantago lanceolata",
  "Prunus armeniaca",
  "Prunus avium",
  "Prunus domestica",
  "Prunus dulcis",
  "Prunus persica",
  "Prunus pissardii",
  "Prunus salicina",
  "Prunus spinosa",
  "Psidium cattleyanum",
  "Psidium cattleyanum",
  "Psidium guajava",
  "Punica granatum",
  "Pyracantha coccinea",
  "Pyrus communis",
  "Pyrus communis",
  "Pyrus pyrifolia",
  "Quercus robur",
  "Quercus suber",
  "Rheum rhaponticum",
  "Robinia pseudoacacia",
  "Rubus illecebrosus",
  "Sambucus nigra",
  "Saponaria officinalis",
  "Sinapis alba",
  "Solanum abutiloides",
  "Solanum betaceum",
  "Solanum muricatum",
  "Staphylea colchica",
  "Symphytum azureum",
  "Tagetes lucida",
  "Viburnum tinus",
  "Yuca filamentosa",
  "Zanthoxylum americanum",
  "Cercis siliquastrum",
  "Origanum vulgare",
  "Tetragonia tetragonioides",
  "Sorbus aucuparia",
  "Sorbus domestica",
  "Sorbus terminalis",
  "Sorbus aria",
  "Eugenia uniflora",
  "Syzygium cumini",
  "Phormium tenax",
  "Cytisus striatus",
  "Actinidia arguta",
  "Actinidia deliciosa",
  "Akebia trifoliata",
  "Hhmulus lupulus",
  "Amorpha fruticosa",
  "Aronia prunifolia",
  "Asimina triloba",
  "Decaisnea fargesii",
  "Elaeagnus umbellata",
  "Lonicera caerulea",
  "Rhus trilobata",
  "Debregeasia edullis",
  "Calycanthus floridus"
]

def fetch_plant_data(plant_name)
  response = HTTParty.get(
    "https://trefle.io/api/v1/plants?token=#{ENV['TREFLE_TOKEN']}&filter[scientific_name]=#{plant_name}"
  )

  plant_data = response['data'][0] if response.code == 200
  return nil unless plant_data

  {
    scientific_name: plant_data['scientific_name'],
    common_name: plant_data['common_name'],
    family: plant_data['family'],
    genus: plant_data['genus'],
    image_url: plant_data['image_url'],
    id_trefle: plant_data['id']
  }
end

# ------------ Comment out when not necessary ----------
# puts 'First, let\'s delete the old values'
# Plant.delete_all

# puts "Let's fill the database with some plants"
# puts 'Creating plants...'

# BARROS_PLANTS.each do |plant_name|
#   plant_data = fetch_plant_data(plant_name)
#   if plant_data
#     Plant.create!(
#       id_trefle: plant_data[:id_trefle],
#       scientific_name: plant_data[:scientific_name],
#       common_name: plant_data[:common_name],
#       family: plant_data[:family],
#       genus: plant_data[:genus],
#       image_url: plant_data[:image_url],
#     )
#     puts "created #{plant_name}"
#   end
# end
# --------------------------------------------------------
prices = [(10 / 100), (15 / 100), (18 / 100), (20 / 100), (25 / 100)]
soil_ph = [1.5, 5.3, 7.0, 4.4]
sun_requirements = ['full sun', 'partially shade', 'shade']
drought_tolerance = ['high', 'low', 'moderate']
plant_height = [5, 4, 6, 3.5, 2, 7, 10, 20]
featured = [true, false]

plants = Plant.all
plants.each do |plant|
  plant.update!(
    stock_quantity: rand(1..30),
    stars: rand(1..5),
    price: prices.sample,
    soil_ph: soil_ph.sample,
    sun_requirements: sun_requirements.sample,
    drought_tolerance: drought_tolerance.sample,
    plant_height: plant_height.sample,
    plant_width: plant_height.sample,
    featured: featured.sample
  )
  puts "#{plant.scientific_name} updated..."
end
