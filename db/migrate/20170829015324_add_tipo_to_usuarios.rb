class AddTipoToUsuarios < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :tipo, :string
  end
end
