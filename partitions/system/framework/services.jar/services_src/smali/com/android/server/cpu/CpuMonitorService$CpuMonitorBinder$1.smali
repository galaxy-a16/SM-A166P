.class public Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;
.super Ljava/lang/Object;
.source "CpuMonitorService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 503
    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    iget-object p1, p1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-static {p1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$fgetmContext(Lcom/android/server/cpu/CpuMonitorService;)Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 508
    :try_start_0
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-static {p0, p1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$mdoDump(Lcom/android/server/cpu/CpuMonitorService;Landroid/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 507
    :try_start_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    return-void
.end method
