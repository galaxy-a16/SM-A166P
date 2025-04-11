.class public Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# instance fields
.field public action:Ljava/lang/String;

.field public calleePid:I

.field public calleePkgName:Ljava/lang/String;

.field public callerPid:I

.field public callerPkgName:Ljava/lang/String;

.field public count:I

.field public currentLevel:I

.field public from:Ljava/lang/String;

.field public hostingType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsComponentTracker;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsComponentTracker;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->this$0:Lcom/android/server/am/mars/database/MARsComponentTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-wide p2, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->time:J

    .line 125
    iput p4, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->currentLevel:I

    const/4 p1, 0x1

    .line 126
    iput p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->count:I

    .line 127
    iput p5, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->calleePid:I

    .line 128
    iput p6, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->callerPid:I

    .line 129
    iput-object p7, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->calleePkgName:Ljava/lang/String;

    .line 130
    iput-object p8, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->callerPkgName:Ljava/lang/String;

    .line 131
    iput-object p9, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->hostingType:Ljava/lang/String;

    if-nez p10, :cond_0

    const-string p10, "NONE"

    .line 132
    :cond_0
    iput-object p10, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->action:Ljava/lang/String;

    .line 133
    iput-object p11, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->from:Ljava/lang/String;

    return-void
.end method
