.class public final Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;
.super Landroid/app/tare/IEconomyManager$Stub;
.source "InternalResourceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Landroid/app/tare/IEconomyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1327
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "TARE-IRS"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1330
    :cond_0
    invoke-static {p3}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 1331
    aget-object p3, p3, p1

    const-string v0, "-h"

    .line 1332
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "--help"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "-a"

    .line 1335
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1339
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_4

    .line 1340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1333
    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 1345
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1347
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    new-instance p3, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {p3, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {p0, p3, p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mdumpInternal(Lcom/android/server/tare/InternalResourceService;Landroid/util/IndentingPrintWriter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1350
    throw p0
.end method

.method public getEnabledMode()I
    .locals 0

    .line 1356
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getEnabledMode()I

    move-result p0

    return p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1363
    new-instance v0, Lcom/android/server/tare/TareShellCommand;

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {v0, v1}, Lcom/android/server/tare/TareShellCommand;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 1364
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 1363
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
