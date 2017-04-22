/*global riot */
import "../dist/components/counter";
import "../dist/components/increment-button";
import "../dist/components/decrement-button";

import EventStore from './EventStore'

let eventStore = new EventStore();
riot.mount("*", eventStore);
