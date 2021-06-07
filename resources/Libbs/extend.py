from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from appium.webdriver.common.touch_action import TouchAction


def meu_drag_drop(Locator,p_origin, p_destination):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    el_origin = driver.find_elements_by_id(Locator)[int(p_origin)]
    el_target = driver.find_elements_by_id(Locator)[int(p_destination)]

    actions = TouchAction(driver)
    actions.long_press(el_origin).move_to(el_target)
    actions.release()
    actions.perform()