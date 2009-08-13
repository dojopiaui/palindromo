class String
  def palindrome?
    out = self.replace_s.downcase == self.replace_s.downcase.reverse
  end
  
  def palindrome_case?
    self.replace_s == self.replace_s.reverse
  end
  
  protected
    def replace_s
      retorno = self.gsub(/[ ,.?!\-]/,"")
      retorno = retorno.gsub(/[áãàâ]/u,"a").gsub(/[éẽêè]/u,"e").gsub(/[íïìî]/u,"i").gsub(/[òóõôö]/u,"o").gsub(/[ùúü]/u,"u").gsub(/[ç]/u,"c").
                        gsub(/[ÁÃÀÂ]/u,"A").gsub(/[ÉẼÊÈ]/u,"E").gsub(/[ÍÏÌÎ]/u,"I").gsub(/[ÒÓÕÔÖ]/u,"O").gsub(/[ÙÚÜ]/u,"U").gsub(/[Ç]/u,"C")
    end
end
