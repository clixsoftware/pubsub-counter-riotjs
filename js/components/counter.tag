<counter>
    <h3>Count</h3>

    <p>{ count }</p>

    <button onclick={ increment }>Increment</button>
    <button onclick={ decrement }>Decrement</button>
    <script>
        import { log } from "../js/util";

        let eventStore = opts.eventStore;

        log('INFO', eventStore);

        let counter = 0;
        this.count = counter;

        this.increment = function(ev) {
            log("INFO", "Increment button was clicked!");
            this.count++;
        }.bind(this);

        this.decrement = function(ev) {
            log("INFO", "Decrement button was clicked!");
            this.count--;
        }.bind(this);
    </script>
</counter>
