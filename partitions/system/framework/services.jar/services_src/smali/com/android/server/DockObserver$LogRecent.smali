.class public Lcom/android/server/DockObserver$LogRecent;
.super Ljava/lang/Object;
.source "DockObserver.java"


# instance fields
.field public mCurrentReportLogIndex:I

.field public mCurrentUeventLogIndex:I

.field public report:[I

.field public reportTime:[J

.field public reportUsbpdIds:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/DockObserver;

.field public uEventTime:[J

.field public uEventType:[I

.field public uEventUsbpdIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 107
    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    const/16 p1, 0xa

    new-array v0, p1, [J

    .line 130
    iput-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    new-array v0, p1, [I

    .line 131
    iput-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    new-array v0, p1, [J

    .line 132
    iput-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    new-array v0, p1, [I

    .line 133
    iput-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    new-array v0, p1, [Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 111
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    iget v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 114
    iget-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    iget v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    aput p2, p1, v0

    .line 115
    iget-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 117
    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    goto :goto_0

    .line 119
    :cond_1
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_2

    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    iget v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 122
    iget-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    iget v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    aput p2, p1, v0

    .line 123
    iget-object p1, p0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 125
    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    :goto_0
    return-void
.end method
