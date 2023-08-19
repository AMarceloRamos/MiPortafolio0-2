class DownloadsController < ApplicationController
    def descargar_archivo
        archivo_path = Rails.root.join('public/Mi_Curriculum.pdf')  # Ruta al archivo
        send_file archivo_path
      end
end
