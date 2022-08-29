defmodule BcryptimpotWeb.Helpers.GetTailwind do
	alias BcryptimpotWeb.Router.Helpers, as: Routes

	def tw_(classname) do
		"#{tw_combo(:unique, classname)}"
	end

	defp tw_combo(mode, classname) do

		tw_class = %{
			"classname" =>
			"list of tailwind utility class",

# Forms
# <input class={tw_("input")}>
#	<%= text_input f, :units, class: tw_("input"), placeholder: "1" %>

			"input" =>
			"placeholder:italic placeholder:text-slate-200 shadow-sm focus:drop-shadow border border-zinc-300 rounded focus:border-indigo-600 focus:ring-0 sm:text-sm",

			"input-block" =>
			"shadow-sm focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md",

			"label-block" =>
			"block text-sm font-medium text-gray-700",

			"submit" =>
			"inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md shadow-sm text-white bg-cyan-500 hover:bg-cyan-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-100",

			"button" =>
			"inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md shadow-sm text-white bg-cyan-500 hover:bg-cyan-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-100",

# Elements
# <div class={tw_("container-white")}>

			"barnav" =>
			"border-transparent text-gray-300 hover:bg-gray-700 hover:text-white inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium",

			"container-white" =>
			"px-4 py-8 sm:px-6 lg:px-8 rounded-lg bg-white border-zinc-300 border drop-shadow-md",

			"container-slate" =>
			"px-4 py-8 sm:px-6 lg:px-8 rounded-lg bg-slate-200 border-zinc-300 border drop-shadow-md",

# Tables
			
			"th_first" =>
			"py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6",

			"th" => 
			"hidden px-3 py-3.5 text-right text-sm font-semibold text-gray-900 sm:table-cell",
			
			"th_sticky" =>
			"px-3 py-3.5 text-right text-sm font-semibold text-gray-900",
 
# Typography
# <h1 class={tw_("h1")}>

			"h1" =>
			"text-3xl font-bold text-gray-900",

			"h2" =>
			"text-3xl font-semibold text-gray-900",

			"h3" =>
			"text-xl font-bold text-gray-900",

			"h4" =>
			"text-xl font-semibold text-gray-900",
			"sub-h4" =>
			"mt-2 text-sm text-gray-700",

			"h5" =>
			"text-lg font-bold text-gray-900",

			"h6" =>
			"text-lg font-semibold text-gray-900",

			"lead" =>
			"text-3xl font-extralight text-gray-900",

			"p" =>
			"text-3xl font-extralight text-gray-900",

			"note" =>
			"mt-2 text-sm italic text-gray-700 subpixel-antialiased",

			"inline_link" =>
			"underline cursor-pointer",

# Simple Structure
# <%= raw tw_("spacer") %>
			"spacer" =>
			"<div class=\"m-6\"></div>",

			"table_edit" =>
			"<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"stroke-1 hover:stroke-2 h-4 w-4\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" stroke-width=\"2\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z\" /></svg>",

			"table_trash" =>
			"<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"stroke-1 hover:stroke-2 h-4 w-4\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" stroke-width=\"2\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16\" /></svg>",

		}# End tw_class

		case mode do
			:unique ->
				"#{tw_class[classname]}"
			_ ->
				"inherit"
		end
	end

end
