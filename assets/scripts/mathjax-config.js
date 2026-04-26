window.MathJax = {
  loader: {load: ['[tex]/physics', '[tex]/ams', '[tex]/cancel', '[tex]/mathtools']},
  tex: {
    packages: {'[+]': ['physics', 'mathtools']},
    inlineMath: {'[+]': [['$', '$']]},
    displayMath: {'[+]': [['$$', '$$']]},
    processEscapes: true,
    macros: {
      inlinetext: ['{\\quad \\text{#1} \\,\\,}', 1],
      where: ['\\inlinetext{where}', 0],
    }
  },
  /*
  options: {
    skipHtmlTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code'],
    ignoreHtmlClass: 'no-mathjax',
  }
  */
};
