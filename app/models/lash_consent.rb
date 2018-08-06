class LashConsent < ApplicationRecord

  validates :first_name, :last_name, :birthdate, presence: true
  validates :email, :phone, presence: true
  validates :natural_lashes, presence: true
  validates :lash_lift_before, :brows_lashes_tinted, :hair_color_allergy, inclusion: {in: [true, false]}
  validates :consent, inclusion: {in: [true]}

  before_create :add_consent_timestamp

  def add_consent_timestamp
    self.consent_timestamp = Time.now
  end

    NATURAL_LASHES = [
      'Short',
      'Long',
      'Thick',
      'Straight',
      'Frail'
    ].freeze

    MEDICAL_HISTORY_ITEMS = [
      'Accutane/Retin-a',
      'Allergies/Watery eyes',
      'Allergies to latex',
      'Allergies to preservatives in saline solutions',
      'Allergies to acrylic nails',
      'Allergies to adhesive tape',
      'Alopecia',
      'Blepharitis',
      'Blepharoplasty',
      'Breast feeding',
      'Cataract',
      'Cataract surgey',
      'Claustriphobia',
      'Conjunctivitis contact lenses',
      'Chemotherapy/radiation within the past 6 months',
      'Compulsive eyelash pulling',
      'Dry eye syndrome/sjorges syndrome',
      'Diabetic retinopathy',
      'Eczema/psorasis',
      'Estremely oily skin',
      'Glaucoma',
      'Irritated/broken skin',
      'Lash loss',
      'Lasik eye surgery',
      'Permanent make up',
      'Pink eye/sty',
      'Pregnant',
      'Recent medical treatment to the eye, lids, or duct',
      'Recent chemical peels',
      'Sensitive skin',
      'Thyroid medications'
    ].freeze

end
