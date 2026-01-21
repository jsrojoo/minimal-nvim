return {
  "obsidian-nvim/obsidian.nvim",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    ui = {
      enable = false,
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
      },
    },
    note_id_func = function(title)
      return title
    end,
    workspaces = {
      {
        name = "work",
        path = "~/Documents/work-notes/",
      },
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {
        yesterday = function()
          return os.date("%Y-%m-%d", os.time() - 86400)
        end,
        standup_yesterday = function()
          local _yesterday = os.date("%Y-%m-%d", os.time() - 86400)

          return _yesterday .. "#" .. _yesterday
        end
      },
    },
    daily_notes = {
      folder = "Daily Notes",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily-notes" },
      template = "daily.md",
    },
    picker = {
      name = "fzf-lua",
    },
    preferred_link_style = "wiki",
    completion = {
      nvim_cmp = false,
      min_chars = 1,
    },
    follow_url_func = function(url)
      vim.fn.jobstart({ "open", url })
    end,
    attachments = {
      img_folder = "media"
    }
  },
}
