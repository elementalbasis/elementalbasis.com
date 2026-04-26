window.MathJax = {
  loader: {load: ['[tex]/physics', '[tex]/ams', '[tex]/cancel', '[tex]/mathtools']},
  tex: {
    packages: {'[+]': ['physics', 'mathtools']},
    inlineMath: {'[+]': [['$', '$']]},
    displayMath: {'[+]': [['$$', '$$']]},
    processEscapes: true,
    enableExplorer: false,
    enableSpeech: false,
    enableBraille: false,
    enableMenu: false,
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
