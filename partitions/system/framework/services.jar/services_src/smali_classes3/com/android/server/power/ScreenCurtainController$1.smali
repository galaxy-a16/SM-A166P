.class public Lcom/android/server/power/ScreenCurtainController$1;
.super Landroid/app/IProcessObserver$Stub;
.source "ScreenCurtainController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 365
    monitor-enter p0

    if-eqz p3, :cond_0

    .line 367
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmForegroundPidSet(Lcom/android/server/power/ScreenCurtainController;)Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    iget-object p2, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmForegroundPidSet(Lcom/android/server/power/ScreenCurtainController;)Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 372
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmForegroundPidSet(Lcom/android/server/power/ScreenCurtainController;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/ScreenCurtainController;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmForegroundPidSet(Lcom/android/server/power/ScreenCurtainController;)Ljava/util/LinkedHashSet;

    move-result-object p2

    .line 374
    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 373
    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object p2, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmPackageNameOnScreenCurtain(Lcom/android/server/power/ScreenCurtainController;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmPackageNameOnScreenCurtain(Lcom/android/server/power/ScreenCurtainController;)Ljava/lang/String;

    move-result-object p2

    .line 377
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 378
    iget-object p2, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p2, p1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fputmPackageNameOnScreenCurtain(Lcom/android/server/power/ScreenCurtainController;Ljava/lang/String;)V

    const-string p1, "ScreenCurtainController"

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onForegroundActivitiesChanged: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p3}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmPackageNameOnScreenCurtain(Lcom/android/server/power/ScreenCurtainController;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/ScreenCurtainController$1;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method
