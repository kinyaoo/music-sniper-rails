class AudioFile < ApplicationRecord
  include FileStorage
  include ProjectAttachable
  include Commentable
  include FolderContent
  acts_as_paranoid

  include BelongsToUser
  belongs_to :user, inverse_of: :audio_files

  has_one_attached :attached_file
  has_many :clips, inverse_of: :audio_file

  def url
    calculate_url(attached_file)
  end

  def content_type
    attached_file.attachment.blob.content_type
  end

end
