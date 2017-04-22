<counter>
    <h3>Count</h3>

    <p>{ count }</p>

    <increment event_store={ opts }></increment>
    <decrement event_store={ opts }></decrement>

    <script>
        import { log } from "../../js/util";

        let counter = 0;
        this.count = counter;

    </script>
</counter>
