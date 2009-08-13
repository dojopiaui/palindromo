require 'lib/palindrome'

describe String do
  describe "Case Insensitive" do
    [ 'ovo', 'ana', 'a rua laura', 'A Rua laura', 'Ze de Lima. Rua Laura, Mil e Dez',
      'A droga do dote! é todo da gorda?', 'Amarga-me a droga, a gorda é magra Má'].each do |palindrome|
      it "'#{palindrome}' deve ser verdadeiro" do
        palindrome.palindrome?.should be_true
      end
    end
    
    [ 'cachorro', 'a droga do dote', 'amarga-me a droga', 'a gorda é magra MÁ'].each do |palindrome|
      it "'#{palindrome}' não deve ser uma palindrome" do
        palindrome.palindrome?.should be_false
      end
    end
  end
  
  describe "Case Sensitive" do
    [ 'OvO', 'a dRoga do Dote! é toDo da goRda?', 'Amarga-me a droga, a gorda é magra mÁ'].each do |palindrome|
      it "'#{palindrome}' deve ser uma palindrome" do
        palindrome.palindrome?(true).should be_true
      end
    end

    [ 'Ovo', 'a droga do dote! é todo da GORDA?', 'amarga-me a droga, a gorda é magra MÁ'].each do |palindrome|
      it "'#{palindrome}' não deve ser uma palindrome" do
        palindrome.palindrome?(true).should be_false
      end
    end

    [ 'cacHOrro', 'a drOGA Do dote', 'amarGA-ME A droga', 'A GORda é magra MÁ'].each do |palindrome|
      it "'#{palindrome}' não deve ser uma palindrome" do
        palindrome.palindrome?(true).should be_false
      end
    end
  end
end
