# == Schema Information
#
# Table name: item_weights
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  weights :hstore
#

class ItemWeight < ActiveRecord::Base
  serialize :weights, ActiveRecord::Coders::Hstore

  has_many :item_types, :inverse_of => :item_weight

  validates_presence_of :name

  def get_weight(size)
    if Item.all_sizes.include? size
      weights[size].to_f
    end
  end

  def fill_gaps
    lower = 2.0
    blank_sizes = []
    Item.all_sizes.each do |size|

      # If there is a recorded weight for this size
      if weights[size]

        # If there are blank sizes, fill them in
        blank_sizes.each_with_index do |blank_size, i|
          self.weights[blank_size] = lower + ((weights[size].to_f - lower) / (blank_sizes.length + 1) * (i+1)).round(1)
        end

        # Set this size as the last known size
        lower = weights[size]
        blank_sizes = []
      else
        blank_sizes << size
      end
    end
  end
end
