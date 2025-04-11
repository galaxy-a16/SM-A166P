.class public abstract Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;
.super Ljava/lang/Object;
.source "SleepModeLogger.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/ibs/sleepmode/SleepModeLogger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;-><init>(Lcom/android/server/ibs/sleepmode/SleepModeLogger-IA;)V

    sput-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    return-void
.end method
