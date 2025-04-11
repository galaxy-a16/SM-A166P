.class public Lcom/android/server/am/mars/util/ForegroundServiceMgr;
.super Ljava/lang/Object;
.source "ForegroundServiceMgr.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mGetUsingFGSTypeRunnable:Ljava/lang/Runnable;

.field public mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mProcessObserver:Landroid/app/IProcessObserver$Stub;


# direct methods
.method public static synthetic $r8$lambda$zXN20kYe8tCoaXs_4uzVf4VaJc0(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGetUsingFGSTypeRunnable(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mGetUsingFGSTypeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMapFGSRecord(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mconvertFGSType(Lcom/android/server/am/mars/util/ForegroundServiceMgr;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->convertFGSType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mformatDateTime(Lcom/android/server/am/mars/util/ForegroundServiceMgr;J)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->formatDateTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misFGSTarget(Lcom/android/server/am/mars/util/ForegroundServiceMgr;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->isFGSTarget(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInDuration(Lcom/android/server/am/mars/util/ForegroundServiceMgr;JJJ)Z
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->isInDuration(JJJ)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mGetUsingFGSTypeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/util/ForegroundServiceMgr;
    .locals 1

    invoke-static {}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->checkAllOp(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;)V

    return-void
.end method


# virtual methods
.method public clearMap()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final convertFGSType(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x80

    goto :goto_0

    :cond_2
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p0, 0x40

    :cond_4
    :goto_0
    return p0
.end method

.method public final formatDateTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%16s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public init()V
    .locals 1

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->TAG:Ljava/lang/String;

    const-string v0, "AMI is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final isFGSTarget(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageManager() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :goto_0
    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final isInDuration(JJJ)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->roundDownToMinute(J)J

    move-result-wide p1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->roundDownToMinute(J)J

    move-result-wide p3

    invoke-virtual {p0, p5, p6}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->roundDownToMinute(J)J

    move-result-wide p5

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-lez p0, :cond_0

    cmp-long p0, p5, p3

    if-ltz p0, :cond_0

    cmp-long p0, p3, p1

    if-gtz p0, :cond_0

    cmp-long p0, p1, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 0

    return-void
.end method

.method public onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->isFGSTarget(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/mars/ForegroundServiceRecord;

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/server/am/mars/ForegroundServiceRecord;

    invoke-direct {p3, p1, p2}, Lcom/android/server/am/mars/ForegroundServiceRecord;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/android/server/am/mars/ForegroundServiceRecord;->setFGSStartTime(J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/mars/ForegroundServiceRecord;->setFGSEndTime(J)V

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->getAllAccessTimeOfPackage(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final roundDownToMinute(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    :cond_0
    return-wide v0
.end method
