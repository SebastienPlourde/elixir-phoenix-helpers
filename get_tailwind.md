### Installation
1) Create a folder named "Helpers" Phoenix_web/
2) Add in /lib/phoenix_web.ex inside 

```Elixir
def view_helpers do
...
  # near after the list of imports
  # Make sure to replace PhoenixWeb by the name of your project.
  alias PhoenixWeb.Router.Helpers, as: Routes # if not already there
  import PhoenixWeb.Helpers.GetTailwind
...
end
```



Once installed, simply edit Get_tailwind.ex by adding your class combos from your template.
This method respects Tailwind philosophy as well as Phoenix templating features.

### Usage exemple

#### HTML attribute
In the HTML template in the class attribute type this:

```HTML
<h1 class={tw_("h1")}>Hello world!</h1>
```

Instead of this

```HTML
<h1 class="text-3xl font-bold text-gray-900">Hello world!</h1>
```

#### Phoenix html
In the HTML template in a form input

```HTML
<%= text_input f, :units, class: tw_("input"), placeholder: "1" %>
```

Instead of this

```HTML
<%= text_input f, :units, class: "placeholder:italic placeholder:text-slate-200 shadow-sm focus:drop-shadow border border-zinc-300 rounded focus:border-indigo-600 focus:ring-0 sm:text-sm", placeholder: "1" %>
```

#### HTML Block
A complete html block is called with <raw>

```HTML
<%= raw tw_("spacer") %>
```

will return this

```HTML
<div class=\"m-6\"></div>
```

Like you  may need some icons in table row like the edit icon or the delete icon

```HTML
<td class={tw_("td")}>
  <div class="flex flex-nowrap space-x-1">
    <div>
      <%= link to: Routes.cashouts_path(@conn, :edit, cashout), class: tw_("a"), title: "Edit this entry" do %>
        <%= raw tw_("table_edit") %>
      <% end %>
    </div>
    <div>
      <%= link to: Routes.cashouts_path(@conn, :delete, cashout), method: :delete, data: [confirm: "Are you sure?"], class: "text-indigo-600 hover:text-indigo-900", title: "Delete this entry" do %>
        <%= raw tw_("table_trash") %>
      <% end %>
    </div>
  </div>
</td>
```

Where it is more readable than this

```HTML
<td class="py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6">
  <div class="flex flex-nowrap space-x-1">
    <div>
      <%= link to: Routes.cashouts_path(@conn, :edit, cashout), class: "text-indigo-600 hover:text-indigo-900", title: "Edit this entry" do %>
        <svg xmlns=\"http://www.w3.org/2000/svg\" class=\"stroke-1 hover:stroke-2 h-4 w-4\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" stroke-width=\"2\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z\" /></svg>
      <% end %>
    </div>
    <div>
      <%= link to: Routes.cashouts_path(@conn, :delete, cashout), method: :delete, data: [confirm: "Are you sure?"], class: "text-indigo-600 hover:text-indigo-900", title: "Delete this entry" do %>
        <svg xmlns=\"http://www.w3.org/2000/svg\" class=\"stroke-1 hover:stroke-2 h-4 w-4\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" stroke-width=\"2\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16\" /></svg>
      <% end %>
    </div>
  </div>
</td>

```

#### Extended à la tailwind
Suppose you need to extend a combo with more classes but don't want to create the combo in the helper file because it is for a specific situation, and there's no need for "code reuse". You can simply add the class after the function with the <> operator.
        
```HTML
<div class={tw_("container-white")}>
  <p class={tw_("note") <> " text-center"}>Hello World</p>
</div>

```
Which is way cleaner than

```HTML
<div class="px-4 py-8 sm:px-6 lg:px-8 rounded-lg bg-slate-200 border-zinc-300 border drop-shadow-md">
  <p class="mt-2 text-sm italic text-gray-700 subpixel-antialiased text-center">Hello World</p>
</div>

```




## prerequisite

https://tailwindcss.com/

https://tailwindcss.com/docs/guides/phoenix
