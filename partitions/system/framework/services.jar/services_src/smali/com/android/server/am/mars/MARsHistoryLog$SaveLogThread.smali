.class public Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;
.super Ljava/lang/Object;
.source "MARsHistoryLog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/MARsHistoryLog;


# direct methods
.method public static synthetic $r8$lambda$SWFI6QOBtdfTghsTzIpD87S5pCg(Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/MARsHistoryLog;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;->this$0:Lcom/android/server/am/mars/MARsHistoryLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;->this$0:Lcom/android/server/am/mars/MARsHistoryLog;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/am/mars/MARsHistoryLog;->saveLogToFile(ZZ)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 191
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
