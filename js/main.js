/*global riot */
import "../dist/counter";
import EventStore from './EventStore'

let eventStore = new EventStore();
riot.mount("*", eventStore);
