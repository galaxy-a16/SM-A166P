.class public Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
.super Ljava/lang/Object;
.source "WindowManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;


# static fields
.field public static final PRESS_TYPES_TO_BLOCK:Ljava/util/List;

.field public static sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;


# instance fields
.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->PRESS_TYPES_TO_BLOCK:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 57
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blockKeyCode(I)V
    .locals 8

    const/16 v1, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, -0x2

    move-object v0, p0

    move v2, p1

    .line 121
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->putKeyCustomizationInfo(IIILandroid/content/Intent;III)V

    return-void
.end method

.method public clearAllConfiguration(I)V
    .locals 1

    const/16 v0, 0xa

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->clearAllConfiguration(II)V

    return-void
.end method

.method public clearAllConfiguration(II)V
    .locals 5

    const-string v0, "WindowManagerAdapter"

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 108
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearKeyCustomizationInfoByKeyCode with priority/keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v3, 0x4

    invoke-interface {p0, p2, p1, v3}, Landroid/view/IWindowManager;->clearKeyCustomizationInfoByAction(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 114
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail to clearAllConfiguration "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method

.method public final getKeyCustomizationInfo(ILjava/lang/Integer;I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 2

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 149
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 148
    invoke-interface {p0, p3, p2, p1}, Landroid/view/IWindowManager;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "WindowManagerAdapter"

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to getKeyCustomizationInfo "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw p0
.end method

.method public hasConfigurations(I)Z
    .locals 1

    const/16 v0, 0xa

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->hasConfigurations(II)Z

    move-result p0

    return p0
.end method

.method public final hasConfigurations(II)Z
    .locals 3

    .line 131
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->PRESS_TYPES_TO_BLOCK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getKeyCustomizationInfo(ILjava/lang/Integer;I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v2, p2, :cond_0

    iget v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final keyCustomizationInfoToString(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)Ljava/lang/String;
    .locals 2

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "priority/keyCode/action/dispatching/intent : "

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final putKeyCustomizationInfo(IIILandroid/content/Intent;III)V
    .locals 13

    move-object v0, p0

    const-string v1, "WindowManagerAdapter"

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 64
    :try_start_0
    new-instance v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-object v4, v12

    move/from16 v5, p6

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;II)V

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putKeyCustomizationInfo with pressType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, v12}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->keyCustomizationInfoToString(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v1, v4}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, v12}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to putKeyCustomizationInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw v0
.end method
