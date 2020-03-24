import UIKit

enum Velocidades: Int {
    case Apagago=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120
    
    init( velocidadInicial: Velocidades){
        self=velocidadInicial
    }
}

class Auto{
   
    var velocidad: Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagago)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
       
        switch velocidad {
        case .VelocidadBaja:
            velocidad=Velocidades.VelocidadMedia
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
        case .VelocidadMedia:
            velocidad=Velocidades.VelocidadAlta
            return(Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        case .VelocidadAlta:
            velocidad=Velocidades.VelocidadMedia
            return(Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
        default:
             velocidad=Velocidades.VelocidadBaja
             return (Velocidades.Apagago.rawValue, "Apagado")
    
            
        }
        
    }
    
  
}

var auto = Auto()
 for i in 0..<20{
    let tupla : ( actual : Int, velocidadEnCadena: String)  = auto.cambioDeVelocidad( );
    print("\(tupla.actual) , \(tupla.velocidadEnCadena)")
      
  }
