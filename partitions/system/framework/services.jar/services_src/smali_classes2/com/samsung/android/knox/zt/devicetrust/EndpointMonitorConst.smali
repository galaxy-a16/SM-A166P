.class public final Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;
.super Ljava/lang/Object;
.source "EndpointMonitorConst.java"


# static fields
.field public static final ERROR_ALREADY_DONE:I = -0x4

.field public static final ERROR_BY_SYSTEM:I = -0x5

.field public static final ERROR_INVALID_ARGUMENT:I = -0x2

.field public static final ERROR_LIMIT_EXCEEDED:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OPERATION_NOT_PERMITTED:I = -0x1

.field public static final ERROR_SERVICE_NOT_FOUND:I = -0x6

.field public static final EXTRAS_PACKAGE_NAME:I = 0x2

.field public static final EXTRAS_PROCESS_NAME:I = 0x1

.field public static final EXTRAS_SECURITY_CONTEXT:I = 0x4

.field public static final FLAG_TRACING_FS:I = 0x1

.field public static final FLAG_TRACING_PKT:I = 0x40

.field public static final FLAG_TRACING_SC_CLOSE:I = 0x4

.field public static final FLAG_TRACING_SC_EXECVE:I = 0x10

.field public static final FLAG_TRACING_SC_MOUNT:I = 0x8

.field public static final FLAG_TRACING_SC_OPEN:I = 0x2

.field public static final FLAG_TRACING_SK:I = 0x20

.field public static final GENERIC_SYSCALL_NR_CLOSE:I = 0x39

.field public static final GENERIC_SYSCALL_NR_EXECVE:I = 0xdd

.field public static final GENERIC_SYSCALL_NR_MOUNT:I = 0x28

.field public static final GENERIC_SYSCALL_NR_OPEN:I = 0x38

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_GENERALIZED:I = 0x2

.field public static final MODE_RAW:I = 0x3

.field public static final MODE_SIMPLIFIED:I = 0x1

.field public static final MON_TYPE_DOMAIN_ACCESS:I = 0x6

.field public static final MON_TYPE_FILE_ACCESS:I = 0x2

.field public static final MON_TYPE_SOCK_STATE_CHANGE:I = 0x3

.field public static final MON_TYPE_SYSTEM_CALL:I = 0x1

.field public static final MON_TYPE_TLS_PACKET:I = 0x5

.field public static final OPT_TRACE_APPLICATION_ONLY:Ljava/lang/String; = "app_only"

.field public static final TRACE_CLASS_DOMAIN_ACCESS:I = 0x2

.field public static final TRACE_CLASS_FILE_ACCESS:I = 0x1

.field public static final TRACE_EVENT_F2FS_DATAREAD_END:I = 0xd3

.field public static final TRACE_EVENT_F2FS_DATAREAD_START:I = 0xd2

.field public static final TRACE_EVENT_F2FS_DATAWRITE_END:I = 0xd5

.field public static final TRACE_EVENT_F2FS_DATAWRITE_START:I = 0xd4

.field public static final TRACE_EVENT_F2FS_IGET:I = 0xc9

.field public static final TRACE_EVENT_F2FS_IGET_EXIT:I = 0xca

.field public static final TRACE_EVENT_F2FS_READDIR:I = 0xcb

.field public static final TRACE_EVENT_F2FS_READPAGE:I = 0xcc

.field public static final TRACE_EVENT_F2FS_READPAGES:I = 0xcd

.field public static final TRACE_EVENT_F2FS_UNLINK_ENTER:I = 0xce

.field public static final TRACE_EVENT_F2FS_UNLINK_EXIT:I = 0xcf

.field public static final TRACE_EVENT_F2FS_WRITEPAGE:I = 0xd0

.field public static final TRACE_EVENT_F2FS_WRITEPAGES:I = 0xd1

.field public static final TRACE_EVENT_INET_SOCK_SET_STATE:I = 0x12d

.field public static final TRACE_EVENT_SCHED_CLS_EGRESS:I = 0x1f6

.field public static final TRACE_EVENT_SCHED_CLS_INGRESS:I = 0x1f5

.field public static final TRACE_EVENT_SYS_CLOSE:I = 0x68

.field public static final TRACE_EVENT_SYS_ENTER:I = 0x65

.field public static final TRACE_EVENT_SYS_EXECVE:I = 0x6a

.field public static final TRACE_EVENT_SYS_EXIT:I = 0x66

.field public static final TRACE_EVENT_SYS_MOUNT:I = 0x69

.field public static final TRACE_EVENT_SYS_OPEN:I = 0x67

.field public static final TRACE_FIRST_TYPE:I = 0x1

.field public static final TRACE_LAST_TYPE:I = 0x6

.field public static final TRACE_SYSTEM_ETC:I = 0x5

.field public static final TRACE_SYSTEM_F2FS:I = 0x2

.field public static final TRACE_SYSTEM_RAW_SYSCALL:I = 0x1

.field public static final TRACE_SYSTEM_SCHED:I = 0x4

.field public static final TRACE_SYSTEM_SOCK:I = 0x3

.field public static final TRACE_TYPE_DOMAIN:I = 0x6

.field public static final TRACE_TYPE_FS:I = 0x2

.field public static final TRACE_TYPE_PKT:I = 0x5

.field public static final TRACE_TYPE_PROC:I = 0x4

.field public static final TRACE_TYPE_SOCK:I = 0x3

.field public static final TRACE_TYPE_SYSCALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convScEventToScFlag(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x10

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static matchScEventToScFlags(II)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->convScEventToScFlag(I)I

    move-result p0

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static translateClass(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Domain Access"

    goto :goto_0

    :cond_1
    const-string p0, "File Access"

    :goto_0
    return-object p0
.end method

.method public static translateEvent(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "f2fs_datawrite_end"

    goto :goto_0

    :pswitch_1
    const-string p0, "f2fs_datawrite_start"

    goto :goto_0

    :pswitch_2
    const-string p0, "f2fs_dataread_end"

    goto :goto_0

    :pswitch_3
    const-string p0, "f2fs_dataread_start"

    goto :goto_0

    :pswitch_4
    const-string p0, "f2fs_writepages"

    goto :goto_0

    :pswitch_5
    const-string p0, "f2fs_writepage"

    goto :goto_0

    :pswitch_6
    const-string p0, "f2fs_unlink_exit"

    goto :goto_0

    :pswitch_7
    const-string p0, "f2fs_unlink_enter"

    goto :goto_0

    :pswitch_8
    const-string p0, "f2fs_readpages"

    goto :goto_0

    :pswitch_9
    const-string p0, "f2fs_readpage"

    goto :goto_0

    :pswitch_a
    const-string p0, "f2fs_readdir"

    goto :goto_0

    :pswitch_b
    const-string p0, "f2fs_iget_exit"

    goto :goto_0

    :pswitch_c
    const-string p0, "f2fs_iget"

    goto :goto_0

    :pswitch_d
    const-string/jumbo p0, "raw_syscalls___execve"

    goto :goto_0

    :pswitch_e
    const-string/jumbo p0, "raw_syscalls___mount"

    goto :goto_0

    :pswitch_f
    const-string/jumbo p0, "raw_syscalls___close"

    goto :goto_0

    :pswitch_10
    const-string/jumbo p0, "raw_syscalls___open"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "schedcls_egress"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "schedcls_ingress"

    goto :goto_0

    :cond_2
    const-string p0, "inet_sock_set_state"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateSystem(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "sched"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "sock"

    goto :goto_0

    :cond_2
    const-string p0, "f2fs"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "raw_syscalls"

    :goto_0
    return-object p0
.end method

.method public static validateTraceType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
