<counter>
    <h3>Count</h3>

    <p>{ count }</p>

    <button onclick={ increment }>Increment</button>
    <button onclick={ decrement }>Decrement</button>
    <script>
        import { log } from "../js/util";

        let eventStore = opts;

        let counter = 0;
        this.count = counter;

        this.increment = function(ev) {
            let counterIncrement = {
                channel: "sync",
                topic: "counter.increment",
                eventType: 'click',
                data: {}
            };

            eventStore.add(counterIncrement);

            log("INFO", "Increment button was clicked!");
            log('INFO', eventStore.events);

            this.count++;
        }.bind(this);

        this.decrement = function(ev) {
            log("INFO", "Decrement button was clicked!");
            this.count--;
        }.bind(this);
    </script>
</counter>
