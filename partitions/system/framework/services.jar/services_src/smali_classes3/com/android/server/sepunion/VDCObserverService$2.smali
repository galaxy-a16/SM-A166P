.class public Lcom/android/server/sepunion/VDCObserverService$2;
.super Landroid/content/BroadcastReceiver;
.source "VDCObserverService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public static synthetic $r8$lambda$o1rVX5EvC3wWE_f2QbzxhvjdbJk(Lcom/android/server/sepunion/VDCObserverService$2;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/VDCObserverService$2;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VDCObserverService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/VDCObserverService;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "registerUsageStatsWatcher: failed"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/VDCObserverService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/VDCObserverService$2;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
