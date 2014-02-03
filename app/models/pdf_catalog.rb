class PdfCatalog < ActiveRecord::Base
  attr_accessible :title, :path, :selected_catalog

  has_attached_file :path,url:'/assets/pdf_catalog/:id/pdf_:style.:extension',
                    path:':rails_root/public:url'

  rails_admin do
    navigation_label 'Каталог'
    label 'ПДФ Каталог'
    label_plural 'ПДФ Каталоги'

    list do
      field :title
      field :path
      #field :selected_catalog
    end
    edit do
      field :title
      field :path, :paperclip do
        label ''
        help ''
      end
      #field :selected_catalog
    end
  end
end
