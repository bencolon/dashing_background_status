class Dashing.StatusWidget extends Dashing.Widget

  @::on 'ready', ->
    palette = ['FF3300','F64100','EC4F00','E35D00','DA6B00','D17900','C78600','BE9400','B5A200','ACB000','A2BE00','99CC00']

    if status = @get('status')

      current = status['current']
      good = status['good']
      bad = status['bad']

      if good > bad
        value = Math.round(10 * (current - bad) / (good - bad))
      else 
        value = 10 - Math.round(10 * (current - good) / (bad - good))

      $(@node).css("background-color","##{palette[value]}")