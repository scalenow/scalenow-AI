# Define tool details in a single place
AI_TOOLS = {
  # "openinterpreter" => {
  #   display_name: "Interaction with LLM (Coming Soon)",
  #   url: "https://www.scalenowai.com.au:8501",
  #   plans: ["Basic", "Professional", "Enterprise"]
  # },
  "document_analysis" => {
    display_name: "AI Agent Experience",
    url: "https://agents.scalenowai.com.au",
    plans: ["Basic", "Professional", "Enterprise"]
  }
  # "nlp" => {
  #   display_name: "AI Agent NLP",
  #   url: "https://www.scalenowai.com.au/nlp.html",
  #   plans: ["Professional", "Enterprise"]
  # }
}.freeze

PLATFORM_TOOLS = {
  "nextcloud" => {
    display_name: "drive",
    url: "https://drive.scalenowai.com.au/index.php/apps/user_oidc/login/1"
  },

  "wiki" => {
    display_name: "Wiki",
    url: "https://www.scalenowai.com.au:9001/xwiki/bin/view/Main/"
  },

  "training" => {
    display_name: "Training",
    url: "https://www.scalenowai.com.au:4000/my/"
  }
}.freeze

ALL_TOOLS = AI_TOOLS.merge(PLATFORM_TOOLS).freeze
