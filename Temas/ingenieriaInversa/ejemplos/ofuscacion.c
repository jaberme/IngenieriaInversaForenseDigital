#include <assert.h>
#include <stdint.h>
#include <stdio.h>

static uint32_t directa(uint32_t x) {
    return x < 10u ? x + 3u : x * 2u;
}

static uint32_t estados(uint32_t x) {
    unsigned estado = 0;
    uint32_t y = 0;
    for (;;) {
        switch (estado) {
        case 0: estado = x < 10u ? 1u : 2u; break;
        case 1: y = x + 3u; estado = 3; break;
        case 2: y = x * 2u; estado = 3; break;
        case 3: return y;
        default: assert(0); return 0;
        }
    }
}

static uint32_t mba(uint32_t a, uint32_t b) {
    return (a ^ b) + ((a & b) << 1);
}

int main(void) {
    const uint32_t valores[] = {
        0u, 1u, 9u, 10u, 11u, 0x7fffffffu, 0x80000000u, 0xfffffffeu, UINT32_MAX
    };
    const size_t n = sizeof valores / sizeof valores[0];
    for (size_t i = 0; i < n; ++i) {
        const uint32_t x = valores[i];
        assert(directa(x) == estados(x));
        assert(((x * (x + 1u)) & 1u) == 0u);
        for (size_t j = 0; j < n; ++j)
            assert(mba(x, valores[j]) == x + valores[j]);
    }
    puts("9 casos de flujo, 9 predicados y 81 pares MBA correctos");
    return 0;
}
