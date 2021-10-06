class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_usuario, numero_cuenta)
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
    end

    
    def error
        if m = "#{numero_cuenta}"
             puts "#{numero_cuenta}" 
        else
            raise "Error"
        end
    end
end
