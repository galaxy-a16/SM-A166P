.class public Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;


# direct methods
.method public static synthetic $r8$lambda$FJ71Jphm20VafE-FmxAtgvDALmY(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->lambda$onServiceConnected$1(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HLkIE9OPE6qZkoJt-afnSMsmtS8(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->lambda$onServiceConnected$0(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MPyszMY_HF585e-u_pTAz68oykg(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->lambda$onServiceConnected$2(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qlm8-EfpPy2Jef8-thb8yyrEXvw(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->lambda$onServiceDisconnected$3(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/content/ComponentName;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$1(Landroid/content/ComponentName;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    new-instance v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onServiceConnected$2(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(!) bound to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Landroid/os/IBinder;)V

    .line 41
    iget-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mgetPidFromPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Ljava/lang/String;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmProcessId(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;I)V

    .line 42
    iget-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 43
    iget-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    .line 44
    iget-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 45
    iget-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;->onConnect()V

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object p2

    new-instance v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$3(Landroid/content/ComponentName;)V
    .locals 3

    .line 63
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(!) unbound from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnection(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Landroid/os/IBinder;)V

    .line 69
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmProcessId(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;I)V

    .line 70
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;->onDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 75
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    new-instance v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    new-instance v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
