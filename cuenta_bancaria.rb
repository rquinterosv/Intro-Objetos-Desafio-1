class CuentaBancaria
    attr_accessor :nombre_de_usuario

    def initialize (nombre_usuario, numero_cuenta, tipo_cuenta = 0)
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @tipo_cuenta = tipo_cuenta

        if numero_cuenta.to_s.length !=8
            raise RangeError
        end
    end

    def numero_de_cuenta
        if @tipo_cuenta == 1
            return "1-#{@numero_cuenta}"
        else
            return "0-#{@numero_cuenta}"
        end
    end
end

c1 = CuentaBancaria.new("Rafael", 12345678)
c2 = CuentaBancaria.new("Ignacio", 23456789, 1)

puts c1.numero_de_cuenta
puts c2.numero_de_cuenta