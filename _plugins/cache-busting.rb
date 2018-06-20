# Note: Github doesn't allow plugins to execute (safemode). These filters won't work on github pages.
module Jekyll
  module CacheBustFilters
    # A simple class to handle md5 hexdigesting
    # Initializing params:
    # * file_name - String - required - this is both filename to which the md5
    #   hash will be appended to, and will be read for hexdigest in the absence
    #   of a passed in directory.
    # * directory - String - optional - path of directory files that will be
    #   recursively read and passed into hexdigest
    class CacheDigester
      require 'digest'

      attr_accessor :file_name, :directory

      def initialize(file_name:, directory: nil)
        self.file_name = file_name
        self.directory = directory
      end

      def digest!
        [file_name, '?', Digest::SHA256.hexdigest(file_contents)[0..13]].join
      end

      private

      def directory_files_content
        directory.map { |dir|
            Dir[File.join(dir, '**', '*')].map{|f| File.read(f) unless File.directory?(f) }.join
        }.join
      end

      def file_content
        FIle.read(file_name)
      end

      def file_contents
        is_directory? ? file_content : directory_files_content
      end

      def is_directory?
        directory.nil?
      end
    end

    # Gets SHA256 contents of target file (assumed to be using the full path)
    # and appends a hash end of to asset file reference. Ensures deployed
    # asset files are "cachebust-ed" every time the file changes
    def sha256_cache_bust(file_name)
      CacheDigester.new(file_name: file_name).digest!
    end

    # Gets SHA256 contents of all sass assets (assumed to be in /_sass/ )
    # and appends a hash end of the target asset file. Ensures deployed
    # sass based CSS files are "cachebust-ed" every time the files change
    def sass_cache_bust(file_name)
      CacheDigester.new(file_name: file_name, directory: ['_sass','css','_includes/img']).digest!
    end

    # Gets SHA256 contents of all js assets in _assets/javascripts/
    # and appends a hash end of the target asset file. Ensures deployed
    # files are "cachebust-ed" every time the files change. Using
    # jekyll-assests requires first capturing the asset_path string, and
    # passing the path to this filter in a subsequent liquid call.  Example:
    #    {% capture asset_path_string %}{% asset_path app %}{% endcapture %}
    #    <script type="text/javascript" src="{{ asset_path_string | js_cache_bust }}"></script>
    def js_cache_bust(file_name)
      CacheDigester.new(file_name: file_name, directory: ['_includes/js','js']).digest!
    end
  end
end

Liquid::Template.register_filter(Jekyll::CacheBustFilters)
