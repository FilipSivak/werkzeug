suite 'wzk.ui.ac.SelectAutoComplete', ->

  dom = null
  doc = null

  setup ->
    jsdomFeatures = {
      "features":
        "QuerySelector": true
    }

    doc = jsdom("""
    <html><head></head>
    <body>
      <select name='testSelect'>
        <option value='val1'>Aoption</option>
        <option value='val2'>Boption</option>
        <option value='val3' checked>Boption2</option>
        <option value='val4'>Coption</option>
      </select>
    </body>
    </html>
    """, null, jsdomFeatures)
    dom = new wzk.dom.Dom doc

    select = dom.one 'select'
    console.log wzk.ui.ac.buildSelectAutoCompleteNative
    autocomplete = wzk.ui.ac.buildSelectAutoCompleteNative select, dom
    autocomplete.decorate select

  test 'Boption2 should be default', ->
    input = dom.querySelector 'input'
    console.log assert
