.class public abstract Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;
.super Ljava/lang/Object;
.source "MARsHistoryLog.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/MARsHistoryLog;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/server/am/mars/MARsHistoryLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/MARsHistoryLog;-><init>(Lcom/android/server/am/mars/MARsHistoryLog-IA;)V

    sput-object v0, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    return-void
.end method
