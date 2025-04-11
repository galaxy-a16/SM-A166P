.class public Lcom/android/server/am/FreecessPkgStatus;
.super Ljava/lang/Object;
.source "FreecessPkgStatus.java"


# instance fields
.field public freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

.field public freezedState:I

.field public freezedType:I

.field public frozenPids:Ljava/util/ArrayList;

.field public isDoingGC:I

.field public isFreezedByCalm:Z

.field public isInAllowList:Z

.field public isKilledByChimera:Z

.field public isOlafAllowList:Z

.field public isPendingUFZ:Z

.field public isPidFreezed:Z

.field public isUidFreezed:Z

.field public isolatedPids:Ljava/util/ArrayList;

.field public killedTime:J

.field public monitorPacketFlag:Z

.field public name:Ljava/lang/String;

.field public protectionElapsedRealtime:Ljava/lang/Long;

.field public restrictNetworkFlag:Z

.field public serviceTypes:I

.field public sharedUidName:Ljava/lang/String;

.field public targetSdkVersion:I

.field public uid:I

.field public userId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 46
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 48
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 49
    iput p4, p0, Lcom/android/server/am/FreecessPkgStatus;->targetSdkVersion:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 54
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 55
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isPidFreezed:Z

    .line 56
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 57
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    const/4 p3, 0x1

    .line 59
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 60
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 62
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->frozenPids:Ljava/util/ArrayList;

    .line 65
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 66
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isKilledByChimera:Z

    .line 67
    iput-wide v0, p0, Lcom/android/server/am/FreecessPkgStatus;->killedTime:J

    .line 68
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 69
    new-instance p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-direct {p1, p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;-><init>(Lcom/android/server/am/FreecessPkgStatus;)V

    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    return-void
.end method


# virtual methods
.method public isFreezeProtected()Z
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 75
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    .line 76
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 77
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateProtectionTime(J)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 84
    iget-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 86
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
