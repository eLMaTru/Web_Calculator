

<!DOCTYPE HTML>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/style.css" >
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>WebCalculator.net</title>
    </head>
    <body style="background-image: url('img/bg.jpg');">
    
    
        <header>
        
        </header>
        
        <!-- Navigation -->
    <nav>
           
    </nav>
    
    <div id="calculatorBox">
    
        <div id="displayBox"><tr> <td> <input id="display" type="text" disabled="disabled"></input> </td> </tr> <!-- pantalla --> </div>
        
        <div id="buttonsBox">
        
        <form name="form" id="form" action="Calculation_Controller" method="post">
        
        <table id="table">
        
        <tr class="row"> <!-- fila 1 -->
        
        <td> <button id="btnClean" class="btn" type="button">C</button> </td>
        <td> <button id="btnPercent" class="btn" type="button">%</button> </td>
        <td> <button id="btnDivide" class="btn" type="button">/</button> </td>
        <td> <button id="btnDelete" class="btn" type="button">DEL</button> </td>
        
        </tr>
        
        <tr class="row"> <!-- fila 2 -->
        
        <td> <button id="btn7" class="btn" type="button">7</button> </td>
        <td> <button id="btn8" class="btn" type="button">8</button> </td>
        <td> <button id="btn9" class="btn" type="button">9</button> </td>
        <td> <button id="btnMult" class="btn" type="button">X</button> </td>
        
        </tr>
        
        <tr class="row"> <!-- fila 3 -->
        
        <td> <button id="btn4" class="btn" type="button">4</button> </td>
        <td> <button id="btn5" class="btn" type="button">5</button> </td>
        <td> <button id="btn6" class="btn" type="button">6</button> </td>
        <td> <button id="btnRest" class="btn" type="button">-</button> </td>
        
        </tr>
        
        <tr class="row"> <!-- fila 4 -->
        
        <td> <button id="btn1" class="btn" type="button">1</button> </td>
        <td> <button id="btn2" class="btn" type="button">2</button> </td>
        <td> <button id="btn3" class="btn" type="button">3</button> </td>
        <td> <button id="btnPlus" class="btn" type="button">+</button> </td>
        
        </tr>
        
        <tr class="row"> <!-- fila 5 -->
        
        <td> <button id="btn0" class="btn" type="button">0</button> </td>
        <td> <button id="btnPoint" class="btn" type="button">.</button> </td>
        <td> <button id="btnRootSquare" class="btn" type="button">r</button> </td>
        <td> <button id="btnEqual" class="btn" type="submit">=</button> </td>
        
        </tr>
        
        </table>
        
        <input name="num1" id="num1" type="text" class="hidden">
        <input name="num2" id="num2" type="text" class="hidden">
         <input name="symbol" id="symbol" type="text" class="hidden">
         <input name="result" id="result" type="text" class="hidden" value="${result}">
        
        </form>
      
        </div> <!-- /form -->
    
    </div>

        
        <footer>
        
        </footer>
        
    </body>
    
      <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
		
      <script type="text/javascript">
	$(document).on('ready', function() {
		
		//variables generales
		var string = "";
		
		//Resultado en pantalla
		var result = $('#result').val();
		
			
			$('#display').val(result);
		
		//bloque numerico
		$('#btn0').click(function() {
			string = $('#display').val() + '0';
			$('#display').val(string);
		});
		$('#btn1').click(function() {
			string = $('#display').val() + '1';
			$('#display').val(string);
		});
		$('#btn2').click(function() {
			string = $('#display').val() + '2';
			$('#display').val(string);
		});
		$('#btn3').click(function() {
			string = $('#display').val() + '3';
			$('#display').val(string);
		});
		$('#btn4').click(function() {
			string = $('#display').val() + '4';
			$('#display').val(string);
		});
		$('#btn5').click(function() {
			string = $('#display').val() + '5';
			$('#display').val(string);
		});
		$('#btn6').click(function() {
			string = $('#display').val() + '6';
			$('#display').val(string);
		});
		$('#btn7').click(function() {
			string = $('#display').val() + '7';
			$('#display').val(string);
		});
		$('#btn8').click(function() {
			string = $('#display').val() + '8';
			$('#display').val(string);
		});
		$('#btn9').click(function() {
			string = $('#display').val() + '9';
			$('#display').val(string);
		});
		//bloque de simbolos
		$('#btnPlus').click(function() {
		    string = $('#display').val();
			$('#num1').val(string);
		    string = $('#display').val() + ' + ';
		    $('#symbol').val('+');
			$('#display').val(string);
		});
		$('#btnRest').click(function() {
			string = $('#display').val();
			$('#num1').val(string);
		    string = $('#display').val() + ' - ';
		    $('#symbol').val('-');
			$('#display').val(string);
		});
		$('#btnMult').click(function() {
			string = $('#display').val();
			$('#num1').val(string);
		    string = $('#display').val() + ' X ';
		    $('#symbol').val('*');
			$('#display').val(string);
		});
		$('#btnDivide').click(function() {
			string = $('#display').val();
			$('#num1').val(string);
		    string = $('#display').val() + ' / ';
		    $('#symbol').val('/');
			$('#display').val(string);
		});
		$('#btnPercent').click(function() {
			string = $('#display').val();
			$('#num1').val(string);
		    string = $('#display').val() + ' % ';
		    $('#symbol').val('%');
			$('#display').val(string);
		});
		$('#btnEqual').click(function() {
			string = $('#display').val();
			var num1 = $('#num1').val();
			var space = 0;
			if($('#symbol').val() == "r"){space = 0}else{space = 3}
			var num1WithSymbolLength = num1.length + space;
			string = string.substring(num1WithSymbolLength, string.length);
			
				
				$('#num2').val(string);
			
		});
		$('#btnPoint').click(function() {
			string = $('#display').val() + '.';
			$('#display').val(string);
		});
		$('#btnClean').click(function() { 
			$('#display').val('');
		});
		$('#btnDelete').click(function() {
			string = $('#display').val();
			var stringLength = string.length - 1;
			string = string.substring(0,stringLength);
			$('#display').val(string);
		});
		$('#btnRootSquare').click(function() {
			$('#num1').val('0');
			$('#symbol').val('r');
			$('#display').val('r');
		});
		
	//√
	
	}); //cierre del document on ready
	
	</script>
</html>
