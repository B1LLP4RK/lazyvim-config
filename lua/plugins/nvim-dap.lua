return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function(_, opts)
      -- This function receives the merged opts from all previous configs
      -- including the extras, so we can override them here

      local dap = require("dap")

      ---@param adapter_config table
      ---@return table
      ---
      local function fix_executable_command(adapter_config)
        if type(adapter_config) == "table" then
          -- Handle type = "executable" with direct command
          if adapter_config.type == "executable" and type(adapter_config.command) == "string" then
            local resolved = vim.fn.exepath(adapter_config.command)
            if resolved ~= "" then
              adapter_config.command = resolved
            end
          end
          -- Handle type = "server" with executable.command
          if adapter_config.type == "server" and adapter_config.executable then
            if type(adapter_config.executable.command) == "string" then
              local resolved = vim.fn.exepath(adapter_config.executable.command)
              if resolved ~= "" then
                adapter_config.executable.command = resolved
              end
            end
          end
        end
        return adapter_config
      end
      for adapter_name, adapter_config in pairs(dap.adapters or {}) do
        -- Handle both direct table configs and function configs
        if type(adapter_config) == "table" then
          dap.adapters[adapter_name] = fix_executable_command(adapter_config)
        elseif type(adapter_config) == "function" then
          -- Wrap function adapters to fix the config when they're called
          local original_func = adapter_config
          dap.adapters[adapter_name] = function(callback, config)
            original_func(function(resolved_adapter)
              callback(fix_executable_command(resolved_adapter))
            end, config)
          end
        end
      end

      return opts
    end,
  },
}
