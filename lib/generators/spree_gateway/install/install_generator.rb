module SpreeGateway
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../db', __FILE__)

      class_option :migrate, type: :boolean, default: true, banner: 'Migrate the database'
      class_option :seed, type: :boolean, default: true, banner: 'Seed the database'

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_gateway'
      end

      def copy_seeds_dir
        Dir.foreach seed_fixtures_dir do |file|
          copy_file "fixtures/#{file}", "db/fixtures/#{file}"  unless file.match /^\./
        end
      end

      def seed_fixtures_dir
        File.expand_path 'fixtures', self.class.source_root
      end

      def run_migrations
       if options[:migrate]
         run 'bundle exec rake db:migrate VERBOSE=false'
       else
         puts "Skiping rake db:migrate, don't forget to run it!"
       end
      end

      def run_seeds
        if options[:seed]
          run 'bundle exec rake db:seed_fu FILTER=spree_digital_wallet_type FROM=spree_gateway'
        else
          puts "Skiping rake db:seed, don't forget to run it!"
        end
       end
    end
  end
end
