.class public Landroid/os/epic/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# static fields
.field public static final EPIC_AIDL_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

.field public static final EPIC_HIDL_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

.field public static m_has_load:Z = false

.field public static m_hidl_epic_getService_func:Ljava/lang/reflect/Method;

.field public static m_hidl_epic_request_cls:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Landroid/os/epic/IEpicObject;
    .locals 1

    .line 51
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadAIDL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/epic/EpicAIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicAIDLObject;-><init>(I)V

    return-object v0

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadHIDL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/os/epic/EpicHIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicHIDLObject;-><init>(I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create([I)Landroid/os/epic/IEpicObject;
    .locals 1

    .line 59
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadAIDL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/epic/EpicAIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicAIDLObject;-><init>([I)V

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadHIDL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/os/epic/EpicHIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicHIDLObject;-><init>([I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadAIDL()Z
    .locals 1

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

    .line 23
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadHIDL()Z
    .locals 6

    .line 27
    const-class v0, Landroid/os/epic/ObjectFactory;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    :try_start_0
    sget-object v3, Landroid/os/epic/ObjectFactory;->m_hidl_epic_request_cls:Ljava/lang/Class;

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/os/epic/ObjectFactory;->m_has_load:Z

    if-nez v3, :cond_0

    .line 30
    sput-boolean v1, Landroid/os/epic/ObjectFactory;->m_has_load:Z

    new-array v3, v2, [Ljava/lang/Class;

    const-string/jumbo v4, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

    .line 32
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/os/epic/ObjectFactory;->m_hidl_epic_request_cls:Ljava/lang/Class;

    const-string v5, "getService"

    .line 33
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/os/epic/ObjectFactory;->m_hidl_epic_getService_func:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 36
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    sget-object v0, Landroid/os/epic/ObjectFactory;->m_hidl_epic_getService_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 42
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_2

    :catch_1
    const-string v0, "ObjectFactory"

    const-string v1, "failed to get HIDL request"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    .line 36
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
