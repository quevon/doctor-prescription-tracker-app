const axios = require('axios');
import {debounce} from './debounce'

var search_input = document.querySelector("#search-input")
var doctors_table = document.querySelector("#doctors-collection")


var search = search_input.addEventListener("input", debounce(getSearchResults, 500))


function getSearchResults(event) {
    var query = event.srcElement.value
    var token = document.getElementsByName('csrf-token')[0].content

    axios.get("/doctors", {
        params: {query: query},
        headers: {
            'Accept': 'application/javascript',
            'X-CSRF-token': token,
            'X-Requested-with': 'XMLHTTPRequest'
        }
    }).then ((response) =>{
       doctors_table.innerHTML = response.data
    })
}