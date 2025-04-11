.class public Lcom/android/server/am/BaseRestrictionMgr;
.super Ljava/lang/Object;
.source "BaseRestrictionMgr.java"


# static fields
.field public static TAG:Ljava/lang/String; = "BaseRestrictionMgr"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRestrictActivityTheme:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseRestrictionMgr$1;-><init>(Lcom/android/server/am/BaseRestrictionMgr;)V

    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BaseRestrictionMgr-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BaseRestrictionMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/BaseRestrictionMgr;
    .locals 1

    .line 215
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    .line 698
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 703
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    .line 704
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 706
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 709
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 711
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 712
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    .line 716
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 719
    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 720
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 721
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 722
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 721
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRestrictionsByCurrentLevel(IZ)I
    .locals 1

    const p0, 0x20000008

    const v0, 0x501c0888

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const p0, 0x1002220

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const p0, 0x1000112

    return p0

    :pswitch_4
    const p0, 0x1000220

    return p0

    .line 255
    :pswitch_5
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x2220

    return p0

    :cond_0
    const p0, 0x401c0888

    return p0

    .line 249
    :pswitch_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x14148110

    return p0

    :cond_1
    return v0

    .line 234
    :pswitch_7
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return p0

    .line 237
    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    return p0

    :cond_3
    return v0

    :pswitch_8
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseRestrictionMgr;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final isBindNotificationListenerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 997
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    .line 1000
    :try_start_0
    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 1002
    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "android"

    .line 1003
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 1005
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1009
    sget-object p2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isBindNotificationListenerPackage exception="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return p0
.end method

.method public final isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 5

    .line 185
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 186
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 188
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 193
    :cond_0
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 194
    array-length v4, p0

    if-gt v4, v0, :cond_1

    .line 195
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to analyze taskAffinity: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 198
    :cond_1
    aget-object p0, p0, v0

    .line 199
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p1

    invoke-virtual {p1, v2, p0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final isCurrentLauncherApp(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 830
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultHomePackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 831
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call from Current Launcher app :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 814
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isJobSchedulerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 952
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    .line 955
    :try_start_0
    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "android.permission.BIND_JOB_SERVICE"

    .line 957
    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "android"

    .line 958
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 960
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 964
    sget-object p2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isJobSchedulerPackage exception="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return p0
.end method

.method public final isLauncherableApp(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "com.baidu.searchbox_samsung"

    .line 899
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "com.bst.floatingmsgproxy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_4

    .line 905
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 906
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_1

    .line 907
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    .line 910
    :cond_2
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_3

    .line 911
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 916
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isLaucherableApp exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v1
.end method

.method public final isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .locals 7

    .line 731
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "Blocked by policy:"

    const/4 v3, -0x1

    if-nez p1, :cond_1

    .line 736
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_0

    .line 737
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- Caller is null!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 742
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 743
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v4

    if-nez v4, :cond_2

    return v5

    :cond_2
    const/4 v4, 0x4

    if-eq p7, v4, :cond_4

    .line 749
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v6

    if-nez v6, :cond_4

    .line 750
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    invoke-virtual {v6, p6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidGone(I)Z

    move-result v6

    if-nez v6, :cond_3

    return v5

    .line 752
    :cond_3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    invoke-virtual {v6, p6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p6

    if-eqz p6, :cond_4

    return v5

    :cond_4
    const-string/jumbo p6, "startService"

    .line 758
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string v6, "bindService"

    if-nez p6, :cond_5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_6

    .line 759
    :cond_5
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Z

    move-result p6

    if-eqz p6, :cond_6

    return v5

    :cond_6
    const-string p6, "com.sec.android.app.samsungapps"

    .line 763
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_7

    return v5

    .line 768
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_b

    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isSamsungService(Ljava/lang/String;I)Z

    move-result p2

    const-string p6, "is Blocked by Policy:"

    if-nez p2, :cond_9

    .line 770
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_8

    .line 771
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- Caller is not samsung!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v3

    .line 774
    :cond_9
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 775
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_a

    .line 776
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- isCalmMode!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v3

    .line 783
    :cond_b
    invoke-virtual {p0, p1, v0, p5, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 784
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_c

    .line 785
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- should Block cases!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v3

    .line 790
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    if-eq p7, v4, :cond_f

    .line 791
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isJobSchedulerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 792
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_e

    .line 793
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- JobSchedulerPackage!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v3

    .line 797
    :cond_f
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isSyncManagerPackage(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 798
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_10

    .line 799
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- SyncManagerPackage!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v3

    .line 802
    :cond_11
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isBindNotificationListenerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 803
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_12

    .line 804
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- isBindNotificationListenerPackage!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v3

    :cond_13
    const/4 p0, 0x2

    return p0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 14

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    .line 279
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ILjava/lang/String;II)Z
    .locals 14

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 274
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v1, p7

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 310
    invoke-static {v12, v9}, Lcom/android/server/am/MARsPolicyManager;->isIntentProhibited(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_0

    return v14

    :cond_0
    const-string v2, "com.google.android.projection.gearhead"

    .line 315
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "bindService"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Ljava/lang/String;I)V

    :cond_1
    if-eqz v12, :cond_2

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 318
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForSpecificCase(Ljava/lang/String;I)V

    .line 322
    :cond_2
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    .line 323
    :try_start_0
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2, v4, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    .line 327
    :goto_0
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    const/4 v8, -0x1

    const/16 v17, 0x0

    if-eqz v2, :cond_8

    .line 328
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_8

    move/from16 v4, v17

    const/4 v5, 0x0

    .line 330
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 331
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 333
    iget-object v6, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 334
    sget-object v6, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string v7, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 347
    :cond_4
    iget v6, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 351
    :cond_6
    :goto_3
    iget v2, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move v4, v14

    goto :goto_4

    :cond_7
    move v2, v8

    move v6, v2

    move/from16 v4, v17

    :goto_4
    move/from16 v18, v4

    goto :goto_5

    :cond_8
    move v2, v8

    move v6, v2

    move/from16 v4, v17

    move/from16 v18, v4

    const/4 v5, 0x0

    :goto_5
    if-nez v4, :cond_c

    .line 364
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v7

    if-eqz v7, :cond_c

    .line 366
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-eqz v7, :cond_c

    move/from16 v3, v17

    .line 368
    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v3, v14, :cond_c

    .line 369
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/MARsPackageInfo;

    .line 371
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_9

    .line 372
    sget-object v14, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string v8, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v14, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_7

    .line 376
    :cond_9
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    if-eq v1, v8, :cond_b

    const/4 v8, -0x1

    if-ne v1, v8, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, -0x1

    .line 379
    :goto_8
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1

    .line 380
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    .line 381
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move/from16 v20, v2

    move-object v7, v14

    const/4 v4, 0x1

    move v14, v1

    goto :goto_9

    :cond_c
    move/from16 v20, v2

    move v14, v6

    move v3, v8

    const/4 v7, 0x0

    :goto_9
    if-nez v4, :cond_11

    .line 389
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v12, :cond_d

    .line 390
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_d
    const-string v0, ""

    :goto_a
    move-object v7, v0

    .line 392
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_b

    :cond_e
    move v1, v8

    .line 393
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v2, p13

    move/from16 v3, p12

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v18

    move-object/from16 v10, p11

    .line 392
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_f
    const-string/jumbo v0, "provider"

    .line 395
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 398
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    move-object/from16 p5, v0

    move-object/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, p4

    move-wide/from16 p9, v1

    invoke-virtual/range {p5 .. p10}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 400
    :cond_10
    monitor-exit v15

    return v17

    :cond_11
    if-eqz p8, :cond_15

    if-eqz v7, :cond_15

    if-nez v18, :cond_15

    .line 414
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v12, :cond_12

    .line 415
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_12
    const-string v0, ""

    :goto_c
    move-object v7, v0

    .line 417
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_d

    :cond_13
    move v1, v8

    .line 418
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v2, p13

    move/from16 v3, p12

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v18

    move-object/from16 v10, p11

    .line 417
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 420
    :cond_14
    monitor-exit v15

    return v17

    :cond_15
    if-eqz v7, :cond_19

    .line 425
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-nez v1, :cond_19

    if-nez v5, :cond_19

    .line 426
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz v12, :cond_16

    .line 427
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_16
    const-string v0, ""

    :goto_e
    move-object v7, v0

    .line 429
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_f

    :cond_17
    move v1, v8

    .line 430
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v2, p13

    move/from16 v3, p12

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v18

    move-object/from16 v10, p11

    .line 429
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 432
    :cond_18
    monitor-exit v15

    return v17

    :cond_19
    if-eqz v18, :cond_1a

    .line 438
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v1

    move/from16 v21, v1

    goto :goto_10

    :cond_1a
    move/from16 v21, v3

    :goto_10
    const/4 v1, 0x4

    if-eqz v7, :cond_1b

    .line 442
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move v6, v2

    goto :goto_11

    :cond_1b
    if-eqz v18, :cond_1c

    move v6, v1

    goto :goto_11

    :cond_1c
    move/from16 v6, v17

    :goto_11
    if-eqz v7, :cond_1d

    .line 443
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v2

    goto :goto_12

    :cond_1d
    if-eqz v18, :cond_1e

    if-nez v21, :cond_1e

    const/4 v2, 0x2

    goto :goto_12

    :cond_1e
    const/4 v2, 0x1

    :goto_12
    const/16 v3, 0x8

    if-eqz v5, :cond_1f

    .line 446
    iget-boolean v8, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v8, :cond_1f

    move v2, v3

    :cond_1f
    if-eqz v18, :cond_20

    if-eqz v5, :cond_20

    .line 450
    iget-object v5, v5, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v5, v5, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_13

    :cond_20
    move/from16 v5, v17

    :goto_13
    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/BaseRestrictionMgr;->getRestrictionsByCurrentLevel(IZ)I

    move-result v8

    if-ne v6, v1, :cond_21

    and-int/lit8 v1, v8, 0x0

    if-eqz v1, :cond_21

    move/from16 v4, v17

    :cond_21
    const/high16 v1, 0x2000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_22

    .line 458
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-nez v1, :cond_22

    move/from16 v4, v17

    :cond_22
    const/high16 v1, 0x4000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_23

    .line 464
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-eqz v1, :cond_23

    move/from16 v4, v17

    :cond_23
    const/high16 v1, 0x8000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_24

    .line 470
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-nez v1, :cond_24

    move/from16 v4, v17

    :cond_24
    const/high16 v1, 0x10000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_25

    .line 476
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-eqz v1, :cond_25

    move/from16 v4, v17

    :cond_25
    if-eqz v4, :cond_54

    const-string v1, "activity"

    .line 485
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_26

    move/from16 p7, v6

    move-object/from16 v23, v7

    move/from16 p9, v14

    move/from16 v1, v17

    move/from16 v24, v1

    :goto_14
    const/4 v2, 0x1

    :goto_15
    const/16 v22, -0x1

    goto/16 :goto_27

    :cond_26
    and-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_28

    .line 493
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_16

    :cond_27
    move/from16 v1, v17

    :goto_16
    const/4 v2, 0x1

    goto :goto_17

    :cond_28
    move/from16 v1, v17

    move v2, v1

    :goto_17
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_2a

    .line 499
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    const/4 v2, 0x1

    :cond_2a
    and-int/lit8 v4, v8, 0x8

    if-eqz v4, :cond_2c

    .line 504
    invoke-virtual {v0, v13, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Lcom/android/server/am/BaseRestrictionMgr;->isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 505
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v5

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    .line 505
    invoke-virtual {v5, v3, v8, v10, v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 507
    :cond_2b
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block activity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p10 .. p10}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --- isBlockAssociatedActivity which is not started by itself."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v1

    move/from16 p7, v6

    move-object/from16 v23, v7

    move/from16 p9, v14

    move/from16 v1, v17

    goto :goto_14

    :cond_2c
    move/from16 v24, v1

    move/from16 p7, v6

    move-object/from16 v23, v7

    move/from16 p9, v14

    move/from16 v1, v17

    goto :goto_15

    :cond_2d
    const-string/jumbo v1, "startService"

    .line 512
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "bindService"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto/16 :goto_21

    :cond_2e
    const-string/jumbo v1, "provider"

    .line 540
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_2f

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 p7, v6

    move-object/from16 v6, p5

    move-object/from16 v23, v7

    move/from16 v7, v20

    move/from16 p9, v14

    const/16 v22, -0x1

    move v14, v8

    move/from16 v8, p7

    .line 542
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_30

    const/4 v1, 0x1

    goto :goto_18

    :cond_2f
    move/from16 p7, v6

    move-object/from16 v23, v7

    move/from16 p9, v14

    const/16 v22, -0x1

    move v14, v8

    :cond_30
    move/from16 v1, v17

    :goto_18
    and-int/lit16 v2, v14, 0x200

    if-eqz v2, :cond_32

    .line 550
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v1, 0x1

    :cond_31
    const/4 v2, 0x1

    goto :goto_19

    :cond_32
    move/from16 v2, v17

    :goto_19
    and-int/lit16 v3, v14, 0x400

    if-eqz v3, :cond_34

    .line 556
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    const/16 v24, 0x1

    goto :goto_1a

    :cond_33
    move/from16 v24, v1

    const/4 v2, 0x1

    goto :goto_1a

    :cond_34
    move/from16 v24, v1

    :goto_1a
    and-int/lit16 v1, v14, 0x800

    if-eqz v1, :cond_52

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v20

    move/from16 v8, p7

    .line 562
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_51

    goto/16 :goto_25

    :cond_35
    move/from16 p7, v6

    move-object/from16 v23, v7

    move/from16 p9, v14

    const/16 v22, -0x1

    move v14, v8

    const-string v1, "broadcast"

    .line 568
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    if-eqz v12, :cond_47

    and-int/lit16 v1, v14, 0x1000

    if-eqz v1, :cond_36

    goto/16 :goto_1f

    :cond_36
    and-int/lit16 v1, v14, 0x2000

    if-eqz v1, :cond_38

    .line 576
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_1b

    :cond_37
    move/from16 v1, v17

    :goto_1b
    const/4 v2, 0x1

    goto :goto_1c

    :cond_38
    move/from16 v1, v17

    move v2, v1

    :goto_1c
    and-int/lit16 v3, v14, 0x4000

    if-eqz v3, :cond_3a

    .line 582
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v1, 0x1

    :cond_39
    const/4 v2, 0x1

    :cond_3a
    const v3, 0x8000

    and-int/2addr v3, v14

    if-eqz v3, :cond_3c

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 589
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_1d

    :cond_3b
    move v2, v1

    move/from16 v1, v17

    :goto_1d
    const/4 v3, 0x1

    goto :goto_1e

    :cond_3c
    move v3, v2

    move v2, v1

    move/from16 v1, v17

    :goto_1e
    const/high16 v4, 0x20000

    and-int/2addr v4, v14

    move/from16 v8, p7

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    if-ne v8, v4, :cond_3d

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    .line 600
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "foreground"

    move-object/from16 v4, p6

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    const/4 v3, 0x1

    :cond_3e
    const/high16 v4, 0x80000

    and-int/2addr v4, v14

    if-eqz v4, :cond_40

    .line 609
    invoke-virtual {v0, v13, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    const/4 v3, 0x1

    :cond_40
    const/high16 v4, 0x100000

    and-int/2addr v4, v14

    if-eqz v4, :cond_42

    .line 616
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v9, v3}, Lcom/android/server/am/BaseRestrictionMgr;->isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v2, 0x1

    :cond_41
    const/4 v3, 0x1

    :cond_42
    const/high16 v4, 0x40000

    and-int/2addr v4, v14

    if-eqz v4, :cond_44

    .line 623
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v0, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isCurrentLauncherApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v2, 0x1

    :cond_43
    const/4 v3, 0x1

    :cond_44
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v14

    if-eqz v4, :cond_46

    .line 629
    invoke-virtual {v0, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isSpageApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move/from16 p7, v8

    const/4 v2, 0x1

    const/16 v24, 0x1

    goto/16 :goto_27

    :cond_45
    move/from16 v24, v2

    move/from16 p7, v8

    goto/16 :goto_26

    :cond_46
    move/from16 v24, v2

    move v2, v3

    move/from16 p7, v8

    goto/16 :goto_27

    :cond_47
    :goto_1f
    move/from16 v8, p7

    :goto_20
    move/from16 p7, v8

    move/from16 v1, v17

    move/from16 v24, v1

    goto/16 :goto_26

    :cond_48
    move/from16 v8, p7

    const-string v1, "backup"

    .line 633
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/high16 v1, 0x1000000

    and-int/2addr v1, v14

    if-eqz v1, :cond_49

    goto :goto_20

    :cond_49
    move/from16 p7, v8

    move/from16 v1, v17

    move v2, v1

    move/from16 v24, v2

    goto/16 :goto_27

    :cond_4a
    :goto_21
    move-object/from16 v23, v7

    move/from16 p9, v14

    const/16 v22, -0x1

    move v14, v8

    move v8, v6

    and-int/lit8 v1, v14, 0x10

    if-eqz v1, :cond_4c

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v20

    move/from16 p7, v8

    .line 515
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_22

    :cond_4b
    move/from16 v1, v17

    :goto_22
    const/4 v2, 0x1

    goto :goto_23

    :cond_4c
    move/from16 p7, v8

    move/from16 v1, v17

    move v2, v1

    :goto_23
    and-int/lit8 v3, v14, 0x20

    if-eqz v3, :cond_4e

    .line 523
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    const/4 v2, 0x1

    :cond_4e
    and-int/lit8 v3, v14, 0x40

    if-eqz v3, :cond_50

    .line 529
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    const/16 v24, 0x1

    goto :goto_24

    :cond_4f
    move/from16 v24, v1

    const/4 v2, 0x1

    goto :goto_24

    :cond_50
    move/from16 v24, v1

    :goto_24
    and-int/lit16 v1, v14, 0x80

    if-eqz v1, :cond_52

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v20

    move/from16 v8, p7

    .line 535
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_51

    :goto_25
    const/16 v24, 0x1

    :cond_51
    move/from16 v1, v17

    :goto_26
    const/4 v2, 0x1

    goto :goto_27

    :cond_52
    move/from16 v1, v17

    :goto_27
    if-nez v2, :cond_53

    const/16 v24, 0x1

    :cond_53
    const/4 v2, 0x1

    xor-int/lit8 v4, v24, 0x1

    move v14, v4

    goto :goto_28

    :cond_54
    move/from16 p7, v6

    move-object/from16 v23, v7

    move/from16 p9, v14

    const/16 v22, -0x1

    move v14, v4

    move/from16 v1, v17

    :goto_28
    if-nez v14, :cond_55

    if-eqz v1, :cond_55

    .line 648
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    move/from16 v6, p9

    const/4 v2, 0x1

    invoke-virtual {v1, v13, v2, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    goto :goto_29

    :cond_55
    move/from16 v6, p9

    .line 652
    :goto_29
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v13, v6}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5a

    if-nez v14, :cond_5a

    const-string/jumbo v0, "provider"

    .line 655
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 657
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    move-object v1, v13

    move v2, v6

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    goto :goto_2a

    .line 659
    :cond_56
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v13, v6, v11}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    :goto_2a
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hostingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is allowed by freecess, caller is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    if-eqz v12, :cond_57

    .line 665
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_57
    const-string v0, ""

    :goto_2b
    move-object v7, v0

    .line 666
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v16, :cond_58

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_2c

    :cond_58
    move/from16 v1, v22

    .line 667
    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v2, p13

    move/from16 v3, p12

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v18

    move-object/from16 v10, p11

    .line 666
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 669
    :cond_59
    monitor-exit v15

    return v17

    :cond_5a
    if-nez v14, :cond_5b

    move-object/from16 v1, v23

    if-eqz v1, :cond_5b

    .line 672
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 673
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 676
    :cond_5b
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_5c

    if-eqz v14, :cond_5c

    .line 677
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hostingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is Restricted by policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_5c
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-nez v1, :cond_5d

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v1, :cond_5d

    .line 683
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, v6, :cond_5d

    .line 684
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    move v1, v14

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v13

    move/from16 v5, v21

    move/from16 v6, v20

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 688
    :cond_5d
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    if-nez v14, :cond_60

    if-eqz v12, :cond_5e

    .line 689
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_5e
    const-string v0, ""

    :goto_2d
    move-object v7, v0

    .line 690
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v16, :cond_5f

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_2e

    :cond_5f
    move/from16 v1, v22

    .line 691
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move/from16 v2, p13

    move/from16 v3, p12

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide v8, v15

    move-object/from16 v10, p11

    .line 690
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_60
    return v14

    :catchall_0
    move-exception v0

    .line 680
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLjava/lang/String;II)Z
    .locals 14

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 290
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final isSamsungService(Ljava/lang/String;I)Z
    .locals 3

    const-string/jumbo v0, "system"

    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "com.sec."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.baidu.BaiduMap"

    .line 885
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "com.baidu.searchbox_samsung"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.baidu.netdisk_ss"

    .line 886
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 890
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 891
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_2

    .line 892
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSamsungService -- SystemPackage:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    .line 880
    :cond_4
    :goto_1
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_5

    .line 881
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSamsungService -- SamsungService:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method public final isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 820
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 821
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_0

    .line 822
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSelfIntent :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 3

    if-eqz p3, :cond_0

    .line 923
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 924
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "android"

    .line 927
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.MediaRoute2ProviderService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "binderCallingUid"

    const/16 v2, 0x3e8

    .line 928
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v2, :cond_3

    .line 929
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 933
    :cond_2
    sget-object p3, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "isShouldBlockCase: not block AccountAuthenticator"

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 930
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "isShouldBlockCase: block AccountAuthenticator"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 936
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 937
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p3, p4, p2, p1, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    if-eqz p4, :cond_0

    .line 848
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 849
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p4, "android"

    .line 852
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    if-nez p0, :cond_1

    .line 853
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->isEnabledAccessibilityApp(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 854
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 858
    :cond_1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 859
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p4

    invoke-virtual {p4, v0, p3, p1, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    .line 865
    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 866
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p4

    const/4 v1, 0x7

    invoke-virtual {p4, v1, p3, p1, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 868
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 869
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isSpageApp(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string p0, "com.samsung.android.app.spage"

    .line 839
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 840
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call from spage app :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSyncManagerPackage(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 978
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.content.SyncAdapter"

    .line 979
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 981
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 984
    sget-object p2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSyncManagerPackage exception="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return p0
.end method

.method public final isSystemPackage(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1019
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    .line 1025
    :cond_0
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-nez p2, :cond_1

    return v0

    .line 1029
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android"

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 1034
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSystemPackage exception="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    return-void
.end method
