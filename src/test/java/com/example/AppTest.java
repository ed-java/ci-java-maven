package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {

    @Test
    void testSoma() {
        assertEquals(5, App.soma(2, 3));
    }
}
