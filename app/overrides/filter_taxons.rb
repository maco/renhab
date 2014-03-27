Deface::Override.new(:virtual_path => "spree/products/_taxons",
	:name => "filter_taxons",
	:replace => "[data-hook='product_taxons']",
	:text => "    <div data-hook='product_taxons'>
      <ul id='similar_items_by_taxon' data-hook>
      <% @product.taxons.each do |taxon| %>
	<% if taxon.name != 'Slider'  && taxon.name != 'Featured' && taxon.name != 'Latest' %>
        <li><%= link_to taxon.name, seo_url(taxon) %></li>
	<% end %>
      <% end %>
      </ul>
    </div>")
