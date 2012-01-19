window.App.Expense = App.Accounting.extend
  defaults:
    'amount': 0
    'payee': null
    'expense': null

  validate: (attributes) ->
    errors = []

    if !attributes.amount || attributes.amount.length == 0
      errors.push(
        'field': 'amount'
        'message': 'cannot be empty'
      )
    else if isNaN(attributes.amount)
      errors.push(
        'field': 'amount'
        'message': 'must be a number'
      )

    if !attributes.payee || attributes.payee.length == 0
      errors.push(
        'field': 'payee'
        'message': 'cannot be empty'
      )

    return errors if errors.length > 0