# We need to install nltk first: in your shell or the Pycharm terminal, run:
# pip install nltk
# Because I am running multiple versions on my machine, I will specify:
# python3.12 -m pip install nltk.
# Then we can import it.
import nltk
import nltk.corpus
# The next line downloads all the example texts used in the NLTK book at https://www.nltk.org/book !
nltk.download('book')
from nltk.book import *
from urllib import request

text3.common_contexts(["the", "but"])

# text4.dispersion_plot(["citizens", "democracy", "freedom", "duties", "America"])
# plt.show()

# nltk.download('gutenberg')
# nltk.corpus.gutenberg.fileids()

# print(text1.similar('monstrous'))
# print(set(text4))

text3.similar("god")