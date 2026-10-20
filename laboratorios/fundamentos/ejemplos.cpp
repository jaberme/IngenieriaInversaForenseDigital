// Comprobacion local de los ejemplos del capitulo 1, Linux x86-64 LP64.
// Las aserciones documentan esta plataforma; no son requisitos universales de C++.
#include <cassert>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>

extern "C" int sumar(int a, int b) { return a + b; }

struct registro {
    long id;
    void *dato;
};

struct Contador {
    int valor;
    int sumar(int paso) const { return valor + paso; }
};

int usar(const Contador *c) { return c->sumar(3); }

struct Sensor {
    int valor;
    virtual int leer() const { return valor; }
};

int consultar(const Sensor *s) { return s->leer(); }

struct SensorDoble : Sensor {
    int leer() const override { return valor * 2; }
};

int main() {
    assert(sizeof(int) == 4 && sizeof(long) == 8);
    assert(sizeof(long long) == 8 && sizeof(void *) == 8);
    assert(sizeof(registro) == 16 && offsetof(registro, dato) == 8);
    assert(sumar(7, 5) == 12);

    const Contador c{9};
    assert(sizeof(c) == 4 && offsetof(Contador, valor) == 0);
    assert(usar(&c) == 12);

    Sensor s, s2;
    s.valor = 9;
    s2.valor = 4;
    SensorDoble d;
    d.valor = 9;
    const auto base = reinterpret_cast<std::uintptr_t>(&s);
    const auto campo = reinterpret_cast<std::uintptr_t>(&s.valor);
    // Medicion de direcciones en esta implementacion, no offsetof no estandar.
    const auto offset = campo - base;
    assert(sizeof(s) == 16 && alignof(Sensor) == 8 && offset == 8);
    assert(consultar(&s) == 9 && consultar(&d) == 18);

    // Se inspecciona la representacion; no se invoca ni desreferencia este valor.
    std::uintptr_t vptr1 = 0, vptr2 = 0;
    std::memcpy(&vptr1, &s, sizeof(vptr1));
    std::memcpy(&vptr2, &s2, sizeof(vptr2));
    assert(vptr1 != 0 && vptr1 == vptr2);

    const std::uint32_t valor = 0x0A0B0C0D;
    unsigned char bytes[sizeof(valor)];
    std::memcpy(bytes, &valor, sizeof(valor));
    assert(bytes[0] == 0x0D && bytes[1] == 0x0C);
    assert(bytes[2] == 0x0B && bytes[3] == 0x0A);

    std::printf("int=%zu long=%zu long_long=%zu puntero=%zu\n",
                sizeof(int), sizeof(long), sizeof(long long), sizeof(void *));
    std::printf("registro: tamano=%zu offset_dato=%zu\n",
                sizeof(registro), offsetof(registro, dato));
    std::printf("sumar(7,5)=%d Contador: tamano=%zu usar=%d\n",
                sumar(7, 5), sizeof(c), usar(&c));
    std::printf("Sensor: tamano=%zu alineacion=%zu offset_valor=%zu vptr_compartido=%d\n",
                sizeof(s), alignof(Sensor), static_cast<std::size_t>(offset),
                vptr1 == vptr2);
    std::printf("consulta_base=%d consulta_derivada=%d\n",
                consultar(&s), consultar(&d));
    std::printf("bytes=%02X %02X %02X %02X\n", static_cast<unsigned>(bytes[0]),
                static_cast<unsigned>(bytes[1]), static_cast<unsigned>(bytes[2]),
                static_cast<unsigned>(bytes[3]));
}
