.class public Lcom/android/server/chimera/SystemRepositoryDefault$2;
.super Landroid/app/IProcessObserver$Stub;
.source "SystemRepositoryDefault.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepositoryDefault;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p2

    iget-object v1, v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmChimeraProcessObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-virtual {v1, v8}, Lcom/android/server/chimera/SystemRepositoryDefault;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    array-length v1, v10

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-virtual {v1, v8}, Lcom/android/server/chimera/SystemRepositoryDefault;->getUserId(I)I

    move-result v11

    iget-object v1, v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-virtual {v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aget-object v2, v10, v12

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iget-object v1, v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmChimeraProcessObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v5, v11

    move-object v6, v10

    move v7, v13

    invoke-interface/range {v1 .. v7}, Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-nez v13, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    aget-object v1, v10, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fputmLastForegroundApp(Lcom/android/server/chimera/SystemRepositoryDefault;Landroid/util/Pair;)V

    :cond_2
    monitor-exit v9

    return-void

    :cond_3
    :goto_1
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method
