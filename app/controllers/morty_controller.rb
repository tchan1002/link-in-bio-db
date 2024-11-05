class MortyController < ApplicationController
  
  def homepage
    @list_of_items = Item.all.order({ :created_at => :desc })
    render({:template => "linkinbio/list"})
  end

end
