.class public abstract Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;
.super Ljava/lang/Object;
.source "AccessibilityAppFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;-><init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    return-void
.end method
