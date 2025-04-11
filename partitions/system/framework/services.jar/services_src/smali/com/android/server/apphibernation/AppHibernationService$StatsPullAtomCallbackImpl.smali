.class public final Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "AppHibernationService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 7

    .line 1065
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    const/16 v1, 0x277d

    const/16 v2, 0x277b

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    return v3

    :cond_1
    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmLock(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1091
    :try_start_0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {p0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmGlobalHibernationStates(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move v4, v3

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 1092
    iget-boolean v6, v5, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 1094
    iget-wide v5, v5, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    add-long/2addr v1, v5

    goto :goto_0

    .line 1097
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v5, 0xf4240

    .line 1098
    div-long/2addr v1, v5

    .line 1099
    invoke-static {p1, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p0

    .line 1098
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1097
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1073
    :cond_5
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 1074
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_7

    .line 1076
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1077
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v5}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1078
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 1081
    invoke-virtual {v5, v4}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1079
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v4

    .line 1078
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v3
.end method
