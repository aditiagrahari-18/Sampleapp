class ProductController < ApplicationController
  # include ActionView::Helpers::NumberHelper
  def page
  end

  def create
    p request.get?
    p request.post?
    if request.get?
      redirect_to product_page_path
    else
      @product1 = params[:product1]
      @product2 = params[:product2]
      @product3 = params[:product3]
      @product4 = params[:product4]
      @total_tax = params[:tax]
      @total_discount = params[:discount]

      if @product1.blank?
        # redirect_to product_page_path
        @error = "Product fields are required"
        render "product/page"
      else
        @totalamt = @product1.to_f + @product2.to_f + @product3.to_f + @product4.to_f +  @total_tax.to_f
        # @totalamt2 = @product1.to_f + @product2.to_f + @product3.to_f + @product4.to_f

        @discountedper = @totalamt > 0 ? (100 / (@totalamt.to_f * @total_discount.to_f)) : 0

        @amt1 = (@product1.to_f *  @discountedper.to_f) / 100
        @amt2 = (@product2.to_f *  @discountedper.to_f) / 100
        @amt3 = (@product3.to_f *  @discountedper.to_f) / 100
        @amt4 = (@product4.to_f *  @discountedper.to_f) / 100

        @netamt1 = (@product1.to_f - @amt1.to_f).round(2)
        @netamt2 = (@product2.to_f - @amt2.to_f).round(2)
        @netamt3 = (@product3.to_f - @amt3.to_f).round(2)
        @netamt4 = (@product4.to_f - @amt4.to_f).round(2)
        render "product/price"
      #  redirect_to product_create_path (generates get request)
      end
    end
  end
  #
  # def price
  #   p "==================================================================="
  #   p cookies[:netamt1]
  #   p "==================================================================="
  #       @totalamt = cookies[:total]
  #       @product1 = cookies[:netamt1]
  #       @product2 = cookies[:netamt2]
  #       @product3 = cookies[:netamt3]
  #       @product4 = cookies[:netamt4]
  #       @p1 =  cookies[:prod1]
  #       @p2 =  cookies[:prod2]
  #       @p3  = cookies[:prod3]
  #       @p4  = cookies[:prod4]
  #
  # end
end
