defmodule BcryptimpotWeb.Helpers.GetTailwind do
  @moduledoc """
  Tailwind css presets
  """

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
#  <%= text_input f, :units, class: tw_("input"), placeholder: "1" %>

      "button" =>
      "inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md shadow-sm text-white bg-cyan-500 hover:bg-cyan-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-100",

      "button_full" =>
      "w-full px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md shadow-sm text-white bg-cyan-500 hover:bg-cyan-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-100",

      "input" =>
      "placeholder:italic placeholder:text-slate-200 shadow-sm focus:drop-shadow border border-zinc-300 rounded focus:border-indigo-600 focus:ring-0 sm:text-sm",

      "input-block" =>
      "shadow-sm focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md",

      "input-checkbox" =>
      "focus:ring-indigo-500 focus:border-indigo-500 border-gray-900 rounded m-2 mb-3",

      "label-block" =>
      "block text-sm font-medium text-gray-700",

      "submit" =>
      "inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md shadow-sm text-white bg-cyan-500 hover:bg-cyan-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-100",


# Elements
# <div class={tw_("container-white")}>

      "barnav" =>
      "border-transparent text-gray-300 hover:bg-gray-700 hover:text-white inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium",

      "container-white" =>
      "x-4 py-8 sm:px-6 lg:px-8 rounded-lg bg-white border-zinc-300 border drop-shadow-md",

      "container-slate" =>
      "px-4 py-8 sm:px-6 lg:px-8 rounded-lg bg-slate-200 border-zinc-300 border drop-shadow-md",

# Tables

      "th_first" =>
      "py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6",

      "th" =>
      "hidden px-3 py-3.5 text-right text-sm font-semibold text-gray-900 sm:table-cell",

      "th_sticky" =>
      "px-3 py-3.5 text-right text-sm font-semibold text-gray-900",

      "td_first" =>
      "-full max-w-0 py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:w-auto sm:max-w-none sm:pl-6",

      "td_wrapped" =>
      "hidden px-3 py-4 text-right text-sm text-gray-500 sm:table-cell",

      "td" =>
      "px-3 py-4 text-right text-sm text-gray-500",


# Typography
# <h1 class={tw_("h1")}>

      "a" =>
      "text-indigo-600 hover:text-indigo-900",

      "inline_link" =>
      "underline cursor-pointer",

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

      "note" =>
      "mt-2 text-sm italic text-gray-700 subpixel-antialiased",

      "lead" =>
      "text-3xl font-extralight text-gray-900",

      "intro" =>
      "text-2xl font-extralight text-gray-900",

      "loud" =>
      "text-3xl font-bold text-gray-900",

      "hero" =>
      "text-5xl font-extralight text-gray-900 leading-normal",

      "p" =>
      "text font-extralight text-gray-900",



# Simple Structure
# <%= raw tw_("spacer") %>
      "spacer" =>
      "<div class=\"m-6\"></div>",

      "spacer_inter" =>
      "<div class=\"m-9\"></div>",

      "spacer_double" =>
      "<div class=\"m-12\"></div>",

      "table_edit" =>
      "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"stroke-1 hover:stroke-2 h-4 w-4\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" stroke-width=\"2\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z\" />
      </svg>",

      "table_trash" =>
      "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"stroke-1 hover:stroke-2 h-4 w-4\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" stroke-width=\"2\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16\" />
      </svg>",

      # Sections sidebar icons
      "section_dashboard" =>
      "<svg class=\"text-gray-300 mr-3 flex-shrink-0 h-6 w-6\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" aria-hidden=\"true\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M7.5 14.25v2.25m3-4.5v4.5m3-6.75v6.75m3-9v9M6 20.25h12A2.25 2.25 0 0020.25 18V6A2.25 2.25 0 0018 3.75H6A2.25 2.25 0 003.75 6v12A2.25 2.25 0 006 20.25z\" />
      </svg>",

      "section_imports" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"  fill=\"none\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z\" clip-rule=\"evenodd\" />
      </svg>",

      "section_cashouts" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" fill=\"none\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-4.28 9.22a.75.75 0 000 1.06l3 3a.75.75 0 101.06-1.06l-1.72-1.72h5.69a.75.75 0 000-1.5h-5.69l1.72-1.72a.75.75 0 00-1.06-1.06l-3 3z\" clip-rule=\"evenodd\" />
      </svg>",

      "section_report" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\ xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" aria-hidden=\"true\">
        <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM9.75 17.25a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-.75zm2.25-3a.75.75 0 01.75.75v3a.75.75 0 01-1.5 0v-3a.75.75 0 01.75-.75zm3.75-1.5a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-5.25z\" clip-rule=\"evenodd\" />
        <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\" />
      </svg>",

      "section_move" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"  fill=\"none\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M21 12a2.25 2.25 0 00-2.25-2.25H15a3 3 0 11-6 0H5.25A2.25 2.25 0 003 12m18 0v6a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 18v-6m18 0V9M3 12V9m18 0a2.25 2.25 0 00-2.25-2.25H5.25A2.25 2.25 0 003 9m18 0V6a2.25 2.25 0 00-2.25-2.25H5.25A2.25 2.25 0 003 6v3\" />
      </svg>",

      "section_income" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"  fill=\"none\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z\" />0
      </svg>",

      "section_exchange" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"  fill=\"none\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M7.5 21L3 16.5m0 0L7.5 12M3 16.5h13.5m0-13.5L21 7.5m0 0L16.5 12M21 7.5H7.5\" />
      </svg>",

      "section_airdrop" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"  fill=\"none\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M15.59 14.37a6 6 0 01-5.84 7.38v-4.8m5.84-2.58a14.98 14.98 0 006.16-12.12A14.98 14.98 0 009.631 8.41m5.96 5.96a14.926 14.926 0 01-5.841 2.58m-.119-8.54a6 6 0 00-7.381 5.84h4.8m2.581-5.84a14.927 14.927 0 00-2.58 5.84m2.699 2.7c-.103.021-.207.041-.311.06a15.09 15.09 0 01-2.448-2.448 14.9 14.9 0 01.06-.312m-2.24 2.39a4.493 4.493 0 00-1.757 4.306 4.493 4.493 0 004.306-1.758M16.5 9a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z\" />
      </svg>",

      "section_logout" =>
      "<svg  class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M5.636 5.636a9 9 0 1012.728 0M12 3v9\" />
      </svg>",

      "section_settings" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M9.594 3.94c.09-.542.56-.94 1.11-.94h2.593c.55 0 1.02.398 1.11.94l.213 1.281c.063.374.313.686.645.87.074.04.147.083.22.127.324.196.72.257 1.075.124l1.217-.456a1.125 1.125 0 011.37.49l1.296 2.247a1.125 1.125 0 01-.26 1.431l-1.003.827c-.293.24-.438.613-.431.992a6.759 6.759 0 010 .255c-.007.378.138.75.43.99l1.005.828c.424.35.534.954.26 1.43l-1.298 2.247a1.125 1.125 0 01-1.369.491l-1.217-.456c-.355-.133-.75-.072-1.076.124a6.57 6.57 0 01-.22.128c-.331.183-.581.495-.644.869l-.213 1.28c-.09.543-.56.941-1.11.941h-2.594c-.55 0-1.02-.398-1.11-.94l-.213-1.281c-.062-.374-.312-.686-.644-.87a6.52 6.52 0 01-.22-.127c-.325-.196-.72-.257-1.076-.124l-1.217.456a1.125 1.125 0 01-1.369-.49l-1.297-2.247a1.125 1.125 0 01.26-1.431l1.004-.827c.292-.24.437-.613.43-.992a6.932 6.932 0 010-.255c.007-.378-.138-.75-.43-.99l-1.004-.828a1.125 1.125 0 01-.26-1.43l1.297-2.247a1.125 1.125 0 011.37-.491l1.216.456c.356.133.751.072 1.076-.124.072-.044.146-.087.22-.128.332-.183.582-.495.644-.869l.214-1.281z\" />
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M15 12a3 3 0 11-6 0 3 3 0 016 0z\" />
      </svg>",

      "section_upgrade" =>
      "<svg class=\"mr-3 flex-shrink-0 w-6 h-6\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M13.5 21v-7.5a.75.75 0 01.75-.75h3a.75.75 0 01.75.75V21m-4.5 0H2.36m11.14 0H18m0 0h3.64m-1.39 0V9.349m-16.5 11.65V9.35m0 0a3.001 3.001 0 003.75-.615A2.993 2.993 0 009.75 9.75c.896 0 1.7-.393 2.25-1.016a2.993 2.993 0 002.25 1.016c.896 0 1.7-.393 2.25-1.016a3.001 3.001 0 003.75.614m-16.5 0a3.004 3.004 0 01-.621-4.72L4.318 3.44A1.5 1.5 0 015.378 3h13.243a1.5 1.5 0 011.06.44l1.19 1.189a3 3 0 01-.621 4.72m-13.5 8.65h3.75a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75H6.75a.75.75 0 00-.75.75v3.75c0 .415.336.75.75.75z\" />
      </svg>",


      "star" =>
      "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" fill=\"currentColor\" class=\"flex-shrink-0 w-6 h-6 m-2 text-yellow-300\">
        <path fill-rule=\"evenodd\" d=\"M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z\" clip-rule=\"evenodd\" />
      </svg>",

      "ellipsis" =>
      "<svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" class=\"w-6 h-6\">
        <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M6.75 12a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM12.75 12a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM18.75 12a.75.75 0 11-1.5 0 .75.75 0 011.5 0z\" />
      </svg>"


    }# End tw_class

    case mode do
      :unique ->
        "#{tw_class[classname]}"
      _ ->
        "inherit"
    end
  end

end
