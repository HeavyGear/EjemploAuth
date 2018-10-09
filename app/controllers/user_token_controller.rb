class UserTokenController < Knock::AuthTokenController
    # Hereda el método que genera el token.
    # La generación del token es transparente para el usuario
        # si la gema KNock se configura adecuadamente.
end
