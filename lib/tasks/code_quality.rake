if Rails.env.development?
  require 'rubycritic_small_badge'
  require 'rubycritic/rake_task'

  { spec: 65, app: 90 }.each do |dir, percentage|
    RubyCriticSmallBadge.configure do |config|
      config.minimum_score = percentage
    end

    RubyCritic::RakeTask.new("rubycritic:#{dir}") do |task|
      task.options = %(
        --custom-format RubyCriticSmallBadge::Report
        --minimum-score #{RubyCriticSmallBadge.config.minimum_score}
        --format html
        --path tmp/rubycritic/#{dir}
        --format console
      )
      task.paths = FileList["#{dir}/**/*.rb"]
    end
  end

  task code_quality: %i[rubycritic:app rubycritic:spec]
end
