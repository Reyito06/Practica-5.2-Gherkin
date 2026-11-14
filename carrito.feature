 When ingresa a la sección "Carrito"
    Then debe visualizar los productos seleccionados
    And debe visualizar el total de la compra

  Scenario: Eliminar un producto del carrito
    Given que el usuario tiene productos en el carrito
    When presiona el botón "Eliminar" de un producto
    Then el producto debe desaparecer del carrito
    And el total debe actualizarse

  Scenario: Vaciar el carrito
    Given que el usuario tiene varios productos en el carrito
    When presiona el botón "Vaciar carrito"
    Then todos los productos deben eliminarse
    And el total debe ser RD$0

  Scenario: Consultar un carrito vacío
    Given que el usuario no tiene productos agregados
    When ingresa a la sección "Carrito"
    Then debe aparecer un mensaje indicando que el carrito está vacío
    And el total debe ser RD$0

  Scenario: Intentar eliminar un producto inexistente
    Given que el carrito está vacío
    When el sistema intenta eliminar un producto inexistente
    Then el carrito debe permanecer vacío
    And el sistema no debe presentar errores inesperados