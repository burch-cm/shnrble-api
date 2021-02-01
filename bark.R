#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)

#* @apiTitle Plumber Example API

#* Get the sound a dog makes
#* @param lang Character string naming the language in which the dog should bark. Options are English, Spanish, Italian, German, Japanese, and French. Defaults to English.
#* @get /bark
function(lang = "") {
    sound <- switch (lang,
        "English" = "*woof woof*",
        "Spanish" = "*guau guau*",
        "Italian" = "*bau bau*",
        "German" = "*wau wau*",
        "Japanese" = "*wan wan*",
        "French" = "*ouaf oauf*",
        "*bark bark*"
    )
    sound
}

#* @apiTitle Count Cats and Dogs API
#* Count cats and dogs
#* @param cats The number of cats in question as a numeric value (i.e., 3)
#* @param dogs The number of dogs in question as a numeric value (i.e., 27)
#* @get /count_animals
function(cats = 0, dogs = 0) {
    list(n_cats = as.numeric(cats),
         n_dogs = as.numeric(dogs),
         n_animals = as.numeric(cats) + as.numeric(dogs))
}
