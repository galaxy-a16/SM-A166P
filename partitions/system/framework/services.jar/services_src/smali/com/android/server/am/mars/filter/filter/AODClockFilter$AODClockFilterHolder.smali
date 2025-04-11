.class public abstract Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;
.super Ljava/lang/Object;
.source "AODClockFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AODClockFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AODClockFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    return-void
.end method
