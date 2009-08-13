class String
  def palindrome?
    self.downcase.replace_s == self.downcase.replace_s.reverse
  end
  
  def palindrome_case?
    self.replace_s == self.replace_s.reverse
  end
  
  protected
    def replace_s
      retorno = self.gsub(/[ ,.?!\-]/,"")
      retorno = retorno.gsub(/[áãàâ]/,"a").gsub(/[éẽêè]/,"e").gsub(/[íïìî]/,"i").gsub(/[òóõôö]/,"o").gsub(/[ùúü]/,"u").gsub(/[ç]/,"c")
      retorno.gsub(/[ÁÃÀÂ]/,"A").gsub(/[ÉẼÊÈ]/,"E").gsub(/[ÍÏÌÎ]/,"I").gsub(/[ÒÓÕÔÖ]/,"O").gsub(/[ÙÚÜ]/,"U").gsub(/[Ç]/,"C")
    end
end
