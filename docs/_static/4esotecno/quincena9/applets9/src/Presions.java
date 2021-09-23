/**
 * @(#)Presions.java
 *
 * Sample Applet application
 *
 * @author 
 * @version 1.00 10/07/02
 */
 
import java.awt.*;
import java.applet.*;
import java.awt.event.*;





public class Presions extends Applet {
	
	
   // Botones
     Button okButton; 
     Button clButton;
  // Etiquetas
        Label entrada;
        Label saida;
 // Campos para introducir valorest 
     TextField ventrada;
     TextField vsaida;
      
 // Grupo de botones de entrada/salida necesarios uno solo escogido. 
     CheckboxGroup radioGroupe; 
     CheckboxGroup radioGroups; 
 // Botones de radio
     Checkbox radio1,radio2,radio3,radio4,radio5;
     Checkbox radio6,radio7,radio8,radio9,radio10;
       
           
	 public void init() {
	 
	 // Color de fondo y no layout.Escogemos tamaño ventana
        setLayout(null); 
        setBackground(Color.cyan);	 
	 	resize(250,250);
	 	
  // Creamos los botones 
        okButton = new Button("Convertir"); 
        clButton = new Button("Limpiar");
        
   // Creamos etiquetas
        entrada = new Label("Valor de entrada");
        saida = new Label ("Valor de saida");
        entrada.setBackground(Color.red);
        saida.setBackground(Color.blue);
        
  // Creamos grupos de radio
          radioGroupe = new CheckboxGroup(); 
          radioGroups = new CheckboxGroup(); 
          
  // Inicializar componentes
  
        ventrada = new TextField("1",100); 
        vsaida = new TextField("1",100);
        vsaida.setEditable(false);
        escuchador escuchaAccion = new escuchador(); //creamos un objeto escuchador, que recibira los eventos
		clButton.addActionListener(escuchaAccion);	// lo asociamos al boton de limpiar
        escuchador escuchaAccion1 = new escuchador(); //creamos un objeto escuchador, que recibira los eventos
		okButton.addActionListener(escuchaAccion1);	// lo asociamos al boton convertir

        
  
  // Creamos radios	 
          radio1 = new Checkbox("Pa", radioGroupe,true); 
          radio2 = new Checkbox("Atm", radioGroupe,false); 
          radio3 = new Checkbox("Bar", radioGroupe,false); 
          radio4 = new Checkbox("Kgf/cm2", radioGroupe,false); 
          radio5 = new Checkbox("Psi", radioGroupe,false); 
          radio6 = new Checkbox("Pa", radioGroups,true); 
          radio7 = new Checkbox("Atm", radioGroups,false); 
          radio8 = new Checkbox("Bar", radioGroups,false); 
          radio9 = new Checkbox("Kgf/cm2", radioGroups,false); 
          radio10 = new Checkbox("Psi", radioGroups,false); 
          
    // Colocamos componentes y le asignamos dimensiones(ancho y alto). 
          entrada.setBounds(20,20,100,30);
          saida.setBounds(120,20,100,30);
          ventrada.setBounds(20,50,100,20); 
          vsaida.setBounds(120,50,100,20); 
          radio1.setBounds(20,70,70,30); 
          radio2.setBounds(20,95,70,30); 
          radio3.setBounds(20,120,70,30);
          radio4.setBounds(20,145,70,30);
          radio5.setBounds(20,170,70,30);
          radio6.setBounds(120,70,70,30); 
          radio7.setBounds(120,95,70,30); 
          radio8.setBounds(120,120,70,30);
          radio9.setBounds(120,145,70,30);
          radio10.setBounds(120,170,70,30);
          okButton.setBounds(20,195,100,20); 
          clButton.setBounds(120,195,100,20);
          
  // Añadimos los elementos al applet 
      add(okButton);
      add(clButton);
      add(entrada);
      add(saida); 
      add(ventrada); 
      add(vsaida);
      add(radio1); 
      add(radio2); 
      add(radio3); 
      add(radio4); 
      add(radio5); 
      add(radio6); 
      add(radio7); 
      add(radio8); 
      add(radio9); 
      add(radio10); 
       
     } 
     
     
class escuchador implements ActionListener {
    
	int ne,ns; //Valores que me indican los radio buttons seleccionados
	
	void obtenEstado(){
		
		if (radio1.getState()) ne=0;
		else if(radio2.getState()) ne=1;
		else if(radio3.getState()) ne=2;
		else if(radio4.getState()) ne=3;
		else if(radio5.getState()) ne=4;
		
		if (radio6.getState()) ns=0;
		else if(radio7.getState()) ns=1;
		else if(radio8.getState()) ns=2;
		else if(radio9.getState()) ns=3;
		else if(radio10.getState()) ns=4;
		
		
		
	}
	
	void metodoBotonClear() {
		vsaida.setText("1"); //Colocamos presiones a 1
		ventrada.setText("1");
		radio1.setState(true);
		radio6.setState(true);
	 }
	 
	void metodoBotonConvertir() {
		try {
						
			double op1= Double.parseDouble(ventrada.getText());
			obtenEstado();
			switch (ne) {
			
				case (0): // Presion  entrada Pascales                   
						switch(ns){
									case(0):// Presión salida Pascales
						
										vsaida.setText(ventrada.getText());
										break;
										
									case(1): // Presion salida atmósferas
									
										vsaida.setText(String.valueOf(op1*(0.987e-5)));
										break;
										
									case(2): // Presion salida Bares
									
										vsaida.setText(String.valueOf(op1*(1e-5)));
										break;
										
								 	case(3): // Presion salida kgf/cm2
									
										vsaida.setText(String.valueOf(op1*(1.02010e-5)));
										break;
										
									case(4): // Presion salida psi
									
										vsaida.setText(String.valueOf(op1*(0.145e-5)));
										break;
						}
						break;
						
						
				case (1): // Presion  entrada Atmósferas                   
						
						switch(ns){
									case(0):// Presión salida Pascales
						
										vsaida.setText(String.valueOf(op1*(1.013e5)));
										break;
										
									case(1): // Presion salida atmósferas
									
										vsaida.setText(ventrada.getText());
										break;
										
									case(2): // Presion salida Bares
									
										vsaida.setText(String.valueOf(op1*(1.013)));
										break;
										
								 	case(3): // Presion salida kgf/cm2
									
										vsaida.setText(String.valueOf(op1*(1.033)));
										break;
										
									case(4): // Presion salida psi
									
										vsaida.setText(String.valueOf(op1*(14.6959)));
										break;
						}
						break;	
						
						case (2): // Presion  entrada Bares                 
						
						switch(ns){
									case(0):// Presión salida Pascales
						
										vsaida.setText(String.valueOf(op1*(1e5)));
										break;
										
									case(1): // Presion salida atmósferas
									
										vsaida.setText(String.valueOf(op1*(0.9879)));
										break;
										
									case(2): // Presion salida Bares
									
										vsaida.setText(ventrada.getText());
										break;
										
								 	case(3): // Presion salida kgf/cm2
									
										vsaida.setText(String.valueOf(op1*(1.020)));
										break;
										
									case(4): // Presion salida psi
									
										vsaida.setText(String.valueOf(op1*(14.50)));
										break;
						}
						break;	
						
						case (3): // Presion  entrada kgf/cm2                
						
						switch(ns){
									case(0):// Presión salida Pascales
						
										vsaida.setText(String.valueOf(op1*(0.98e5)));
										break;
										
									case(1): // Presion salida atmósferas
									
										vsaida.setText(String.valueOf(op1*(0.9678)));
										break;
										
									case(2): // Presion salida Bares
									
										vsaida.setText(String.valueOf(op1*(0.987)));
										break;
										
								 	case(3): // Presion salida kgf/cm2
									
										vsaida.setText(ventrada.getText());
										break;
										
									case(4): // Presion salida psi
									
										vsaida.setText(String.valueOf(op1*(14.2233)));
										break;
						}
						break;				
						
						
						case (4): // Presion  entrada psi                
						
						switch(ns){
									case(0):// Presión salida Pascales
						
										vsaida.setText(String.valueOf(op1*(6.894e3)));
										break;
										
									case(1): // Presion salida atmósferas
									
										vsaida.setText(String.valueOf(op1*(68.046e-3)));
										break;
										
									case(2): // Presion salida Bares
									
										vsaida.setText(String.valueOf(op1*(68.948e-3)));
										break;
										
								 	case(3): // Presion salida kgf/cm2
									
										vsaida.setText(String.valueOf(op1*(703.068)));
										break;
										
									case(4): // Presion salida psi
									
										vsaida.setText(ventrada.getText());
										break;
						}
						break;	
						
			
			}
			
			
		 }
             
         catch (java.lang.NumberFormatException e) {
			vsaida.setText( "Error" );			
	     
	 }
	 
	}
    public void actionPerformed( ActionEvent evt ) {
        
			Object object = evt.getSource(); //cogemos el objeto que ha recibido el evento
			if (object == clButton) metodoBotonClear();  //si el objeto es el boton de cl llamamos al metodo que borrar el texto
			else  if (object == okButton) metodoBotonConvertir();// si objeto botón ok convertimos

    }


	     
}
}

