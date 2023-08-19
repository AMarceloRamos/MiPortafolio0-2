class NotificationJob < ApplicationJob
    queue_as :default
  
    def perform
      new_entries = ContactForm.where(notified: false)
      return if new_entries.empty?
  
      new_entries.each do |entry|
        # Aquí puedes configurar el envío de correo electrónico
        # utilizando la gema 'mail' u otra forma de notificación.
        # Por ejemplo, enviar un correo electrónico a tu dirección.
        ContactMailer.new_form_submission(entry).deliver_now
  
        # Marcar el registro como notificado
        entry.update(notified: true)
      end
    end
  end
  