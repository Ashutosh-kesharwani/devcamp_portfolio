module PortfoliosHelper
  def plural_table_name
    Portfolio.model_name.human(count: :many)
  end
end
