<decrement>
    <button onclick={ decrement }>Decrement</button>

    <script>
        import { log } from "../../js/util";

        let eventStore = opts.event_store;

        this.decrement = function(ev) {
            let counterDecrementEvent = {
                channel: "sync",
                topic: "counter.decrement",
                eventType: 'click',
                data: {
                    count: -1
                }
            };

            eventStore.add(counterDecrementEvent);

            log("INFO", "Decrement button was clicked!");
            log('INFO', eventStore.events);
        }.bind(this)
    </script>
</decrement>