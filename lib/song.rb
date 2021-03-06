require 'pry'


class Song

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

    @@songs = []

    def initialize
      super
      @songs = []
    end

    def artist=(artist)
      @artist = artist
    end

    def self.all
      @@songs
    end
end
