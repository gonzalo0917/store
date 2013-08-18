class LearnController < ApplicationController
  def another_action
    #text

    #Situation 1- Setting An Instance Variable Equal to an Action    
    #@text = text

    #Situation 2 – Replace Variable
    #@text = "text you'll never see"  
    #@text = text

    #Situation 3 Carry a Variable
    #@text = "text you'll never see"  
    #text

    #Situation 4 Returning Something Specific
    @text = text
  end

  def text    
    #@text= 'This text came from another action'

    #Situation 1- Setting An Instance Variable Equal to an Action
    #misc_text = 'This text really traveled!'     

    #Situation 2 – Replace Variable
    #wanted_text = overwrite_view 

    #Situation 3 Carry a Variable
    #@text = 'This text overwrote the original text'

    ##Situation 4 Returning Something Specific
    #first = 'This text should not be passed to @text'  
    #second = 'This text would be put into the variable on default'  
    #return first 
    @text = '<u>Text</u>'
    redirect_to :action => 'other'  
  end

  def overwrite_view  
    #Situation 2 – Replace Variable
    overwrite_text = 'This text overwrote the original text'  
  end

  def index
    #Rendering in Rails
    #render :action => 'text' 
    redirect_to :action => 'text' 
  end

  def more
    @text = 'Why Hello'
  end

  def other  
    #@text = '<b>Other</b>'  
    render :action => 'text'  
  end
end
