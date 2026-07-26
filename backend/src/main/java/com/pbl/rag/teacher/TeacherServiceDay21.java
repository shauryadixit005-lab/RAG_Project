package com.pbl.rag.teacher;

import java.time.LocalDate;
import java.util.Map;

/**
 * Incremental Teacher Module - Day 21 (2026-07-26)
 * Author: Shaurya Dixit (shauryadixit005-lab)
 * Branch: feature/member1-rag-engine
 */
public class TeacherServiceDay21 {
    private final String author = "Shaurya Dixit";
    private final LocalDate recordDate = LocalDate.parse("2026-07-26");

    public Map<String, Object> getMetrics() {
        return Map.of(
            "dayIndex", 21,
            "date", "2026-07-26",
            "week", 3,
            "theme", "UML Modeling & Teacher Demo State Machine Design",
            "username", "shauryadixit005-lab",
            "verified", true
        );
    }
}