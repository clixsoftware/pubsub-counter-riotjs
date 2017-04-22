import { log } from "../js/util";

<counter>
    <h3>Count</h3>

    <p>{ count }</p>

    <button onclick={ increment }>Increment</button>
    <button>Decrement</button>
    <script>
        let counter = 0;
        this.count = counter;

        this.increment = function(ev) {
            log("INFO", "Increment button was clicked!");
        }.bind(this);
    </script>
</counter>
