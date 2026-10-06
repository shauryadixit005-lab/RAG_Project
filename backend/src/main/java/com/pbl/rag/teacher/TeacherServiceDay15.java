package com.pbl.rag.teacher;

import java.time.LocalDate;
import java.util.Map;

/**
 * Incremental Teacher Module - Day 15 (2026-07-20)
 * Author: Shaurya Dixit (shauryadixit005-lab)
 * Branch: feature/member1-rag-engine
 */
public class TeacherServiceDay15 {
    private final String author = "Shaurya Dixit";
    private final LocalDate recordDate = LocalDate.parse("2026-07-20");

    public Map<String, Object> getMetrics() {
        return Map.of(
            "dayIndex", 15,
            "date", "2026-07-20",
            "week", 3,
            "theme", "UML Modeling & Teacher Demo State Machine Design",
            "username", "shauryadixit005-lab",
            "verified", true
        );
    }
}