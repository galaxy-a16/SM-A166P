.class public Lcom/samsung/android/server/pm/role/RoleLogger;
.super Ljava/lang/Object;
.source "RoleLogger.java"


# static fields
.field public static final LOGGING_PERIOD:J

.field public static final ROLES_TO_LOG:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "RoleLogger"

.field public static final sRoleLoggingServiceName:Landroid/content/ComponentName;


# direct methods
.method public static bridge synthetic -$$Nest$mgetEachRoleHolder(Lcom/samsung/android/server/pm/role/RoleLogger;Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/pm/role/RoleLogger;->getEachRoleHolder(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetROLES_TO_LOG()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->ROLES_TO_LOG:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 15

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/pm/role/RoleLogger;->LOGGING_PERIOD:J

    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    const-string v3, "android.app.role.BROWSER"

    const-string v4, "android.app.role.CALL_SCREENING"

    const-string v5, "android.app.role.ASSISTANT"

    const-string v6, "android.app.role.HOME"

    const-string v7, "android.app.role.DIALER"

    const-string v8, "android.app.role.SMS"

    const-string v9, "android.app.role.CALL_REDIRECTION"

    const-string v10, "android.app.role.EMERGENCY"

    const-string v11, "android.app.role.NOTES"

    const-string v12, "android.app.role.SYSTEM_GALLERY"

    const-string v13, "android.app.role.SYSTEM_CONTACTS"

    const-string v14, "android.app.role.SYSTEM_DOCUMENT_MANAGER"

    .line 38
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->ROLES_TO_LOG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEachRoleHolder(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    .line 104
    const-class p0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 105
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 107
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 108
    invoke-virtual {p0, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Unavailable"

    .line 109
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 111
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 112
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "None"

    goto :goto_1

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public onSystemReady(Landroid/content/Context;)V
    .locals 1

    const v0, 0x6ec3dd

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/pm/role/RoleLogger;->scheduleLoggingJob(Landroid/content/Context;I)V

    return-void
.end method

.method public final scheduleLoggingJob(Landroid/content/Context;I)V
    .locals 2

    .line 63
    const-class p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_0

    .line 65
    sget-object p0, Lcom/samsung/android/server/pm/role/RoleLogger;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get JobScheduler"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    sget-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    invoke-direct {p1, p2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p2, 0x1

    .line 69
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    sget-wide v0, Lcom/samsung/android/server/pm/role/RoleLogger;->LOGGING_PERIOD:J

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
