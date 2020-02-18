class ProductController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def page
  	
  end

  def price
    @product1 = params[:text1]
    @product2 = params[:text2]
    @product3 = params[:text3]
    @product4 = params[:text4]
    @total_tax = params[:text5]
    @total_discount = params[:text6]

        @totalamt = @product1.to_f + @product2.to_f + @product3.to_f + @product4.to_f +  @total_tax.to_f 
        @totalamt2 = @product1.to_f + @product2.to_f + @product3.to_f + @product4.to_f 
        @discountedper = 100 / @totalamt2.to_f * @total_discount.to_f
        @amt1 = (@product1.to_f *  @discountedper) / 100
        @amt2 = (@product2.to_f *  @discountedper) / 100
        @amt3 = (@product3.to_f *  @discountedper) / 100
        @amt4 = (@product4.to_f *  @discountedper) / 100
  
       @netamt1 = (@product1.to_f - @amt1).round(2)
       @netamt2 = (@product2.to_f - @amt2).round(2)
       @netamt3 = (@product3.to_f - @amt3).round(2) 
       @netamt4 = (@product4.to_f - @amt4).round(2)
  end
end
