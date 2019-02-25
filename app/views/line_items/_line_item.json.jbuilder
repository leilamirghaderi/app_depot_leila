json.extract! line_item, :id, :product_id, :cart_id, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
<tr>
  <td class="quantity"><%= line_item.quantity %></td>
  <td><%= line_item.product.title %></td>
  <td class="price"><%= number_to_currency(line_item.total_price) %></td>
</tr>
