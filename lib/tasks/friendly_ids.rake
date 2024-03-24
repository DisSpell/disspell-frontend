namespace :friendly_ids do
  desc "TODO"
  task update: :environment do
    Video.all.each do |video|
      puts video.id
      puts video.title
      video.save(&:save)
    end
  end

end
