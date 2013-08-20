class CalculadorPesoController < ApplicationController
  def index
    @result = ''
  end
  def calculate
   
    if   params[:alt] != nil
   
 	if params[:unidadaltura].to_f == 1 	
      if params[:unidadi].to_f == 1
        if params[:unidadr].to_f == 1
          if params[:met].to_f == 1
            @result = "femenino kg BMI cm " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (100.1 + 5.06*((params[:alt].to_f*					0.393700787)-60))*0.45359237

          elsif params[:met].to_f == 3

            @result = (107.8 + 3.74*((params[:alt].to_f*					0.393700787)-60))*0.45359237

          elsif params[:met].to_f == 4
            @result = "femenino kg Miller cm " + params[:alt]
          end
        elsif params[:unidadr].to_f == 2
          if params[:met].to_f == 1
            @result = "femenino Lb BMI cm " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (100.1 + 5.06*((params[:alt].to_f*					0.393700787)-60))

          elsif params[:met].to_f == 3

            @result = (107.8 + 3.74*((params[:alt].to_f*					0.393700787)-60))

          elsif params[:met].to_f == 4
            @result = "femenino Lb Miller cm " + params[:alt]
          end
        end
      elsif params[:unidadi].to_f == 2
        if params[:unidadr].to_f == 1
      
          if params[:met].to_f == 1
            @result = "Masculino kg BMI cm " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (110 + 5.06*((params[:alt].to_f*					0.3937007870787)-60))*0.45359237

          elsif params[:met].to_f == 3

            @result = (114.4 + 4.18*((params[:alt].to_f*					0.393700787)-60))*0.45359237

          elsif params[:met].to_f == 4
            @result = "Masculino kg Miller cm " + params[:alt]
          end
        elsif params[:unidadr].to_f == 2
          if params[:met].to_f == 1
            @result = "Masculino Lb BMI cm " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (110 + 5.06*((params[:alt].to_f*					0.393700787)-60))

          elsif params[:met].to_f == 3

            @result = (114.4 + 4.18*((params[:alt].to_f*					0.393700787)-60))

          elsif params[:met].to_f == 4
            @result = "Masculino Lb Miller cm " + params[:alt]
          end
       
        end
      end
 	else if params[:unidadaltura].to_f == 2 	
      if params[:unidadi].to_f == 1
        if params[:unidadr].to_f == 1
          if params[:met].to_f == 1
            @result = "femenino kg BMI pulg " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (100.1 + 5.06*((params[:alt].to_f)-60))*
			0.45359237

          elsif params[:met].to_f == 3

            @result = (107.8 + 3.74*((params[:alt].to_f)-60))*				0.45359237

          elsif params[:met].to_f == 4
            @result = "femenino kg Miller pulg " + params[:alt]
          end
        elsif params[:unidadr].to_f == 2
          if params[:met].to_f == 1
            @result = "femenino Lb BMI pulg " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (100.1 + 5.06*((params[:alt].to_f)-60))

          elsif params[:met].to_f == 3

            @result = (107.8 + 3.74*((params[:alt].to_f)-60))

          elsif params[:met].to_f == 4
            @result = "femenino Lb Miller pulg " + params[:alt]
          end
        end
      elsif params[:unidadi].to_f == 2
        if params[:unidadr].to_f == 1
      
          if params[:met].to_f == 1
            @result = "Masculino kg BMI pulg " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (110 + 5.06*((params[:alt].to_f)-60))*				0.45359237

          elsif params[:met].to_f == 3

            @result = (114.4 + 4.18*((params[:alt].to_f)-60))*				0.45359237

          elsif params[:met].to_f == 4
            @result = "Masculino kg Miller pulg " + params[:alt]
          end
        elsif params[:unidadr].to_f == 2
          if params[:met].to_f == 1
            @result = "Masculino Lb BMI pulg " + params[:alt]
          elsif params[:met].to_f == 2

            @result = (110 + 5.06*((params[:alt].to_f)-60))

          elsif params[:met].to_f == 3

            @result = (114.4 + 4.18*((params[:alt].to_f)-60))

          elsif params[:met].to_f == 4
            @result = "Masculino Lb Miller pulg " + params[:alt]
          end
        end
      end
	end
	end
    end
    render :action => :index
    
  end
end