class ContactMailer < ApplicationMailer

        def new_form_submission(entry)
          @entry = entry
          mail(to: 'adrianramosv@gmail.com', subject: 'Nuevo formulario de contacto')
        end
end
