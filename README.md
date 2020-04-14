# elixir-phoenix-helpers

Collection of Helpers to clean the mess of HTML integration

## Bootstrap Icons
Shortcut to access all Bootstraps' svg icon

### Installation
1) Create a folder named "Helpers" Phoenix_web/
2) Add in /lib/phoenix_web.ex
```
def view do
....
  # near after the list of imports
  # Make sure to replace PhoenixWeb by the name of your project.
  alias PhoenixWeb.Router.Helpers, as: Routes # if not already there
  import PhoenixWeb.Helpers.GetSvgicons 
...
end
```

#### Usage
In your HTML Template where you need an icon add
```
<a href="">Some Text followed by the carret <%=  raw get_svgicon("bi bi-caret-right-fill") %></a>
```
Instead of this
```
<a href="">Some Text followed by the carret <svg class="bi bi-caret-right-fill" 
width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
<path d="M12.14 8.753l-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 011.659-.753l5.48 4.796a1 1 0 010 1.506z"/>
</svg></a>

```
Which keep your html template cleaner and easy to read.
It also prevent visitors to load all unused icons when it is linked in .css or .js

#### Browse All Icons
In your HTML Template where you need an icon add
```
<div class="container-fluid">
		<% #see Helpers.GetSvgicons %>
			<%= raw get_svgallicons() %>
</div>
```
## prerequisite
https://getbootstrap.com/
Originals https://icons.getbootstrap.com/

