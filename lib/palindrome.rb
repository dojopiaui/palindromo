class String
  def palindrome?(case_sensitive = false)
    pal = case_sensitive ? self.only_letters : self.only_letters.downcase
    pal == pal.reverse
  end

  protected  
    def only_letters
      retorno = self
      chars       = "áâàäãéêèëíîìïóôòöõúûùüñçÁÂÀÄÃÉÊÈËÍÎÌÏÓÔÒÖÕÚÛÙÜÑÇ"
      chars_clean = "aaaaaeeeeiiiiooooouuuuncAAAAAEEEEIIIIOOOOOUUUUNC"
      retorno.gsub!(/[#{chars}]/) { |ch| chars_clean.scan(/./)[chars.scan(/./mu).index(ch)] }
      retorno.gsub(/[^a-zA-Z0-9]/, "")
    end
end
