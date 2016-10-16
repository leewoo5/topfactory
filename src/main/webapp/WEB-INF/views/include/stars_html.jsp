<div class="form-group">
	<span class="star-input">
		<span class="input">
			<input type="radio" name="star" class="p" value="1"><label for="p1">1</label>
			<input type="radio" name="star" class="p" value="2"><label for="p2">2</label>
			<input type="radio"	name="star" class="p" value="3"><label for="p3">3</label>
			<input type="radio" name="star" class="p" value="4"><label for="p4">4</label>
			<input type="radio" name="star" class="p" value="5"><label for="p5">5</label>
			<input type="radio"	name="star" class="p" value="6"><label for="p6">6</label>
			<input type="radio" name="star" class="p" value="7"><label for="p7">7</label>
			<input type="radio" name="star" class="p" value="8"><label for="p8">8</label>
			<input type="radio"	name="star" class="p" value="9"><label for="p9">9</label>
			<input type="radio" name="star" class="p" value="10"><label for="p10">10</label>
		</span>
	</span>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".p:eq(${bookVO.star})").attr("checked", "checked");
	});
</script>