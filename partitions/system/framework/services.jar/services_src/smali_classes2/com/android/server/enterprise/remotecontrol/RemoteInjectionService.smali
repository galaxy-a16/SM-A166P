.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayHeight:I

.field public mCurrentDisplayWidth:I

.field public mDexScreenHeight:I

.field public mDexScreenWidth:I

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

.field public mKnoxRemoteScreenSessionOwnerUid:I

.field public mRemoteControlDisabled:Landroid/util/SparseArray;

.field public mRemoteScreenHeight:I

.field public mRemoteScreenWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;)V
    .locals 4

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 109
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 113
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 120
    iget-object v1, p1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 121
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    :goto_0
    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    :goto_1
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 126
    invoke-virtual {p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 p1, -0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateKnoxRemoteScreenSessionUid(I)V

    .line 128
    sput-object p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 131
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 132
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 133
    const-class p1, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService-IA;)V

    invoke-static {p1, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 5

    .line 719
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermission(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 720
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p3, 0x0

    .line 727
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "allowRemoteControl"

    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 731
    :try_start_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 732
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move p3, p2

    goto :goto_1

    .line 738
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    :goto_1
    :try_start_2
    const-string p0, "RemoteInjection"

    const-string p1, "RemoteInjection.allowRemoteControl() exception : "

    .line 736
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p2, p3

    :goto_2
    return p2

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 850
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    .line 852
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 855
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 856
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const-string v0, "RemoteControl disallowed userId : "

    .line 858
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 860
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 861
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 862
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "None"

    .line 867
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final enforceRemoteControlPermission(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    if-eqz p2, :cond_0

    .line 155
    new-instance p2, Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0

    .line 160
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceRemoteControlPermissionNoActiveAdmin()V
    .locals 2

    .line 168
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceRemoteDexPermissionNoActiveAdmin()V
    .locals 2

    .line 176
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSystemUser()V
    .locals 1

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDisplay(Z)Landroid/view/Display;
    .locals 1

    if-eqz p1, :cond_0

    .line 824
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 825
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplayIdDex()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayIdDex()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .locals 0

    .line 815
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getRemoteHeight(Landroid/view/Display;)F
    .locals 1

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    :goto_0
    int-to-float p0, p0

    .line 652
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemoteHeight() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteInjection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getRemoteHeightForDex(Landroid/view/Display;)F
    .locals 1

    .line 658
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    .line 659
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    goto :goto_0

    .line 660
    :cond_3
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 664
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemoteHeightForDex() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteInjection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getRemoteWidth(Landroid/view/Display;)F
    .locals 1

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    :goto_0
    int-to-float p0, p0

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemoteWidth() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteInjection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getRemoteWidthForDex(Landroid/view/Display;)F
    .locals 1

    .line 640
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 644
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    .line 641
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 642
    :cond_3
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    goto :goto_0

    .line 646
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemoteWidthForDex() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteInjection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getUserIdToCheckPolicy(I)I
    .locals 2

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 805
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isAppSeparationUserId(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 809
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    throw p0
.end method

.method public final getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    return-object v0
.end method

.method public final injectInputManagerKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 0

    .line 563
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public final injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .line 569
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 11

    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 203
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v8, 0x0

    if-nez p1, :cond_0

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 210
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 209
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    throw p2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v0

    const-string v1, "RemoteInjection"

    if-eqz v0, :cond_1

    const-string p0, "Remote Control is disabled, couldnt inject key event"

    .line 227
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 229
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 228
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplayIdDex()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 237
    invoke-virtual {p1, v8}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 241
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error injecting key event : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v8, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 249
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI succeeded"

    .line 248
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 254
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 253
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 259
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8
.end method

.method public injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteDexPermissionNoActiveAdmin()V

    .line 450
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplayIdDex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p1, "RemoteInjection"

    const-string p2, "Error injecting Key event in dex screen"

    .line 455
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public final injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 18

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 522
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    .line 524
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v15

    if-nez v4, :cond_0

    const/16 v4, 0x101

    :cond_0
    move/from16 v16, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    .line 533
    :cond_2
    new-instance v7, Landroid/view/KeyEvent;

    or-int/lit8 v17, v5, 0x8

    move-object v4, v7

    move-wide v5, v0

    move-object v0, v7

    move-wide v7, v2

    move v1, v15

    move/from16 v15, v17

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 537
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11

    .line 282
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 285
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v0

    const-string v1, "RemoteInjection"

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Remote Control is disabled, couldnt inject pointer event"

    .line 293
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 295
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 294
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 297
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_0
    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 305
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error injecting trackball event : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v10, :cond_1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 313
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI succeeded"

    .line 312
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 317
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 316
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 324
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10
.end method

.method public injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
    .locals 11

    .line 395
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteDexPermissionNoActiveAdmin()V

    .line 397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 398
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v0

    const-string v1, "RemoteInjection"

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Remote Control is disabled, couldnt inject pointer event"

    .line 406
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 408
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 407
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 410
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_0
    const/4 v0, 0x0

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplayIdDex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    .line 419
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 421
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternalDex(Landroid/view/MotionEvent;Z)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error injecting pointer event in dex screen : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v10, :cond_2

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 430
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI succeeded"

    .line 429
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 434
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 433
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    if-eqz v0, :cond_3

    .line 439
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 441
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10
.end method

.method public final injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .line 541
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    .line 543
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 545
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method public final injectPointerEventInternalDex(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .line 549
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v0, 0x3002

    .line 550
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 551
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11

    .line 343
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    .line 345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 346
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v0

    const-string v1, "RemoteInjection"

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Remote Control is disabled, couldnt inject track ball event"

    .line 354
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 356
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI failed"

    .line 355
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 358
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    .line 364
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    .line 367
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error injecting trackball event : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v10, :cond_1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 373
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI succeeded"

    .line 372
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 378
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI failed"

    .line 377
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_2
    if-eqz p1, :cond_2

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 386
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10
.end method

.method public final injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .line 555
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const v0, 0x10004

    .line 557
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 559
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method public final isDexDisplay(I)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDexModeOn()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInPortrait(Landroid/view/Display;)Z
    .locals 0

    .line 141
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRemoteControlAllowed(I)Z
    .locals 3

    const/4 v0, 0x1

    .line 748
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowRemoteControl"

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 751
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    move v0, p1

    goto :goto_0

    :catch_0
    const-string p0, "RemoteInjection"

    const-string p1, "RemoteInjection.isRemoteControlAllowed() exception : "

    .line 758
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 764
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isRemoteControlDisabled(I)Z
    .locals 1

    .line 769
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRemoteControlDisabledInternal(II)Z
    .locals 0

    .line 790
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 792
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getUserIdToCheckPolicy(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 796
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isRemoteInjectionDisabled(I)Z
    .locals 5

    .line 776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 778
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    .line 779
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 778
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p0, "RemoteInjection"

    const-string p1, "Failed to get top activity user id"

    .line 781
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    throw p0
.end method

.method public final isUsingKnoxRemoteScreen()Z
    .locals 1

    .line 714
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 486
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 485
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public systemReady()V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 504
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexModeOn()Z

    move-result v2

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexDisplay(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 588
    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplay(Z)Landroid/view/Display;

    move-result-object v7

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 593
    new-array v8, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 594
    new-array v15, v14, [Landroid/view/MotionEvent$PointerProperties;

    move v9, v5

    :goto_1
    if-ge v9, v14, :cond_5

    .line 596
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v8, v9

    .line 597
    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v10, v15, v9

    .line 598
    aget-object v10, v8, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 599
    aget-object v10, v15, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 600
    aget-object v10, v15, v9

    iput v4, v10, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-nez v9, :cond_1

    if-eqz v6, :cond_1

    const/4 v11, 0x3

    .line 603
    iput v11, v10, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 606
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_2

    .line 607
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteWidthForDex(Landroid/view/Display;)F

    move-result v10

    goto :goto_2

    .line 608
    :cond_2
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteWidth(Landroid/view/Display;)F

    move-result v10

    :goto_2
    if-eqz v6, :cond_3

    .line 609
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteHeightForDex(Landroid/view/Display;)F

    move-result v11

    goto :goto_3

    .line 610
    :cond_3
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteHeight(Landroid/view/Display;)F

    move-result v11

    .line 612
    :goto_3
    aget-object v12, v8, v9

    iget v13, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    mul-float/2addr v13, v4

    iput v13, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 614
    iget v4, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v10, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v11

    mul-float/2addr v4, v10

    iput v4, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 620
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplayIdDex()I

    move-result v5

    :cond_7
    :goto_4
    move/from16 v24, v5

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v20

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v23

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v25

    move-object/from16 v16, v8

    .line 625
    invoke-static/range {v9 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final updateCurrentDisplayDimensions(I)V
    .locals 1

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexDisplay(I)Z

    move-result p1

    .line 670
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplay(Z)Landroid/view/Display;

    move-result-object p1

    .line 671
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 684
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 685
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mCurrentDisplayWidth : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentDisplayHeight : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteInjection"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDexScreenDimensions(III)V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceSystemUser()V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInjectionService: updateDexScreenDimensions() width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInjection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateKnoxRemoteScreenSessionUid(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 468
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 469
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplayIdDex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 472
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 473
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    :goto_0
    return-void
.end method

.method public final updateKnoxRemoteScreenSessionUid(I)V
    .locals 0

    .line 710
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    return-void
.end method

.method public updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 2

    .line 692
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceSystemUser()V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInjectionService: updateRemoteScreenDimensions() width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInjection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateKnoxRemoteScreenSessionUid(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 697
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 698
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 701
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 702
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 705
    :goto_0
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 706
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    return-void
.end method
