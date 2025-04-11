.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .locals 0

    .line 2922
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 2924
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p2}, Lcom/samsung/android/knox/restriction/ISimPinPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fputmSimPinService(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/samsung/android/knox/restriction/ISimPinPolicy;)V

    const-string p1, "PhoneRestrictionPolicy"

    const-string p2, "SIM Pin Service connected"

    .line 2925
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$munlockAllSimCards(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string p1, "PhoneRestrictionPolicy"

    const-string v0, "SIM Pin Service has unexpectedly disconnected!"

    .line 2932
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fputmSimPinService(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/samsung/android/knox/restriction/ISimPinPolicy;)V

    .line 2934
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinBind(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2935
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinBind(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
