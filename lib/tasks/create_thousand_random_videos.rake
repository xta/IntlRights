desc "create one thousand videos in the database with random rights per country"
task :create_video_thousand_times, [:num_of_times] => :environment do |t, args|

  multiplier  = args[:num_of_times] || 1
  start       = Video.all.size # due to videos starting at Vid00
  finish      = multiplier.to_i * 1000 + start

  (start..finish).each do |video_count|
    two_digit = format('%02d', video_count)
    vid_name = "Vid#{two_digit}"
    video = Video.create(:vid => vid_name)

    Country.all.each do |country|
      Policy.create(:video_id => video.id, :country_id => country.id, :rights => Policy::POLICY_RIGHTS.sample)
    end

    puts "Created #{vid_name}"
  end

end
