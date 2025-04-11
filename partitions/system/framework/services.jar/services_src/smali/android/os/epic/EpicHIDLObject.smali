.class public final Landroid/os/epic/EpicHIDLObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "EpicHIDLObject.java"


# static fields
.field public static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

.field public static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

.field public static final TAG:Ljava/lang/String; = "EpicObject"

.field public static m_epic_getservice_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_handle_cls:Ljava/lang/Class; = null

.field public static m_epic_hint_release_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_init_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_init_multi_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_perf_hint_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_release_conditional_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_release_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_cls:Ljava/lang/Class; = null

.field public static m_epic_request_conditional_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_opt_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_opt_multi_func:Ljava/lang/reflect/Method; = null

.field public static m_has_load:Z = false


# instance fields
.field public m_handle_obj:Ljava/lang/Object;

.field public m_request_obj:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/epic/EpicHIDLObject;->create_instance()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Landroid/os/epic/EpicHIDLObject;-><init>()V

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    invoke-direct {p0}, Landroid/os/epic/EpicHIDLObject;-><init>()V

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/os/epic/EpicHIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public acquire_lock()Z
    .locals 5

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    move v1, v3

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_conditional(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move v1, p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option(II)Z
    .locals 4

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v3, p2

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    move v1, p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option_multi([I[I)Z
    .locals 4

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object p2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    move v1, p0

    :catch_0
    :cond_3
    :goto_2
    return v1
.end method

.method public final create_instance()V
    .locals 15

    const-class p0, Landroid/os/epic/EpicHIDLObject;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/util/ArrayList;

    aput-object v7, v6, v2

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v0, v7, v2

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v0, v8, v2

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v0, v10, v2

    aput-object v5, v10, v1

    const/4 v11, 0x2

    aput-object v5, v10, v11

    new-array v5, v9, [Ljava/lang/Class;

    aput-object v0, v5, v2

    const-class v9, Ljava/util/ArrayList;

    aput-object v9, v5, v1

    const-class v9, Ljava/util/ArrayList;

    aput-object v9, v5, v11

    new-array v9, v11, [Ljava/lang/Class;

    aput-object v0, v9, v2

    const-class v12, Ljava/lang/String;

    aput-object v12, v9, v1

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v0, v12, v2

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v1

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v0, v13, v2

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v1

    new-array v11, v11, [Ljava/lang/Class;

    aput-object v0, v11, v2

    const-class v0, Ljava/lang/String;

    aput-object v0, v11, v1

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "getService"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "init"

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "init_multi"

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "acquire_lock"

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v2, "release_lock"

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "acquire_lock_option"

    invoke-virtual {v0, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "acquire_lock_multi_option"

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "acquire_lock_conditional"

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v2, "release_lock_conditional"

    invoke-virtual {v0, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v2, "perf_hint"

    invoke-virtual {v0, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v2, "hint_release"

    invoke-virtual {v0, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    sput-boolean v1, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public hint_release(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move v1, p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move v1, p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock()Z
    .locals 5

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    move v1, v3

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock_conditional(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move v1, p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
