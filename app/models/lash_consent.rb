class LashConsent < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, :birthdate,
    :lash_lift_before, :natural_lashes, :brows_lashes_tinted, :hair_color_allergy, presence: true

    NATURAL_LASHES = [
      'short',
      'long',
      'thick',
      'straight',
      'frail'
    ].freeze

    MEDICAL_PAST_ITEMS = [
      'accutane/retin-a',
      'allergies/watery eyes',
      'allergies to latex',
      'allergies to preservatives in saline solutions',
      'allergies to acrylic nails',
      'allergies to adhesive tape',
      'alopecia',
      'blepharitis',
      'blepharoplasty',
      'breast feeding',
      'cataract',
      'cataract surgey'
    ].freeze

end
