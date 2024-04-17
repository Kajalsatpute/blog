require 'net/ftp'

class FtpDemoController < ApplicationController
  def upload_form
  end

  def upload
    # debugger
    ftp = Net::FTP.new

    # FTP server details (replace with your server information)
    ftp.connect('speedtest.tele2.net.')
    ftp.login('anonymous', 'anonymous')

    # Destination directory on the FTP server
    destination_directory = '/upload'

    # Retrieve uploaded files from the params
    uploaded_files = params[:videos]

    uploaded_files.each do |uploaded_file|
      begin
        # Change to the destination directory on the FTP server
        ftp.chdir(destination_directory)

        # Upload the file
        debugger
        a = ftp.putbinaryfile(uploaded_file.tempfile, uploaded_file.original_filename)
        flash[:notice] = 'Files uploaded successfully!'
        Rails.logger('Files uploaded successfully!')
      rescue => e
        flash[:alert] = "Error uploading files: #{e.message}"
      end
    end

    # Close the FTP connection
    ftp.close

    redirect_to root_path
  end
end
