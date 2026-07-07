package com.pbl.rag.teacher;

import java.time.LocalDate;
import java.util.Map;

/**
 * Incremental Teacher Module - Day 2 (2026-07-07)
 * Author: Yashvardhan Singh Chauhan (chauhyash1118)
 * Branch: feature/member2-doc-ingestion
 */
public class TeacherServiceDay2 {
    private final String author = "Yashvardhan Singh Chauhan";
    private final LocalDate recordDate = LocalDate.parse("2026-07-07");

    public Map<String, Object> getMetrics() {
        return Map.of(
            "dayIndex", 2,
            "date", "2026-07-07",
            "week", 1,
            "theme", "Project Abstract, Teacher Module Scope & Guide Onboarding",
            "username", "chauhyash1118",
            "verified", true
        );
    }
}