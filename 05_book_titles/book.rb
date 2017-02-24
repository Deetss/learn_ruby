class Book
  def title
    @title
  end
  def title=(name)
    name = name.split(' ')
    conjunctions = ['for', 'and', 'nor', 'but','or','yet','so']
    prepositions = ['bove','across','after','at', 'around','before','behind','below', 'beside', 'between','by','down', 'during', 'for', 'from','in','inside','onto','of','off','on','out','through','under','up','with']
    articles = ['the','a','an']
    if name.length > 1 #check if name array has more than one element
      for word in name #iterate through each word
        if (!conjunctions.include?(word) && !prepositions.include?(word) && !articles.include?(word)) or word == name[0]
          word.capitalize!
        else
          word.downcase!
        end
      end
      name = name.join(' ')
      @title = name
    else
      name = name.join(' ')
      @title = name.capitalize
    end

  end
end
