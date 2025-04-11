.class public Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/AbuseWakeLockDetector$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public static synthetic $r8$lambda$1ETSaSgfk8TlL-WhItG2YwKM5vI(Ljava/util/List;Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->lambda$onAbuseWakeLockAdded$0(Ljava/util/List;Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gMGwzzV4cc7VOd2Qo5C4XVxBq7U(Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->lambda$onAbuseWakeLockRemoved$3(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBpu_jJboWLTfj26MBS2Capm_5U(Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->lambda$onAbuseWakeLockAdded$1(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydKnZi-VXIf4Ge5mfQ4vZPKyAog(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService$1;->lambda$onAbuseWakeLockRemoved$2(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAbuseWakeLockAdded$0(Ljava/util/List;Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smisScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onAbuseWakeLockAdded$1(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static synthetic lambda$onAbuseWakeLockRemoved$2(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smisScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onAbuseWakeLockRemoved$3(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    return-void
.end method


# virtual methods
.method public onAbuseWakeLockAdded(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abuse wakelock package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakeLocks(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/PowerManagerService$1;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    return-void
.end method

.method public onAbuseWakeLockRemoved()V
    .locals 2

    const-string v0, "PowerManagerService"

    const-string v1, "clear abuse wakelock"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakeLocks(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService$1;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    return-void
.end method
