ActiveAdmin.register_page 'Dashboard' do

  menu priority: 1, label: 'Panel Principal'

  content title: 'Panel Principal' do
    columns do
      column do
        panel 'Denuncias Recientes' do
          table_for Denuncia.last(10) do
            column :pais
            column('Delito') { |denuncia| denuncia.delito.nombre.truncate 50 }
            column :created_at
          end
        end

      end
      column do

      end
    end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
