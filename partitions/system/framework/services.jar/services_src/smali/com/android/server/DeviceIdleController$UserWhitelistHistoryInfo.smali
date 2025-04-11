.class public Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# instance fields
.field public final caller:Lcom/android/server/DeviceIdleController$BinderCaller;

.field public final target:Lcom/android/server/DeviceIdleController$TargetPkg;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field public final time:J

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;ILcom/android/server/DeviceIdleController$BinderCaller;Lcom/android/server/DeviceIdleController$TargetPkg;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->time:J

    iput p2, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->type:I

    iput-object p3, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->caller:Lcom/android/server/DeviceIdleController$BinderCaller;

    iput-object p4, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->target:Lcom/android/server/DeviceIdleController$TargetPkg;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->type:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string v0, "[add   ] "

    goto :goto_0

    :cond_0
    const-string v0, "[remove] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->target:Lcom/android/server/DeviceIdleController$TargetPkg;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController$TargetPkg;->-$$Nest$fgetpkgName(Lcom/android/server/DeviceIdleController$TargetPkg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->target:Lcom/android/server/DeviceIdleController$TargetPkg;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController$TargetPkg;->-$$Nest$fgetuid(Lcom/android/server/DeviceIdleController$TargetPkg;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->type:I

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_4

    const/4 p0, 0x4

    if-eq v0, p0, :cond_2

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1

    const-string p0, "DeviceIdleController"

    const-string v0, "Unknown type of user whitelist"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "package removed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p0, "dumpsys"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p0, "deviceidle.xml"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->caller:Lcom/android/server/DeviceIdleController$BinderCaller;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->caller:Lcom/android/server/DeviceIdleController$BinderCaller;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController$BinderCaller;->-$$Nest$fgetprocName(Lcom/android/server/DeviceIdleController$BinderCaller;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$UserWhitelistHistoryInfo;->caller:Lcom/android/server/DeviceIdleController$BinderCaller;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController$BinderCaller;->-$$Nest$fgetpid(Lcom/android/server/DeviceIdleController$BinderCaller;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
