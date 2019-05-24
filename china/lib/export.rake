namespace :export do
    desc "Print Province.all in a seeds.rb way."
    task :seeds_format => :environment do
        Province.order(:id).all.each do  |province|
            bad_keys = ['created_at', 'updated_at', 'id']
            serialized = province.serializable_hash.
            delete_if{ |key,value|  bad_keys.include?(key)}
            puts "Province.create(#{serialized})"
        end
    end
end
