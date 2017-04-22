<my-component>
	<h3 onclick={ onClick }>{ title }</h3>
	<p>{ content }</p>

	<script>
		this.title = "Hello World";
		this.content = "lorem ipsum dolor sit amet";

		var self = this;
		this.onClick = function(ev) {
			self.content += " " + new Date();
			self.update();
		};
	</script>
</my-component>
