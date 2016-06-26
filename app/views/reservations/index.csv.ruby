require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(名前 予約開始日時 予約終了日時)
  csv << csv_column_names
  @reservations.each do |reservation|
    csv_column_values = [
      reservation.name,
      reservation.start_datetime,
      reservation.end_datetime
    ]
    csv << csv_column_values
  end
end
