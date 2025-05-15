return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false, -- Never set this value to "*"! Never!
  opts = {
    provider = 'copilot',
    auto_suggestions_provider = 'copilot',
    copilot = {
      --model = 'gemini-2.0-flash-001',
      model = 'claude-3.7-sonnet',
    },
    openai = {
      endpoint = 'https://api.githubcopilot.com',
      --model = 'claude-3.5-sonnet',
      model = 'claude-3.7-sonnet',
      timeout = 30000,
      temperature = 0,
      max_tokens = 4096,
      -- reasoning_effort = "high" -- only for thinking models (o1, itd.)
    },
  },
  build = 'make',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'zbirenbaum/copilot.lua',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
