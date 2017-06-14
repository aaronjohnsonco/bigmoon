class PagesController < ApplicationController
  def home
  end

  def next_step
    @contact = Contact.new
  end

  def about
  end

  def work
  end

  def message
    @contact = Contact.new
  end
end
