class Post < ApplicationRecord
  before_save :censurar

  validates :title, presence: { message: 'No puede estar vacío' }
  validates :content, presence: { message: 'No puede estar vacío' }
  validates :image_url, presence: { message: 'No puede estar vacío' }

  private
  def censurar
    palabra_censurada = 'spoiler'
    self.content = self.content.gsub(palabra_censurada, "")
  end
end
