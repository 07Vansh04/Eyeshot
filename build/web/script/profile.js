     // Get references to HTML elements
            const searchInput = document.getElementById('search-input');
            const suggestionList = document.getElementById('suggestion-list');
            const noSuggestionsMsg = document.getElementById('no-suggestions-msg');

// Event listener for user input in the search bar
            searchInput.addEventListener('input', function () {
                const searchText = searchInput.value.trim(); // Get the trimmed search text

                // Clear previous suggestions
                suggestionList.innerHTML = '';
                noSuggestionsMsg.style.display = 'none';

                if (searchText !== '') {
                    // Make an AJAX request to the servlet to fetch suggestions
                    fetchSuggestions(searchText);
                }
            });

// Function to make an AJAX request to the servlet and fetch suggestions
            function fetchSuggestions(searchText) {
                
                fetch('Search?search=' + encodeURIComponent(searchText))
                        .then(response => response.json())
                        .then(data => {
                            
                            if (data.length > 0) {
                                // Display the suggestions in the suggestion list
                                data.forEach(suggestion => {
                                    const li = document.createElement('li');
                                    li.textContent = suggestion;
                                    suggestionList.appendChild(li);
                                });
                            } else {
                                // Show "No suggestions found" message
                                noSuggestionsMsg.style.display = 'block';
                            }
                        })
                        .catch(error => {
                            console.error(error);
                        });
            }
