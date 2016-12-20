require_relative( '../db/sql_runner' )

class Stock
  
  def self.all


    sql = "SELECT ar.name, al.title, al.genre, al.quantity, al.id
           FROM albums al
           LEFT JOIN artists ar
           ON al.artist_id = ar.id"
    records = SqlRunner.run( sql )

    @info = Array.new
  
      for i in records
        stock = i['quantity'].to_i

        if stock < 4
          i.merge!({stock_level: "Low"})
        elsif stock > 3 && stock < 7
          i.merge!({stock_level: "Medium"})
        else
          i.merge!({stock_level: "High"})
       end

      @info << i
      end

    return @info
  end


end