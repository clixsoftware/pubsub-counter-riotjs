<counter>
    <h3>Count</h3>

    <p>{ count }</p>

    <increment event_store={ opts }></increment>
    <decrement event_store={ opts }></decrement>

    <script>
        import postal from 'postal/lib/postal.lodash'

        import { log } from "../../js/util";

        let eventStore = opts;

        this.count = 0;
        this.subscriptions = {};

        this.on('mount', function() {
            this.subscribe('sync', 'counter.increment');
        });

        this.subscribe = function(channel, topic) {
            let subscription = postal.subscribe({
                channel: channel,
                topic: topic,
                callback: function(data, envelope) {
                    let events = eventStore.filter(this.subscriptions);

                    let state = this.reduce(events);

                    this.count = state.count;

                    this.update();

                }.bind(this)
            });

            this.subscriptions[topic] = subscription;

            return subscription;
        }

        this.reduce = function(events) {
            return events.reduce(function(state, event) {
                state.count += event.data.count;

                return state;
            }, {
                count: 0
            })
        }

    </script>
</counter>
