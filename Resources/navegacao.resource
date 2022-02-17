*** Variable ***
# Resouce utilizado para guardar locators utilizados em todas as partes da aplicação

&{navegacao}    
...    header=id:app
...    btn_game=xpath://div[@class="games-btn active router-link-active"]
...    input_x=xpath://*[@class="make-bet-input"]

&{game}
...    clock=xpath://*[@class="timer-large timer-large-wrap"]
...    history=xpath://*[@class="crash-history-row crash-history-row-wrap"]
...    value_history=xpath://*[@class="crash-history-row crash-history-row-wrap"]/a[1]
...    players=xpath://*[contains(text(),"Players")]/../*[@class="right-value"]/span

&{aposta}
...    item_inv=xpath://*[@class="inventory-item selectable hover"][{value}] //*[@class="item-price"]
...    item_aposta=xpath://*[@class="item-overflow"]//*[contains(text(),"{price}")]/../../div
...    bet_btn=xpath://div[@class="base-button base-button-wrap bet-btn b-10 lg primary"]