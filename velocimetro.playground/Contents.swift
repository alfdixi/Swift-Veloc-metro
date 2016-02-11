/**
 * Velocimetro
 * @Autor José Alfredo Castillejos Sánchez
*/
import UIKit
// --> Enumeración Velocidad
enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    init( velocidadInicial : Velocidades ){
        self = .Apagado
    }
}
// --> Clase Auto
class Auto{
    var velocidad : Velocidades
    init(){
        self.velocidad = Velocidades.Apagado
    }
    func cambioDeVelocidad()  -> ( actual : Int, velocidadEnCadena: String){
        var respuesta  : (actual : Int, velocidadEnCadena: String)
        switch velocidad{
            case .Apagado:
                respuesta = (Velocidades.Apagado.rawValue, "Apagado")
                self.velocidad = Velocidades.VelocidadBaja
            case .VelocidadBaja:
                respuesta = (Velocidades.VelocidadBaja.rawValue, "VelocidadBaja")
            self.velocidad = Velocidades.VelocidadMedia
            case .VelocidadMedia:
                respuesta = (Velocidades.VelocidadMedia.rawValue, "VelocidadMedia")
            self.velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            respuesta = (Velocidades.VelocidadAlta.rawValue, "VelocidadAlta")
            self.velocidad = Velocidades.VelocidadMedia
        }
        return respuesta
    }
}
// --> Instancia de la clase Auto
var auto = Auto()
// --> iterando 20 veces el método cambioDeVelocidad
for var i in  1...20 {
    var (velo,texto) = auto.cambioDeVelocidad()
    print ("\(i). \(velo), \(texto)")
}