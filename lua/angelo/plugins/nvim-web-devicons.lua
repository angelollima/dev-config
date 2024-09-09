return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#0088ff",
        cterm_color = "199",
        name = "GraphQL",
      },
    })
  end,
}
