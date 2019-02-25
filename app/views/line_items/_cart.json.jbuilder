json.extract! cart, :id, :created_at, :updated_at
json.url cart_url(cart, format: :json)

<article>
<% if notice %>
  <aside id="notice"><%= notice %></aside>
  <% end %>
  <h2>Your Cart</h2>
  <table>
  <%= render(cart.line_items) %>
  <tfoot>
  <tr>
  <th colspan="2">Total:</th>
  <td class="price"><%= number_to_currency(cart.total_price) %></td>
  </tr>
  </tfoot>
  </table>
  <%= button_to 'Empty cart', cart,
  method: :delete,
  data: { confirm: 'Are you sure?' } %>
  </article>