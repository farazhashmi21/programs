		<div class = "">
			<form name="calculate form" method="post" action = "<?php echo base_url(); ?>calc/divi">
			<p>Numb 1: <input type="number" name="numb1" placeholder = "0" value = "<?php echo $numb1; ?>" required/></p>
			<p>Numb 2: <input type="number" name="numb2" placeholder = "0" value = "<?php echo $numb2; ?>" required/></p>
			<p>Result: <input type="number" name="result" placeholder = "0" value = "<?php echo $res; ?>"/></p>
			<button type="submit" name="calculateButton">Calculate</button>
			<button type="reset" name="resetButton">Reset</button>
		</form>
		</div>
