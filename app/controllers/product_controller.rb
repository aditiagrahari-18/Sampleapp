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

  # @totalamt = params[:text1].to_i + params[:text2].to_i + params[:text3].to_i + params[:text4].to_i + params[:text5].to_i  
   # @discountedper = 100 / params[:text1].to_i + params[:text2].to_i + params[:text3].to_i + params[:text4].to_i + params[:text5].to_i  
   #  @discountedper2 = @discountedper  * params[:text6]
   #  @amt1 = params[:text1].to_i *  @discountedper2 / 100
   #  @amt2 = params[:text2].to_i *  @discountedper2 / 100
   #  @amt3 = params[:text3].to_i *  @discountedper2 / 100
   #  @amt4 = params[:text4].to_i *  @discountedper2 / 100
   #   @netamt1 =  params[:text1].to_i - @amt1 
   #   @netamt2 =  params[:text2].to_i - @amt2 
   #   @netamt3 =  params[:text3].to_i - @amt3 
   #   @netamt4 =  params[:text4].to_i - @amt4 




        @totalamt = @product1.to_i + @product2.to_i + @product3.to_i + @product4.to_i +  @total_tax.to_i
        @discountedper = 100 / @totalamt.to_f * @total_discount.to_i
        @amt1 = (@product1.to_i *  @discountedper) / 100
        @amt2 = (@product2.to_i *  @discountedper) / 100
        @amt3 = (@product3.to_i *  @discountedper) / 100
        @amt4 = (@product4.to_i *  @discountedper) / 100
  
       @netamt1 = (@product1.to_i - @amt1).round(2)
       @netamt2 = (@product2.to_i - @amt2).round(2)
       @netamt3 = (@product3.to_i - @amt3).round(2) 
       @netamt4 = (@product4.to_i - @amt4).round(2)
  end
end
