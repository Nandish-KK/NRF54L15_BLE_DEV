if (CONFIG_SOC_NRF54L15_CPUAPP)
 board_runner_args(pyocd "--target=nrf54l" "--frequency=4000000")
elseif (CONFIG_SOC_NRF54L15_CPUFLPR)
  board_runner_args(pyocd "--device=nRF54L15_RV32" "--speed=4000")
endif()

include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/nrfutil.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)