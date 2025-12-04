return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      dap.listeners.after.event_initialized.dapui_config = function() dapui.open() end
      dap.listeners.before.attach.dapui_config = function() dapui.open() end
      dap.listeners.before.launch.dapui_config = function() dapui.open() end
      dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
      dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

      vim.fn.sign_define("DapBreakpoint", { text = "" })


      dap.adapters.coreclr = {
        type = "executable",
        command = "/usr/bin/netcoredbg",
        args = { "--interpreter=vscode" }
      }

      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end,

        },
      }

      dap.adapters.gdb = {
        id = 'gdb',
        type = 'executable',
        command = 'gdb',
        args = { '--quiet', '--interpreter=dap' },
      }

      dap.configurations.c = {
        {
          name = 'Run executable (GDB)',
          type = 'gdb',
          request = 'launch',
          program = function()
            local path = vim.fn.input({
              prompt = 'Path to executable: ',
              default = vim.fn.getcwd() .. '/',
              completion = 'file',
            })
            return (path and path ~= '') and path or dap.ABORT
          end,
        },
        {
          name = 'Run executable with arguments (GDB)',
          type = 'gdb',
          request = 'launch',
          program = function()
            local path = vim.fn.input({
              prompt = 'Path to executable: ',
              default = vim.fn.getcwd() .. '/',
              completion = 'file',
            })

            return (path and path ~= '') and path or dap.ABORT
          end,
          args = function()
            local args_str = vim.fn.input({
              prompt = 'Arguments: ',
            })
            return vim.split(args_str, ' +')
          end,
        },
        {
          name = 'Attach to process (GDB)',
          type = 'gdb',
          request = 'attach',
          processId = require('dap.utils').pick_process,
        },
      }
      dap.configurations.cpp = dap.configurations.c

      local keys = {
        { "<F5>",  function() require("dap").continue() end,        desc = "DAP Continue" },
        { "<F10>", function() require("dap").step_over() end,       desc = "DAP Step Over" },
        { "<F11>", function() require("dap").step_into() end,       desc = "DAP Step Into" },
        { "<F12>", function() require("dap").step_out() end,        desc = "DAP Step Out" },
        { "<Leader>b", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
        { "<Leader>du", function() require("dapui").toggle() end, desc = "DAP UI Toggle" },
      }

      for _, m in ipairs(keys) do
        vim.keymap.set("n", m[1], m[2], { desc = m.desc })
      end
    end,
  },
}

