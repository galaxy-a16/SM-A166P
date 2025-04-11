.class public final Landroid/os/epic/EpicAIDLObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "EpicAIDLObject.java"


# static fields
.field public static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest"

.field public static final EPIC_CLASS_STUB:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest$Stub"

.field public static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicHandle"

.field public static final IEPIC_AIDL_INTERFACE:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

.field public static final TAG:Ljava/lang/String; = "EpicObject"

.field public static m_epic_asInterface_func:Ljava/lang/reflect/Method; = null

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

.field public static m_epic_request_stub_cls:Ljava/lang/Class; = null

.field public static m_has_load:Z = false


# instance fields
.field public m_binder:Landroid/os/IBinder;

.field public m_handle_obj:Ljava/lang/Object;

.field public m_request_obj:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    .line 46
    invoke-virtual {p0}, Landroid/os/epic/EpicAIDLObject;->create_instance()V

    .line 47
    invoke-virtual {p0}, Landroid/os/epic/EpicAIDLObject;->getService()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const-string v0, "EpicObject"

    .line 53
    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;-><init>()V

    .line 55
    sget-boolean v1, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 62
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "failed to get request_obj"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 69
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 5

    const-string v0, "EpicObject"

    .line 78
    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;-><init>()V

    .line 80
    sget-boolean v1, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 87
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "failed to get request_obj"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 94
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 95
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public acquire_lock()Z
    .locals 5

    .line 106
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 116
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EpicObject"

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_conditional(Ljava/lang/String;)Z
    .locals 4

    .line 202
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 212
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 213
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    .line 214
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option(II)Z
    .locals 4

    .line 154
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 164
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    .line 166
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option_multi([I[I)Z
    .locals 4

    .line 178
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 188
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 189
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    .line 190
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public final create_instance()V
    .locals 17

    .line 295
    const-class v1, Landroid/os/epic/EpicAIDLObject;

    monitor-enter v1

    .line 297
    :try_start_0
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 298
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest"

    .line 300
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicHandle"

    .line 301
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest$Stub"

    .line 302
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_stub_cls:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    .line 304
    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Class;

    .line 305
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    new-array v7, v2, [Ljava/lang/Class;

    .line 306
    const-class v8, [I

    aput-object v8, v7, v5

    new-array v8, v2, [Ljava/lang/Class;

    .line 307
    sget-object v9, Landroid/os/epic/EpicAIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v9, v8, v5

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v9, v10, v5

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v9, v12, v5

    aput-object v6, v12, v2

    const/4 v13, 0x2

    aput-object v6, v12, v13

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v9, v6, v5

    .line 310
    const-class v11, [I

    aput-object v11, v6, v2

    const-class v11, [I

    aput-object v11, v6, v13

    new-array v11, v13, [Ljava/lang/Class;

    aput-object v9, v11, v5

    .line 311
    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v2

    new-array v14, v13, [Ljava/lang/Class;

    aput-object v9, v14, v5

    .line 312
    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v2

    new-array v15, v13, [Ljava/lang/Class;

    aput-object v9, v15, v5

    .line 313
    const-class v16, Ljava/lang/String;

    aput-object v16, v15, v2

    new-array v13, v13, [Ljava/lang/Class;

    aput-object v9, v13, v5

    .line 314
    const-class v5, Ljava/lang/String;

    aput-object v5, v13, v2

    const-string v5, "asInterface"

    .line 316
    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    .line 317
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "init"

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    .line 318
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "init_multi"

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    .line 319
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "acquire_lock"

    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 320
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "release_lock"

    invoke-virtual {v0, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 321
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "acquire_lock_option"

    invoke-virtual {v0, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 322
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "acquire_lock_multi_option"

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 323
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "acquire_lock_conditional"

    invoke-virtual {v0, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    .line 324
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "release_lock_conditional"

    invoke-virtual {v0, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    .line 325
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "perf_hint"

    invoke-virtual {v0, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 326
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v3, "hint_release"

    invoke-virtual {v0, v3, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 328
    sput-boolean v2, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 331
    :try_start_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 332
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 333
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EpicObject"

    .line 334
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final getService()V
    .locals 1

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

    .line 341
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string p0, "EpicObject"

    const-string v0, "failed to get service daemon binder"

    .line 343
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public hint_release(Ljava/lang/String;)Z
    .locals 4

    .line 274
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 283
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 284
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 285
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    .line 286
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .locals 4

    .line 250
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 260
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 261
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    .line 262
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock()Z
    .locals 5

    .line 130
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 140
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EpicObject"

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock_conditional(Ljava/lang/String;)Z
    .locals 4

    .line 226
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

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

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 236
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    .line 238
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method
