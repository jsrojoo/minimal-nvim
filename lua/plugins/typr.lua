return {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    cmd = { "Typr", "TyprStats" },
    config = function()
        local typr_stats_path = vim.fn.stdpath "data" .. "/typrstats"
        local typr_stats_file = io.open(typr_stats_path, "rb")
        local typr_utils = require "typr.utils"
        local typr_state = require "typr.state"

        if typr_stats_file then
            local typr_stats_data = typr_stats_file:read "*a"
            typr_stats_file:close()

            if not typr_stats_data or typr_stats_data == "" then
                -- Allow Typr to regenerate its stats file instead of crashing on empty files.
                vim.fn.delete(typr_stats_path)
            end
        end

        if not typr_utils._minimal_nvim_patched then
            local typr_count_correct_words = typr_utils.count_correct_words

            typr_utils.count_correct_words = function(...)
                -- Typr divides by state.secs internally, so ensure it is never zero to avoid NaN stats.
                if typr_state.secs <= 0 then
                    typr_state.secs = 1
                end

                return typr_count_correct_words(...)
            end

            typr_utils._minimal_nvim_patched = true
        end

        require("typr").setup {}
    end,
}
